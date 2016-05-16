module Maestrano::Connector::Rails
  class ConnecHelper
    
    # Replace the ids arrays by the external id
    # If a reference has no id for this oauth_provider and oauth_uid, does smart suff and respond nil
    def self.unfold_references(connec_entity, references, organization)
      connec_entity = connec_entity.with_indifferent_access

      # Id
      id = connec_entity['id'].find{|id| id['provider'] == organization.oauth_provider && id['realm'] == organization.oauth_uid}
      if id
        connec_entity['id'] = id['id']
      else
        connec_entity[:__connec_id] = connec_entity['id'].find{|id| id['provider'] == 'connec'}['id']
        connec_entity['id'] = nil
      end

      # Other refs
      references.each do |reference|
        unfold_references_helper(connec_entity, reference.split('/'), organization)
      end
      connec_entity
    end

    def self.fold_references(mapped_external_entity, references, organization)
      mapped_external_entity = mapped_external_entity.with_indifferent_access
      (references + ['id']).each do |reference|
        fold_references_helper(mapped_external_entity, reference.split('/'), organization)
      end
      mapped_external_entity
    end

    def self.id_hash(id, organization)
      {
        id: id,
        provider: organization.oauth_provider,
        realm: organization.oauth_uid
      }
    end

    private
      def self.fold_references_helper(entity, array_of_refs, organization)
        ref = array_of_refs.shift
        field = entity[ref]

        unless field.blank?
          case field
          when Array
            field.each do |f|
              fold_references_helper(f, array_of_refs.dup, organization)
            end
          when HashWithIndifferentAccess
            fold_references_helper(entity[ref], array_of_refs, organization)
          when String
            id = field
            entity[ref] = [id_hash(id, organization)]
          end
        end
      end

      def self.unfold_references_helper(entity, array_of_refs, organization)
        # return_nil = false
        ref = array_of_refs.shift
        field = entity[ref]
        if array_of_refs.empty?
          id = entity[ref].find{|id| id[:provider] == organization.oauth_provider && id[:realm] == organization.oauth_uid}
          if id
            entity[ref] = id['id']
          else
            # return_nil = true
            # Do something smart
          end
        else

          unless field.blank?
            case field
            when Array
              field.each do |f|
                unfold_references_helper(f, array_of_refs.dup, organization)
              end
            when HashWithIndifferentAccess
              unfold_references_helper(entity[ref], array_of_refs, organization)
            end
          end
        end
      end

  end
end