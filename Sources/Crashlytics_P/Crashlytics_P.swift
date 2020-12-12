/*
 import FirebaseCrashlytics
 
 extension FirebaseCrashlytics.Crashlytics: Crashlytics_P { }
 extension FirebaseCrashlytics.StackFrame: StackFrame_P { }
 extension FirebaseCrashlytics.ExceptionModel: ExceptionModel_P { }
 */

public protocol Crashlytics_P {
    
    associatedtype ExceptionModel: ExceptionModel_P
    
    static func crashlytics() -> Self
    
    func log(_ msg: String)
    func log(format: String, arguments args: CVaListPointer)
    
    func setCustomValue(_ value: Any, forKey key: String)
    func setUserID(_ userID: String)
    
    func record(error: Error)
    func record(exceptionModel: ExceptionModel)
    
    func didCrashDuringPreviousExecution() -> Bool
    func setCrashlyticsCollectionEnabled(_ enabled: Bool)
    func isCrashlyticsCollectionEnabled() -> Bool
    
    func checkForUnsentReports(completion: @escaping (Bool) -> Void)
    func sendUnsentReports()
    func deleteUnsentReports()
}
