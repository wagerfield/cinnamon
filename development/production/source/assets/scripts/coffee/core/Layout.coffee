###
#============================================================
#
# Layout
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class Layout

  ###
  #========================================
  # Constants
  #========================================
  ###

  DELAY = 200



  ###
  #========================================
  # Instance Variables
  #========================================
  ###

  $window: null
  $document: null

  documentHeight: 0
  documentWidth: 0
  windowHeight: 0
  windowWidth: 0

  resized: null



  ###
  #========================================
  # Instance Methods
  #========================================
  ###

  constructor: () ->
    @$window = $(window)
    @$document = $(document)
    @resized = new signals.Signal
    return

  initialise: () =>
    @dimensions()
    @addEventListeners()
    return

  dimensions: () =>
    documentHeight: @documentHeight = @$document.height()
    documentWidth: @documentWidth = @$document.width()
    windowHeight: @windowHeight = @$window.height()
    windowWidth: @windowWidth = @$window.width()

  addEventListeners: () =>
    @$window.on 'resize', _.debounce @onWindowResize, DELAY
    return



  ###
  #========================================
  # Callbacks
  #========================================
  ###

  onWindowResize: (event) =>
    ww = @windowWidth isnt @$window.width()
    wh = @windowHeight isnt @$window.height()
    dw = @documentWidth isnt @$document.width()
    dh = @documentHeight isnt @$document.height()
    @resized.dispatch @dimensions() if dh or dw or wh or ww
    return
