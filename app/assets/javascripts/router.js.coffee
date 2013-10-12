# For more information see: http://emberjs.com/guides/routing/

Giftlist.Router.map () ->
  @resource 'gifts', path: '/', ->
    @resource 'gift', path: '/gift/:gift_id'
