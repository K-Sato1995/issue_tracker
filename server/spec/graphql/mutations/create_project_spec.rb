require 'rails_helper'

RSpec.describe Mutations::Projects::CreateProject do
  let(:user) { create(:user) }
  subject(:mutation) { described_class.new(object: nil, context: {current_user: user}) }
  let(:attributes) { attributes_for(:project, name: Faker::App.name) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a project' do
      expect(subject[:project].name).to eq attributes[:name]
    end
  end
end
