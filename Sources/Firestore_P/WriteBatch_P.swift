public protocol WriteBatch_P {
    
    associatedtype DocumentReference: DocumentReference_P
    associatedtype ThisBatch: WriteBatch_P // avoiding -> Self
    
    func setData(_ data: [String : Any], forDocument document: DocumentReference) -> ThisBatch
    func setData(_ data: [String : Any], forDocument document: DocumentReference, merge: Bool) -> ThisBatch
    func setData(_ data: [String : Any], forDocument document: DocumentReference, mergeFields: [Any]) -> ThisBatch
    func updateData(_ fields: [AnyHashable : Any], forDocument document: DocumentReference) -> ThisBatch
    func deleteDocument(_ document: DocumentReference) -> ThisBatch
    func commit()
    func commit(completion: ((Error?) -> Void)?)
}
