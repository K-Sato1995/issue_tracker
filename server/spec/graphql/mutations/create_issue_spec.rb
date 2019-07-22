require 'rails_helper'

RSpec.describe Mutations::Issues::CreateIssue do
  let(:project) { create(:project) }
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:attributes) { attributes_for(:issue, title: Faker::App.name, project_id: project.id) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a Issue' do
      expect(subject[:issue].title).to eq attributes[:title]
    end
  end
end
