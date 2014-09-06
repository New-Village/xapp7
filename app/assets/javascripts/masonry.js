$(document).on('ready page:change', function(){
  $('article').masonry({
    itemSelector : 'ul',
    isAnimated: true,
    isFitWidth: true
  });
});