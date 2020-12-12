public protocol QuerySnapshot_P: FirestoreSnapshot_P {
    
    associatedtype Query: Query_P
    associatedtype QueryDocumentSnapshot: QueryDocumentSnapshot_P
    associatedtype DocumentChange: DocumentChange_P
    
    var count: Int { get }
    var isEmpty: Bool { get }
    var query: Query { get }
    var documents: [QueryDocumentSnapshot] { get }
    
    func documentChanges(includeMetadataChanges: Bool) -> [DocumentChange]
}
