public protocol FirebaseAuthGameCenterAuthProvider_P: AnyObject {
    associatedtype AuthCredential: FirebaseAuthCredential_P
    
    static func getCredential(completion: @escaping (AuthCredential?, Error?) -> Void)
}
