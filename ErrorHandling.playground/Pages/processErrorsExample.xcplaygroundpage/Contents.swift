enum ReadError: Error {
    case invalidFile
    case unableToReadLine
    
}

func open(fileName: name) {
    print("file is open")
}

func close(fileName: name){
    print("file is closed")
}

func process(file name: String) throws {
    guard isValidFile(withName: name) else {
        throw ReadError.invalidFile
    }
    let file = open(fileName: name)
    defer {
        close(fileName: name)
    }
    
    guard let line = try file.readLine() else {
        ReadError.unableToReadLine
    }
    let file2 = open(fileName: name)
    defer {
        close(fileName: file2)
    }
    
    // close(fileName: name) is called here at the end of the scope
}
