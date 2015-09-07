utils = require '../'

encode = utils.base64Encode('hello')
console.log encode

console.log utils.base64Decode(encode)
