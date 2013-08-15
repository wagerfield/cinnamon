#============================================================
#
# CoffeeScript Imports
#
# Lists the source files to be concatenated and compiled into
# ../js/scripts.js using CodeKit's import directives.
#
# @see http://incident57.com/codekit/help.php
# @author Matthew Wagerfield @mwagerfield
#
#============================================================

#------------------------------
# Core
#------------------------------
# @codekit-prepend "core/Math.coffee"
# @codekit-prepend "core/Ease.coffee"
# @codekit-prepend "core/Color.coffee"
# @codekit-prepend "core/Utils.coffee"
# @codekit-prepend "core/Class.coffee"
# @codekit-prepend "core/Base.coffee"
# @codekit-prepend "core/Layout.coffee"
# @codekit-prepend "core/Debugger.coffee"

#------------------------------
# Project
#------------------------------
# @codekit-prepend "project/Main.coffee"



# Initialise the project.
$ -> DANBO.initialise()
