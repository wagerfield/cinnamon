###
#============================================================
#
# Cinammon: Main Class
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

class PROJECT.Main extends Class

  ###
  #========================================
  # Class Variables
  #========================================
  ###

  @class = 'PROJECT.Main'



  ###
  #========================================
  # Instance Variables
  #========================================
  ###

  $html: null
  $body: null
  $container: null

  # Properties
  layout: null



  ###
  #========================================
  # Instance Methods
  #========================================
  ###

  constructor: () ->

    # Cache selections.
    @$html = $ 'html'
    @$body = $ 'body'
    @$container = @$body.find '#container'
    return

  initialise: () =>
    super

    # Initialise the debugger.
    # Debugger.initialise @$container

    # Add classes.
    @addClasses()
    return

  addClasses: () =>

    # Create and initialise the layout.
    @layout = new Layout
    @layout.initialise()
    return



# Create instance of Main class.
@CINNAMON = CINNAMON = new PROJECT.Main
