public protocol FirestoreSnapshot_P {
    
    associatedtype SnapshotMetadata: SnapshotMetadata_P
    
    var metadata: SnapshotMetadata { get }
}
