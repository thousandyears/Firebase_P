public protocol HTTPSCallable_P {
    
    associatedtype HTTPSCallableResult: HTTPSCallableResult_P
    
    func call(completion: @escaping (HTTPSCallableResult?, Error?) -> Void)
    func call(_ data: Any?, completion: @escaping (HTTPSCallableResult?, Error?) -> Void)
}
