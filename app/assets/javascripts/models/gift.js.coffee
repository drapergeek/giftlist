Giftlist.Gift = DS.Model.extend
  name: DS.attr('string')
  price: DS.attr('number')
  url: DS.attr('string')

  formattedPrice: (-> @_formattedPrice()).property('price')
  formattedUrl: (-> @_formattedUrl()).property('formattedUrl')

  _formattedPrice: ->
    price = @get('price')
    if price
      "$#{price}"
    else
      price

  _formattedUrl: ->
    preferredLength = 35
    url = @get('url')
    if url.length > preferredLength
      url.substring(0, preferredLength) + "..."
    else
      url
