class PhotoKind < EnumerateIt::Base
  associate_values(
    :gallery,
    :accommodation
  )
end
