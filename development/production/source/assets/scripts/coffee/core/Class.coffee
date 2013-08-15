###
#============================================================
#
# Abstract Class
#
# Intergrates mixins into CoffeeScript classes.
#
# @author Matthew Wagerfield @mwagerfield
# @example
#
#  # Object that properties will be added to the User class
#  classProperties =
#    find: (id) ->
#    create: (attrs) ->
#
#  # Object that properties will be added to the prototype object
#  # of the User class (all instances of the class will get it)
#  instanceProperties =
#    save: ->
#
#  class User extends Class
#    @extend classProperties
#    @include instanceProperties
#
#  # Call class method added with 'extend'
#  user = User.find(1)
#
#  # Call instance method added with 'include'
#  user = new User
#  user.save()
#
#  or shortcut (do both 'extend' and 'include'):
#
#  # Object with properties to be added to the User class
#  ORM =
#    find: (id) ->
#    create: (attrs) ->
#    extended: ->
#      @include
#        save: ->
#
#  class User extends Class
#    @extend ORM
#
#============================================================
###

moduleKeywords = ['extended', 'included', 'class', 'constructor']

class Class

  ###
  #========================================
  # Class Variables
  #========================================
  ###

  @class = 'Class'
  @name = null



  ###
  #========================================
  # Class Methods
  #========================================
  ###

  @extend = (object) ->
    @[key] = value for key, value of object when key not in moduleKeywords
    object.extended?.apply(@)
    return @

  ###
  # Extends the class with instance properties
  ###
  @include = (object) ->
    @::[key] = value for key, value of object when key not in moduleKeywords
    object.included?.apply(@)
    return @



  ###
  #========================================
  # Instance Methods
  #========================================
  ###

  class: () -> @constructor.class

  initialise: () ->
    @name = @class().replace /^.+\./, ''
    log "initialise: #{@class()}"
    return
