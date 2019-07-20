require 'rails_helper'

RSpec.describe Resolvers::Progresses::ProgressesResolver do
  let!(:progresses) { create_list(:progress, 3) }

  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve.count).to eq 3 }
  end
end
