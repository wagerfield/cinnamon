###
#============================================================
#
# Math Augmentation
#
# @author Matthew Wagerfield @mwagerfield
#
#============================================================
###

Math.PI2 = Math.PI * 2
Math.PIH = Math.PI / 2
Math.PIQ = Math.PI / 4
Math.PIR = 180 / Math.PI
Math.PID = Math.PI / 180

###
# Converts radians to degrees.
# @param {number} radians The radians to convert.
# @return {number} The value in degrees.
###
Math.radiansToDegrees = (radians) -> radians * Math.PIR

###
# Converts degrees to radians.
# @param {number} degrees The degrees to convert.
# @return {number} The value in radians.
###
Math.degreesToRadians = (degrees) -> degrees * Math.PID

###
# Normalises a given value.
# @param {number} value The value to normalise.
# @param {number} min The minimum value in the range.
# @param {number} max The maximum value in the range.
# @return {value} The normalised number.
###
Math.normalise = (value, min = 0, max = 1) ->
  return (value - min) / (max - min)

# Dirty American alias.
Math.normalize = Math.normalise

###
# Interpolates between two values by a given multiplier.
# @param {number} value The multiplier value.
# @param {number} min The minimum value in the range.
# @param {number} max The maximum value in the range.
# @return {value} The interpolated number.
###
Math.interpolate = (value, min, max) ->
  return min + (max - min) * value

###
# Maps a value within a certain range to another range.
# @param {number} value The value to map.
# @param {number} min1 The minimum value in the first range.
# @param {number} max1 The maximum value in the first range.
# @param {number} min2 The minimum value in the second range.
# @param {number} max2 The maximum value in the second range.
# @return {value} The mapped number.
###
Math.map = (value, min1, max1, min2, max2) ->
  return Math.interpolate (Math.normalise value, min1, max1), min2, max2

###
# Clamps a number within a specified range.
# @param {number} value The value to clamp.
# @param {number} min The minimum value.
# @param {number} max The maximum value.
# @return {value} The clamped number.
###
Math.clamp = (value, min, max) ->
  value = Math.max value, min
  value = Math.min value, max
  return value

###
# Return the sign of the value.
# @param {number} value The number.
# @return {value} 1 or -1 depending on the sign.
###
Math.sign = (value) ->
  return if value >= 0 then 1 else -1

###
# Generates a random number within a specified range.
# @param {number} min Minimum number in the range.
# @param {number} max Maximum number in the range.
# @param {boolean} round Whether or not to round the generated value.
# @return {number} Random number within the specified range.
###
Math.randomInRange = (min, max, round = false) ->
  value = Math.map Math.random(), 0, 1, min, max
  value = Math.round value if round
  return value

###
# Projects a geographic coordinate into a 3D vertex.
# @param {number} x The horizontal component.
# @param {number} y The vertical component.
# @param {number} radius The length of the vector.
# @return {THREE.Vector3} Projected vector coordinate.
###
Math.project = (x, y, radius = 1) ->
  x = Math.degreesToRadians x
  y = Math.degreesToRadians y
  sinX = Math.sin x
  cosX = Math.cos x
  sinY = Math.sin y
  cosY = Math.cos y
  x = -radius * cosY * cosX
  y =  radius * sinY
  z =  radius * cosY * sinX
  return [x, y, z]
