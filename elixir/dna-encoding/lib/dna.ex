defmodule DNA do
  def encode_nucleotide(code_point) do
    case code_point do
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
      _ -> 0b0000
    end
  end

  def decode_nucleotide(encoded_code) do
    # Please implement the decode_nucleotide/1 function
  end

  def encode(dna) do
    # Please implement the encode/1 function
  end

  def decode(dna) do
    # Please implement the decode/1 function
  end
end