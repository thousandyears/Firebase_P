public protocol FirestoreReference_P: AnyObject {
    
    associatedtype Firestore: Firestore_P
    associatedtype Snapshot: FirestoreSnapshot_P
    
    var firestore: Firestore { get }
    var path: String { get }
    
    func addSnapshotListener(includeMetadataChanges: Bool, listener: @escaping (Snapshot?, Error?) -> Void) -> Firestore.SubscriptionType
}
