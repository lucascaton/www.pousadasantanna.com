#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_tree .

$ ->
  $("a.scroll[href*='#']:not([href='#'])").click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')

      if target.length
        $('html,body').animate { scrollTop: target.offset().top - 12 }, 1000
        false
