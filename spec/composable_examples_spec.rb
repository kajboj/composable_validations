require 'composable_examples'

describe ComposableExamples do
  include ComposableExamples

  specify '#string' do
    result = string("error message")

    expect(result).to eq(
      {
        valid: ["", " ", "hello"],
        invalid: [nil, [], {}, 1, 0.1]
      }
    )
  end

  specify '#integer' do
    result = integer("error message")

    expect(result).to eq(
      {
        valid: [-1, 0, 1],
        invalid: [nil, [], {}, "hello", 0.1]
      }
    )
  end
end
