utils = require '../'

console.log utils.isPrivateIp('192.168.1.1') # true
console.log utils.isPrivateIp('172.168.1.1') # false