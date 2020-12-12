public protocol DocumentSnapshot_P: FirestoreSnapshot_P {
    
    // var reference: DocumentReference { get }
    var documentID: String { get }
    var exists: Bool { get }
    
    subscript(key: Any) -> Any? { get }
    
    func data() -> [String : Any]?
    func get(_ field: Any) -> Any?
}
