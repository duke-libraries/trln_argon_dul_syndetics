Blacklight.onLoad(function() {

  var lineHeight = function(element) {
    var pxHeight = window.getComputedStyle(element, null).getPropertyValue("line-height");
    return parseInt(pxHeight.replace(/px$/, ''), 10);
  }

  $(".expandable-content").each( function() {

    var me = $(this);
    var parent = me.parent();
    var origHeight = me.height();
    var contractedHeight = lineHeight(this) * 3 + 2;

    if ( origHeight <= contractedHeight ) {
      return;
    }

    var contract = function(evt) {
      me.addClass('contracted');
      parent.attr('aria-expanded', 'false');
      me.height(contractedHeight);
    }

    var expand = function(evt) {
      me.removeClass('contracted');
      parent.attr('aria-expanded', 'true');
      me.height(origHeight);
    };

    contract(); // if we got this far, we want to shrink

    parent.find('.more').on('click', expand);
    parent.find('.less').on('click', contract);

  });


});
