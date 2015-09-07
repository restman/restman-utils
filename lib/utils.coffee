_   = require 'lodash'
md5 = require 'md5'
Buffer = require('buffer').Buffer

utils =

  # md5
  md5: md5

  # base64 encode
  base64Encode: (string) ->
    return new TypeError('Must be string') unless _.isString(string)
    new Buffer(string).toString('base64')

  # base64 decode
  base64Decode: (encodeString) ->
    return new TypeError('Must be string') unless _.isString(encodeString)
    new Buffer(encodeString, 'base64').toString()

module.exports = utils
