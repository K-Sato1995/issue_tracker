require 'rails_helper'

RSpec.describe Mutations::Projects::DeleteProject do
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let!(:project) { create(:project) }
  let(:attributes) { { id: project.id } }

  describe '#resolve' do
    it 'deletes a project' do
      expect{ mutation.resolve(attributes) }.to change { Project.count }.by(-1)
    end
  end
end
