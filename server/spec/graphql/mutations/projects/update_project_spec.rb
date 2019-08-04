require 'rails_helper'

RSpec.describe Mutations::Projects::UpdateProject do
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:project) { create(:project) }
  let(:attributes) { { id: project.id, name: 'NewName', description: 'NewDes' } }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'updates the name' do
      expect(subject[:project].name).to eq 'NewName'
    end

    it 'updates the description' do
      expect(subject[:project].description).to eq 'NewDes'
    end
  end
end
