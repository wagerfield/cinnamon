###
#============================================================
#
# Project Base
#
# Defines the project name and namespace as well as some
# conveniece methods for logging messages to the console.
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

# Debug flag.
DEBUG = true

# Project name.
DOGTAG = 'cinnamon'

# Project namespace.
@[DOGTAG] = {}



###
# Logs the provided values in the console.
# @param {object} values The values to be logged.
###
log = (values...) ->
  console?.log "#{DOGTAG} »", values...
  return

###
# Logs a warning in the console.
# @param {object} values The values to be logged.
###
warn = (values...) ->
  console?.warn "#{DOGTAG} »", values...
  return

###
# First checks for the provided namespace, and creates it if not found.
# @param {string} namespace The namespace as a string.
# @return {object} Reference to the most nested object in the namespace.
###
namespace = (namespace) ->
  target = @[DOGTAG]
  if typeof namespace is 'string'
    target = target[space] ?= {} for space in namespace.split '.'
  return target



# Create namespaces.
PROJECT = namespace()
