module yu.thread;

public import core.thread;
import yu.exception;

pragma(inline) Thread currentThread() nothrow @trusted {
    auto th = Thread.getThis();
    if (th is null) {
        yuCathException!false(thread_attachThis(), th);
    }
    return th;
}

unittest {
    import std.stdio;

    writeln("currentThread().id ------------- ", currentThread().id);
}
