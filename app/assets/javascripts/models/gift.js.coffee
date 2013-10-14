Giftlist.Gift = DS.Model.extend
  name: DS.attr('string')
  price: DS.attr('number')
  url: DS.attr('string')

  formattedPrice: (-> @_formattedPrice()).property('price')

  _formattedPrice: ->
    price = @get('price')
    if price
      "$#{price}"
    else
      price
