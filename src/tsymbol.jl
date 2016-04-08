immutable TSymbol
  s::AbstractString

  TSymbol(x) = new(string(x))
end

import Base.==, Base.hash, Base.string

function ==(ts::TSymbol, other::TSymbol)
    ts.s == other.s
end

function hash(ts::TSymbol)
    hash(ts.s)
end

function string(ts::TSymbol)
    ts.s
end
