require 'spec_helper'

describe Maestrano::Connector::Rails::Organization do

  # Attributes
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:tenant) }
  it { should serialize(:synchronized_entities) }

  # Indexes
  it { should have_db_index([:uid, :tenant]) }

  #Associations
  it { should have_many(:user_organization_rels) }
  it { should have_many(:users) }

  describe 'creation' do
    subject { Maestrano::Connector::Rails::Organization.new }

    it 'initializes the synchronized entities' do
      entities_list = Maestrano::Connector::Rails::Entity.entities_list
      expect(subject.synchronized_entities).to include(entities_list.first.to_sym)
      expect(subject.synchronized_entities).to include(entities_list.last.to_sym)
    end
  end

  describe "instance methods" do
    subject { create(:organization) }

    describe 'add_member' do

      context "when user is not from the same tenant" do
        let(:user) { create(:user, tenant: 'zzz') }

        it "does nothing" do
          expect{
            subject.add_member(user)
          }.to change{Maestrano::Connector::Rails::UserOrganizationRel.count}.by(0)
        end
      end

      context "when user is from the same tenant" do
        let(:user) { create(:user) }

        context "when user is already in the organization" do
          before { create(:user_organization_rel, user: user, organization: subject) }

          it "does nothing" do
          expect{
            subject.add_member(user)
          }.to change{Maestrano::Connector::Rails::UserOrganizationRel.count}.by(0)
          end
        end

        context "when user is not in the organization yet" do
          it "does nothing" do
            expect{
              subject.add_member(user)
            }.to change{Maestrano::Connector::Rails::UserOrganizationRel.count}.by(1)
          end
        end
      end
    end

    describe 'member?' do
      let(:user) { create(:user) }

      context "when user is a member of the organization" do
        before { create(:user_organization_rel, user: user, organization: subject) }

        it { expect(subject.member?(user)).to be(true) }
      end

      context "when user is not a member of the organization" do
        it { expect(subject.member?(user)).to be(false) }
      end
    end

    describe 'remove_member' do
      let(:user) { create(:user) }

      context "when user is a member of the organization" do
        before { create(:user_organization_rel, user: user, organization: subject) }

        it "deletes the user_organization_rel" do
          expect{
            subject.remove_member(user)
          }.to change{Maestrano::Connector::Rails::UserOrganizationRel.count}.by(-1)
        end
      end
      context "when user is not a member of the organization" do
        it "does nothing" do
          expect{
            subject.remove_member(user)
          }.to change{Maestrano::Connector::Rails::UserOrganizationRel.count}.by(0)
        end
      end
    end

    describe 'from_omniauth' do
      #TODO
    end
  end

end