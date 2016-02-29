require 'spec_helper'

describe Maestrano::Connector::Rails::PushToConnecJob do
  let(:organization) { create(:organization) }
  let(:entity_name1) { 'entity1' }
  let(:entity_name2) { 'entity2' }
  before {
    class Entities::Entity1 < Maestrano::Connector::Rails::Entity
      def map_to_connec(entity, organization)
        entity
      end
    end
    allow_any_instance_of(Entities::Entity1).to receive(:push_entities_to_connec)
    allow_any_instance_of(Entities::Entity1).to receive(:external_entity_name).and_return('ext_entity1')
    class Entities::Entity2 < Maestrano::Connector::Rails::ComplexEntity
    end
    allow_any_instance_of(Entities::Entity2).to receive(:consolidate_and_map_data)
    allow_any_instance_of(Entities::Entity2).to receive(:push_entities_to_connec)
    allow_any_instance_of(Entities::Entity2).to receive(:connec_entities_names).and_return(%w())
    allow_any_instance_of(Entities::Entity2).to receive(:external_entities_names).and_return(%w(sub ll))
    module Entities::SubEntities end;
    class Entities::SubEntities::Sub < Maestrano::Connector::Rails::SubEntityBase
    end
    allow(Maestrano::Connector::Rails::Entity).to receive(:entities_list).and_return([entity_name1, entity_name2])
    allow_any_instance_of(Maestrano::Connector::Rails::Entity).to receive(:get_id_from_external_entity_hash).and_return('11')
  }
  let(:entity11) { {first_name: 'John'} }
  let(:entity12) { {first_name: 'Jane'} }
  let(:entity21) { {job: 'Pizza guy'} }
  let(:hash) { {'ext_entity1' => [entity11, entity12], 'sub' => [entity21]} }
  subject { Maestrano::Connector::Rails::PushToConnecJob.perform_now(organization, hash) }

  describe 'with organization sync enabled set to false' do
    before { organization.update(sync_enabled: false, oauth_uid: 'lala') }

    it 'does nothing' do
      expect(Maestrano::Connec::Client).to_not receive(:new)
      subject
    end
  end

  describe 'with no oauth uid' do
    before { organization.update(sync_enabled: true, oauth_uid: nil) }

    it 'does nothing' do
      expect(Maestrano::Connec::Client).to_not receive(:new)
      subject
    end
  end

  describe 'with sync enabled and a oauth uid' do
    before { organization.update(sync_enabled: true, oauth_uid: 'lala') }

    describe 'with a non existing entity' do
      let(:hash) { {'lala' => []} }

      it 'logs a warning' do
        expect(Rails.logger).to receive(:warn)
        subject
      end
    end

    describe 'with entities in syncrhonized entities' do
      before { organization.update(synchronized_entities: {:"#{entity_name1}" => true, :"#{entity_name2}" => true})}

      it 'calls consolidate and map data on the complex entity with the right arguments' do
        expect_any_instance_of(Entities::Entity2).to receive(:consolidate_and_map_data).with({}, {"sub"=>[entity21], "ll"=>[]}, organization, {})
        expect_any_instance_of(Entities::Entity2).to receive(:push_entities_to_connec)
        subject
      end

      it 'calls consolidate_and_map_data on the non complex entity with the right arguments' do
        expect_any_instance_of(Entities::Entity1).to receive(:consolidate_and_map_data).with([], [entity11, entity12], organization, {})
        expect_any_instance_of(Entities::Entity1).to receive(:push_entities_to_connec)
        subject
      end
    end
  end
end