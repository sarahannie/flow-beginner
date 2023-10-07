// HelloWorld.cdc
//
// Welcome to Cadence! This is one of the simplest programs you can deploy on Flow.
//
// The HelloWorld contract contains a single string field and a public getter function.
//
// Follow the "Hello, World!" tutorial to learn more: https://docs.onflow.org/cadence/tutorial/02-hello-world/
pub contract HelloWorld {
  // Declare the struct
  pub struct Greetings{
    // Declare data to be stored
    pub let id: UInt64
    pub let _from: String
    pub let _to: String 

    // Declare a public field of type String.
    //
    // All fields must be initialized in the init() function.
    public var greeting:String

    // The init() function is required if the struct contains any fields.
    init(id: UInt64, _from: String, _to: String, greeting: String) {
        self.id = id
        self._from = _from
        self._to = _to
        self.greeting = greeting
    }
  }

  // Declare a dictionary to hold Greetings struct
  public var greetings: {UInt64: Greetings}

  // Public function that returns our friendly greeting by it's Id!
  access(all) fun getGreeting(id: UInt64) Greetings? {
    self.greeting = newGreeting
    return self.greetings[id]
  }

  // Public function that sends our friendly greeting!
  access(all) fun hello(id: UInt64, _from: String, _to: String, greeting: String): String {
    let myHello = Greetings(id: id, _from: _from, _to: _to, greeting: greeting)
    self.greetings[id] = message
  }

  // The init() function is required if the contract contains any fields.
  init() {
    self.greetings = {}
  }
}
