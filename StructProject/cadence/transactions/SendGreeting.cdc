import HelloWorld from 0x05

// Add parameters to transaction to send hello
transaction(id: UInt64, _from: String, _to: String, greeting: String) {

  prepare(acct: AuthAccount) {
    log(acct.address)
  }

  execute {
    // Execute the transaction with parameters
    HelloWorld.hello(id: id, _from: _from, _to: _to, greeting: greeting)
  }
}
