import struct Foundation.Date
import struct Foundation.URL

public protocol FirebaseUserInfo_P {
    var providerID: String { get }
    var uid: String { get }
    var displayName: String? { get }
    var photoURL: URL? { get }
    var email: String? { get }
    var phoneNumber: String? { get }
}

public protocol FirebaseUser_P: FirebaseUserInfo_P {
    var isAnonymous: Bool { get }
    var isEmailVerified: Bool { get }
    var refreshToken: String? { get }
    var tenantID: String? { get }
}

public protocol FirebaseUserMetadata_P {
    var lastSignInDate: Date? { get }
    var creationDate: Date? { get }
}

extension FirebaseUser_P {
    // TODO
    //    var multiFactor: MultiFactor { get }
    //    func updateEmail(to email: String, completion: ((Error?) -> Void)?)
    //    func updatePassword(to password: String, completion: ((Error?) -> Void)?)
    //    func updatePhoneNumber(_ phoneNumberCredential: FIRPhoneAuthCredential, completion: ((Error?) -> Void)?)
    //    func createProfileChangeRequest() -> UserProfileChangeRequest
    //    func reload(completion: ((Error?) -> Void)?)
    //    func reauthenticate(with credential: AuthCredential, completion: ((AuthDataResult?, Error?) -> Void)?)
    //    func getIDTokenResult(completion: ((FIRAuthTokenResult?, Error?) -> Void)?)
    //    func getIDTokenResult(forcingRefresh forceRefresh: Bool, completion: ((FIRAuthTokenResult?, Error?) -> Void)?)
    //    func getIDToken(completion: ((String?, Error?) -> Void)?)
    //    func getIDTokenForcingRefresh(_ forceRefresh: Bool, completion: ((String?, Error?) -> Void)?)
    //    func link(with credential: AuthCredential, completion: ((AuthDataResult?, Error?) -> Void)?)
    //    func unlink(fromProvider provider: String, completion: ((User?, Error?) -> Void)?)
    //    func sendEmailVerification(completion: ((Error?) -> Void)?)
    //    func sendEmailVerification(with actionCodeSettings: FIRActionCodeSettings, completion: ((Error?) -> Void)?)
    //    func delete(completion: ((Error?) -> Void)?)
    //    func sendEmailVerification(beforeUpdatingEmail email: String, completion: ((Error?) -> Void)?)
    //    func sendEmailVerification(beforeUpdatingEmail email: String, actionCodeSettings: FIRActionCodeSettings, completion: ((Error?) -> Void)?)
}
