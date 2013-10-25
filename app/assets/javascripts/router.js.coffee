# For more information see: http://emberjs.com/guides/routing/

Giftlist.Router.map () ->
  @resource 'gifts', path: '/', ->
    @route 'new'
    @resource 'gift', path: '/gifts/:gift_id'
    @resource 'gift.edit', path: '/gifts/:gift_id/edit'
