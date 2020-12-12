/*
 import FirebaseFunctions
 import FirebaseFirestore
 
 private let firestore: FirebaseFirestore.Firestore = {
    if Firebase.FirebaseApp.app() == nil {
        Firebase.FirebaseApp.configure()
    }
    return .firestore()
 }()
 
 extension FirebaseFirestore.CollectionReference: CollectionReference_P {}
 extension FirebaseFirestore.DocumentChange: DocumentChange_P {}
 extension FirebaseFirestore.DocumentReference: DocumentReference_P {}
 extension FirebaseFirestore.DocumentSnapshot: DocumentSnapshot_P {}
 extension FirebaseFunctions.Functions: Functions_P {}
 extension FirebaseFunctions.HTTPSCallable: HTTPSCallable_P {}
 extension FirebaseFunctions.HTTPSCallableResult: HTTPSCallableResult_P {}
 extension FirebaseFirestore.Query: Query_P {}
 extension FirebaseFirestore.QueryDocumentSnapshot: QueryDocumentSnapshot_P {}
 extension FirebaseFirestore.QuerySnapshot: QuerySnapshot_P {}
 extension FirebaseFirestore.SnapshotMetadata: SnapshotMetadata_P {}
 extension FirebaseFirestore.Timestamp: Timestamp_P {}
 extension FirebaseFirestore.WriteBatch: WriteBatch_P {}
 extension FirebaseFirestore.Firestore: Firestore_P {
    public func removableSubscription(_ o: FirebaseFirestore.ListenerRegistration) -> RemovableSubscription {
        return .init(remove: o.remove)
    }
 }
 */

public protocol Firestore_P: AnyObject {
    
    associatedtype SubscriptionType
    associatedtype DocumentReference
    associatedtype CollectionReference: CollectionReference_P
    associatedtype WriteBatch: WriteBatch_P where WriteBatch.DocumentReference == DocumentReference
    
    func document(_ documentPath: String) -> DocumentReference
    func collection(_ collectionPath: String) -> CollectionReference
    func batch() -> WriteBatch
    
    func removableSubscription(_: SubscriptionType) -> RemovableSubscription
}

public class RemovableSubscription {
    public let remove: () -> Void
    public init(remove: @escaping () -> Void) {
        self.remove = remove
    }
}
