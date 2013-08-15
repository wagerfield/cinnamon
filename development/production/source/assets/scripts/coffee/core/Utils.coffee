###
#============================================================
#
# Generic Utilities
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class Utils

  ###
  # Browser vendor prefixes.
  ###
  @VENDORS = ['O','ms','Moz','webkit',null]

  ###
  # Generates a GUID.
  # @param {number} length The length of the guid.
  # @param {string} prefix String to prefix the GUID with.
  # @return {string} The generated GUID.
  ###
  @guid = (length = 8, prefix = 'mw') ->
    guid = ((Math.random().toFixed 1).substr 2 for i in [0...length])
    guid = "#{prefix}#{guid.join ''}"
    return guid

  ###
  # Adds a tap class to an array of elements and removes it after the wait delay.
  # @requires underscore.js
  # @see http://underscorejs.org/
  # @param {jQuery} $elements jQuery selection.
  # @param {string} selection String selection for live elements.
  # @param {number} wait The delay before removing the tap class.
  ###
  @tap = ($elements, selection, wait = 400) ->
    if !!selection
      $elements.on 'tap', selection, (event) ->
        $target = $ event.currentTarget
        debounce = $target.data 'debounce'
        if !debounce
          debounce = _.debounce (($element) -> $element.removeClass 'tap'), wait
          $target.data 'debounce', debounce
        $target.addClass 'tap'
        debounce $target
    else
      $elements.each (index, element) ->
        debounce = _.debounce (($element) -> $element.removeClass 'tap'), wait
        $(element).on 'tap', (event) ->
          $target = $ event.currentTarget
          $target.addClass 'tap'
          debounce $target
    return

  ###
  # Scrolls the window to 0 to hide the browser menu bar.
  ###
  @scrollTop = () -> setTimeout ( -> window.scrollTo 0, 0), 0

  ###
  # Scrolls the window to 0 to hide the browser menu bar.
  # @param {DOM} element DOM element.
  # @param {string} property Property to set.
  # @param {value} value Property value.
  ###
  @css = (element, property, value, vendors = @VENDORS) ->
    element.style[if vendor? then @camelCase "#{vendor}-#{property}" else property] = value for vendor in vendors

  ###
  # Converts a hyphenated string to camel case.
  # @param {string} value The string to process.
  ###
  @camelCase = (value) ->
    return value.replace /-+(.)?/g, (match, character) ->
      if character then character.toUpperCase() else ''
