(function($) {

  $.fn.charCount = function(options){

    // 汎用性を持たせるために用意
    var defaults = {
      cE: $(this).next(), //ここでdomをそのまま扱う。
      cW: 'font-red',
      cS: 'font-green'
    };

    //オプションがあるならここでデフォルトに上書き
    var options = $.extend(defaults, options);  

    $(this).keyup(function(){
      //改行を文字としてカウント
      var count = $(this).val().replace(/(\r\n|\r|\n)/g, "\r\n").length;
      //データ属性としてもたせた「最低文字数」を取得
      var Num = $(this).parent().data("counter");
      var hoge = Num - count;
      if(hoge >= 0){
        $(options.cE).removeClass(options.cS).addClass(options.W);
      } else {
        $(options.cE).removeClass(options.cW).addClass(options.cS);
      }
      $(this).parent().find(options.cE).html(count + ' 文字');
    });

  }

})(jQuery);

$(function(){

  $(".js-counter").charCount();

});
