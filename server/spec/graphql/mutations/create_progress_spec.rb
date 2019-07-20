require 'rails_helper'

RSpec.describe Mutations::Progresses::CreateProgress do
  let(:issue) { create(:issue) }
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:attributes) { attributes_for(:progress, description: Faker::App.name, issue_id: issue.id) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a Progress' do
      expect(subject[:progress].description).to eq attributes[:description]
    end
  end
end
