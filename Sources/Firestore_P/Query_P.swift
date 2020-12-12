public protocol Query_P {
    
    associatedtype QuerySnapshot: QuerySnapshot_P
    associatedtype Firestore: Firestore_P
    
    var firestore: Firestore { get }
    
    func getDocuments(completion: @escaping (QuerySnapshot?, Error?) -> ())
    func addSnapshotListener(includeMetadataChanges: Bool, listener: @escaping (QuerySnapshot?, Error?) -> Void) -> Firestore.SubscriptionType
}
