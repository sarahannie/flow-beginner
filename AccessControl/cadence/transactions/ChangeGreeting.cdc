import HelloWorld from 0x05

transaction(greeting: String) {

  prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    HelloWorld.changeGreeting(newGreeting: greeting)
  }
}
