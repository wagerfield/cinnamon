###
#============================================================
#
# Debugger
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class Debugger

  @time = 0
  @index = 0
  @value = ""

  @initialise = (@$context) ->
    @$element = $ '<p class="debugger">'
    @$context.prepend @$element
    @log "..."
    return

  @log = () ->
    value = (Array.prototype.slice.call arguments).join " "
    if @value is value
      @index++
      value += " [#{@index}]"
    else
      @value = value
      @index = 0
    @$element.text value
    log arguments
    return

  @delta = () ->
    time = +new Date
    delta = time - @time
    @time = time
    @log "#{delta}ms"
    return
