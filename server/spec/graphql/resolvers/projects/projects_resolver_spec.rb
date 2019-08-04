require 'rails_helper'

RSpec.describe Resolvers::Projects::ProjectsResolver do
  let!(:projects) { create_list(:project, 3) }

  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve.count).to eq 3 }
  end
end
