import struct Foundation.Data
import struct Foundation.URL

public protocol FirebaseAuth_P: AnyObject {
    
    associatedtype Auth: FirebaseAuth_P
    associatedtype App
    associatedtype User//: FirebaseUser_P
    associatedtype Settings
    associatedtype Credential//: FirebaseAuthCredential_P
    associatedtype AuthResult: FirebaseAuthResult_P where AuthResult.User == User, AuthResult.Credential == Credential
    associatedtype Handle: AnyObject
    associatedtype APNSToken: FirebaseAuthAPNSTokenType_P
    
    static func auth() -> Auth
    static func auth(app: App) -> Auth
    
    var app: App? { get }
    var currentUser: User? { get }
    
    var languageCode: String? { get }
    var settings: Settings? { get set }
    var userAccessGroup: String? { get }
    var tenantID: String? { get }
    var apnsToken: Data? { get }
    
    func updateCurrentUser(_ user: User, completion: ((Error?) -> Void)?)
    func fetchSignInMethods(forEmail email: String, completion: (([String]?, Error?) -> Void)?)
    
    func signIn(withEmail email: String, password: String, completion: ((AuthResult?, Error?) -> Void)?)
    func signIn(withEmail email: String, link: String, completion: ((AuthResult?, Error?) -> Void)?)
    func signIn(with credential: Credential, completion: ((AuthResult?, Error?) -> Void)?)
    func signInAnonymously(completion: ((AuthResult?, Error?) -> Void)?)
    func signIn(withCustomToken token: String, completion: ((AuthResult?, Error?) -> Void)?)
    
    func signOut() throws
    func isSignIn(withEmailLink link: String) -> Bool
    
    func addStateDidChangeListener(_ listener: @escaping (Auth, User?) -> Void) -> Handle
    func removeStateDidChangeListener(_ listenerHandle: Handle)
    
    func addIDTokenDidChangeListener(_ listener: @escaping (Auth, User?) -> Void) -> Handle
    func removeIDTokenDidChangeListener(_ listenerHandle: Handle)
    
    func useAppLanguage()
    func useEmulator(withHost host: String, port: Int)
    func canHandle(_ URL: URL) -> Bool
    func setAPNSToken(_ token: Data, type: APNSToken)
    func canHandleNotification(_ userInfo: [AnyHashable : Any]) -> Bool
    func useUserAccessGroup(_ accessGroup: String?) throws
    func getStoredUser(forAccessGroup accessGroup: String?) throws -> User
}

public protocol FirebaseAuthResult_P {

    associatedtype User: FirebaseUser_P
    associatedtype UserInfo: FirebaseAuthResultUserInfo_P
    associatedtype Credential: FirebaseAuthCredential_P
    
    var user: User { get }
    var additionalUserInfo: UserInfo? { get }
    var credential: Credential? { get }
}

import class Foundation.NSObject

public protocol FirebaseAuthResultUserInfo_P: AnyObject {
    var providerID: String { get }
    var profile: [String : NSObject]? { get }
    var username: String? { get }
    var isNewUser: Bool { get }
}

public protocol FirebaseAuthCredential_P: AnyObject {
    var provider: String { get }
}

public protocol FirebaseAuthAPNSTokenType_P {
    static var unknown: Self { get }
    static var sandbox: Self { get }
    static var prod: Self { get }
}

extension FirebaseAuth_P {
    // TODO
    //    func createUser(withEmail email: String, password: String, completion: ((AuthResult?, Error?) -> Void)?)
    //    func confirmPasswordReset(withCode code: String, newPassword: String, completion: @escaping (Error?) -> Void)
    //    func checkActionCode(_ code: String, completion: @escaping CheckActionCodeCallback)
    //    func verifyPasswordResetCode(_ code: String, completion: @escaping (String?, Error?) -> Void)
    //    func applyActionCode(_ code: String, completion: @escaping (Error?) -> Void)
    //    func sendPasswordReset(withEmail email: String, completion: ((Error?) -> Void)?)
    //    func sendPasswordReset(withEmail email: String, actionCodeSettings: FIRActionCodeSettings, completion: ((Error?) -> Void)?)
    //    func sendSignInLink(toEmail email: String, actionCodeSettings: FIRActionCodeSettings, completion: ((Error?) -> Void)?)
    
}
