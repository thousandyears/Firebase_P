public protocol CollectionReference_P: Query_P, FirestoreReference_P where QuerySnapshot == Snapshot {
    
    associatedtype DocumentReference: DocumentReference_P
    
    func document(_ documentPath: String) -> DocumentReference
}
