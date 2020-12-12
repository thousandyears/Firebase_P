public protocol DocumentChange_P {
    
    associatedtype QueryDocumentSnapshot: QueryDocumentSnapshot_P
    associatedtype DocumentChangeType
    
    var document: QueryDocumentSnapshot { get }
    var type: DocumentChangeType { get }
}
