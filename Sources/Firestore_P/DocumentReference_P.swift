public protocol DocumentReference_P: FirestoreReference_P where DocumentSnapshot == Snapshot {
    
    associatedtype DocumentSnapshot: DocumentSnapshot_P
    
    var documentID: String { get }
    func getDocument(completion: @escaping (DocumentSnapshot?, Error?) -> ())
}
