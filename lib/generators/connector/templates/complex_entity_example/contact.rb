# TODO
# This file is provided as an example and should be removed
# See README for explanation
# class Entities::SubEntities::Contact < Maestrano::Connector::Rails::SubEntityBase

#   def self.external?
#     true
#   end

#   def self.entity_name
#     'contact'
#   end

#   def map_to(name, entity, organization)
#     case name
#     when 'person'
#       Entities::SubEntities::ContactMapper.denormalize(entity)
#     else
#       raise "Impossible mapping from #{self.class.entity_name} to #{name}"
#     end
#   end

#   def self.object_name_from_connec_entity_hash(entity)
#     "#{entity['first_name']} #{entity['last_name']}"
#   end

#   def self.object_name_from_external_entity_hash(entity)
#     "#{entity['FirstName']} #{entity['LastName']}"
#   end
# end