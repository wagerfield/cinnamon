###
#============================================================
#
# Easing functions.
#
# @param {number} t Time.
# @param {number} d Duration.
# @param {number} b Beginning value.
# @param {number} c Total change.
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class Ease

  ###
  #========================================
  # Quadratic
  #========================================
  ###

  @quadIn = (t, d, b, c) ->
    return c * (t /= d) * t + b

  @quadOut = (t, d, b, c) ->
    return -c * (t /= d) * (t - 2) + b

  @quadInOut = (t, d, b, c) ->
    return c / 2 * t * t + b if ((t /= d / 2) < 1)
    return -c / 2 * ((--t) * (t - 2) - 1) + b



  ###
  #========================================
  # Cubic
  #========================================
  ###

  @cubicIn = (t, d, b, c) ->
    return c * (Math.pow t / d, 3) + b

  @cubicOut = (t, d, b, c) ->
    return c * ((Math.pow t / d - 1, 3) + 1) + b

  @cubicInOut = (t, d, b, c) ->
    return c / 2 * (Math.pow t, 3) + b if ((t /= d / 2) < 1)
    return c / 2 * ((Math.pow t - 2, 3) + 2) + b



  ###
  #========================================
  # Quartic
  #========================================
  ###

  @quartIn = (t, d, b, c) ->
    return c * (Math.pow t / d, 4) + b

  @quartOut = (t, d, b, c) ->
    return -c * ((Math.pow t / d - 1, 4) - 1) + b

  @quartInOut = (t, d, b, c) ->
    return c / 2 * (Math.pow t, 4) + b if ((t /= d / 2) < 1)
    return -c / 2 * ((Math.pow t - 2, 4) - 2) + b



  ###
  #========================================
  # Quintic
  #========================================
  ###

  @quintIn = (t, d, b, c) ->
    return c * (Math.pow t / d, 5) + b

  @quintOut = (t, d, b, c) ->
    return c * ((Math.pow t / d - 1, 5) + 1) + b

  @quintInOut = (t, d, b, c) ->
    return c / 2 * (Math.pow t, 5) + b if ((t /= d / 2) < 1)
    return c / 2 * ((Math.pow t - 2, 5) + 2) + b



  ###
  #========================================
  # Exponential
  #========================================
  ###

  @expoIn = (t, d, b, c) ->
    return c * (Math.pow 2, 10 * (t / d - 1)) + b

  @expoOut = (t, d, b, c) ->
    return c * (-(Math.pow 2, -10 * t / d) + 1) + b

  @expoInOut = (t, d, b, c) ->
    return c / 2 * (Math.pow 2, 10 * (t - 1)) + b if ((t /= d / 2) < 1)
    return c / 2 * (-(Math.pow 2, -10 * --t) + 2) + b
