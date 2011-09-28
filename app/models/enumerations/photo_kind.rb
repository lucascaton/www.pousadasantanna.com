class PhotoKind < EnumerateIt::Base
  associate_values(
    :gallery       => 'gallery',
    :accommodation => 'accommodation'
  )
end
