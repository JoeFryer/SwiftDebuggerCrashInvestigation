# SwiftDebuggerCrashInvestigation
A sample project to demonstrate a Swift/Xcode issue

Having some Swift code in a project that has the same construct as the code in LetsBreakTheDebugger.swift will cause a build error ("Illegal Instruction: 4").

The basic construct is:

 - A class `B` that inherits from a generic class `A`, and specialises it with another class `Y`.
 - Class `B` has a nested struct `S`.
 - Class `Y` also inherits from a generic class `X`, and specialises it with the struct `S`.

Changing the Swift Compilation Mode to Whole Module allows the project to build, but if you try to use `po` in the console, the debugger detaches from the process with the following message output to the console: "Message from debugger: The LLDB RPC server has crashed."

Moving the nested struct `S` out from being a nested type on `B` works as a temporary workaround. This now compiles without issue, and debugging works.

There are branches to demonstrate each step.

All with Xcode 11.3.1



