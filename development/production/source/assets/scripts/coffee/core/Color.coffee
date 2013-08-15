###
#============================================================
#
# Collection of colour methods.
#
# @requires three.js
# @see https://github.com/mrdoob/three.js/
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class Color

  ###
  # Converts a hex string ().
  # @param {number} hex Hex value of the color.
  # @param {number} range Range of the color.
  # @return {object} The Color.
  ###
  @rgb = (hex, range = 255) ->
    hex = hex.replace '#', ''
    r: (r = (parseInt hex.substring(0, 2), 16) / range)
    g: (g = (parseInt hex.substring(2, 4), 16) / range)
    b: (b = (parseInt hex.substring(4, 6), 16) / range)
    colors: [r, g, b]

  ###
  # Converts a hex string ().
  # @param {number} hex Hex value of the color.
  # @param {number} alpha Opacity of the color.
  # @param {number} range Range of the color.
  # @return {object} The Color.
  ###
  @rgba = (hex, alpha, range = 255) ->
    color = @rgb hex, range
    color.a = alpha
    color.colors.push alpha
    return color
