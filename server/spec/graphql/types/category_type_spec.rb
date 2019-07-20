require 'rails_helper'

RSpec.describe Types::CategoryType do
  describe '.fields' do
    subject { described_class.fields }
    example { expect(subject['id'].type.to_graphql.to_s).to eq 'ID!' }
    example { expect(subject['name'].type.to_graphql.to_s).to eq 'String!' }
    example { expect(subject['description'].type.to_graphql.to_s).to eq 'String!' }
  end
end
