module ComposableExamples
  def string(_)
    {
      valid: ["", " ", "hello"],
      invalid: [nil, [], {}, 1, 0.1]
    }
  end

  def integer(_)
    {
      valid: [-1, 0, 1],
      invalid: [nil, [], {}, "hello", 0.1]
    }
  end
end
