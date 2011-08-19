.class Ljava/lang/VMThread;
.super Ljava/lang/Object;
.source "VMThread.java"


# static fields
.field static final STATE_MAP:[Ljava/lang/Thread$State; = null

.field private static final UNSUPPORTED_THREAD_METHOD:Ljava/lang/String; = "Deprecated Thread methods are not supported."


# instance fields
.field thread:Ljava/lang/Thread;

.field vmData:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Thread$State;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljava/lang/VMThread;->thread:Ljava/lang/Thread;

    .line 28
    return-void
.end method

.method static native create(Ljava/lang/Thread;J)V
.end method

.method static native currentThread()Ljava/lang/Thread;
.end method

.method static native interrupted()Z
.end method

.method static native sleep(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method static native yield()V
.end method


# virtual methods
.method native getStatus()I
.end method

.method native holdsLock(Ljava/lang/Object;)Z
.end method

.method native interrupt()V
.end method

.method native isInterrupted()Z
.end method

.method native nameChanged(Ljava/lang/String;)V
.end method

.method resume()V
    .registers 5

    .prologue
    .line 66
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Deprecated Thread methods are not supported."

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method native setPriority(I)V
.end method

.method start(J)V
    .registers 4
    .parameter "stackSize"

    .prologue
    .line 46
    iget-object v0, p0, Ljava/lang/VMThread;->thread:Ljava/lang/Thread;

    invoke-static {v0, p1, p2}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V

    .line 47
    return-void
.end method

.method stop(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "throwable"

    .prologue
    .line 81
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Deprecated Thread methods are not supported."

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method suspend()V
    .registers 5

    .prologue
    .line 57
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Deprecated Thread methods are not supported."

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method
