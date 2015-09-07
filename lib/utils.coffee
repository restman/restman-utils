Buffer = require('buffer').Buffer

_   = require 'lodash'
md5 = require 'md5'
uuid = require 'node-uuid'


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

  # uuid
  uuid: uuid

module.exports = utils
