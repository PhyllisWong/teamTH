// Parser example

/*
 Challenge Task 1 of 3
 In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
 
 In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
 
 Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
 
 Challenge Task 2 of 3
 Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.
 
 In the catch clause, simply log an error message of your choosing.
 
 Challenge Task 3 of 3
 Perfect! We're almost done. Rather than a generic catch clause, let's pattern match on the specific errors so that we can log better error messages.
 
 In this task, change the catch statement to include specific error cases. Like before you can just log an error message of your choosing.
*/

enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard data != nil else {
            throw ParserError.emptyDictionary
        }
        guard data?.keys.contains("someKey") == true else {
            throw ParserError.invalidKey
        }
    }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
    try parser.parse()
} catch ParserError.emptyDictionary {
    print("The dictionary is empty.")
} catch ParserError.invalidKey {
    print("the key 'someKey' does not exist.")
}










