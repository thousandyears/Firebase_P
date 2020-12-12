public protocol ExceptionModel_P {
    associatedtype StackFrame: StackFrame_P
    init(name: String, reason: String)
    var stackTrace: [StackFrame] { get }
}
