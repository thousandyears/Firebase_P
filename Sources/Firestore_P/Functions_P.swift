public protocol Functions_P {
    
    associatedtype HTTPSCallable: HTTPSCallable_P
    
    func httpsCallable(_ name: String) -> HTTPSCallable
}
