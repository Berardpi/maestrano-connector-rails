# TODO
# This file is provided as an example and should be removed
# See README for explanation
# class SubComplexEntities::Person < Maestrano::Connector::Rails::SubComplexEntityBase
#   def external?
#     false
#   end

#   def entity_name
#     'person'
#   end

#   def mapper_classes
#     [SubComplexEntities::ContactMapper, SubComplexEntities::LeadMapper]
#   end

#   def map_to(name, entity)
#     case name
#     when 'lead'
#       SubComplexEntities::LeadMapper.normalize(entity)
#     when 'contact'
#       SubComplexEntities::ContactMapper.normalize(entity)
#     else
#       raise "Impossible mapping from #{self.entity_name} to #{name}"
#     end
#   end
# end