require 'rails_helper'

RSpec.describe Resolvers::Progresses::ProgressResolver do
  let!(:progress) { create(:progress, description: 'ProgressOneDes') }
  let(:attributes) { { id: progress.id } }
  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve(attributes).description).to eq('ProgressOneDes')}
  end
end
