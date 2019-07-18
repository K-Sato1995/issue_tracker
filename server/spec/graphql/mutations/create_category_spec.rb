require 'rails_helper'

RSpec.describe Mutations::CreateCategory do
  subject(:mutation) { described_class.new(object: nil, context: nil) }
  let(:attributes) { attributes_for(:category, name: Faker::App.name) }

  describe '#resolve' do
    subject { mutation.resolve(attributes) }
    it 'creates a category' do
      expect( subject[:category].name).to eq attributes[:name]
    end
  end
end
