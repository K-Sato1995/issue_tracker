require 'rails_helper'

RSpec.describe Resolvers::Issues::IssueResolver do
  let!(:issue) { create(:issue, title: 'IssueOneName') }
  let(:attributes) { { id: issue.id } }
  subject(:resolver) { described_class.new(object: nil, context: nil) }

  describe '#resolve' do
    example { expect(resolver.resolve(attributes).title).to eq('IssueOneName')}
  end
end
