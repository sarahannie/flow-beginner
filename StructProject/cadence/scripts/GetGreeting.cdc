import HelloWorld from 0x05

// Script to get a particular greeting provided the id
pub fun main(id: UInt64): HelloWorld.Greetings? {
  return HelloWorld.getGreeting(id: id)!
}
