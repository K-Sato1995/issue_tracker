require 'rails_helper'

RSpec.describe Resolvers::Projects::ProjectResolver do
  let!(:project) { create(:project, name: 'ProjectOneName') }
  let(:attributes) { { id: project.id } }
  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve(attributes).name).to eq('ProjectOneName')}
  end
end
