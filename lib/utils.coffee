Buffer = require('buffer').Buffer
path    = require 'path'

_   = require 'lodash'
md5 = require 'md5'
uuid = require 'node-uuid'
glob = require 'glob'

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
  
  # load modules
  loadModules: (modulePath, suffix = '') ->
    modules = {}
    filepaths = glob.sync "#{modulePath}/**/*.coffee", ignore:['./index.coffee']
    for filepath in filepaths
      fileName = path.basename filepath, '.coffee'
      moduleName = _.camelCase fileName
      modules["#{moduleName}#{suffix}"] = require filepath
    return modules

module.exports = utils
