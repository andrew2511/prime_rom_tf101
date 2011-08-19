.class public final Ldalvik/system/VMStack;
.super Ljava/lang/Object;
.source "VMStack.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCallingClassLoader()Ljava/lang/ClassLoader;
.end method

.method public static native getCallingClassLoader2()Ljava/lang/ClassLoader;
.end method

.method public static native getClasses(IZ)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getStackClass2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
.end method
