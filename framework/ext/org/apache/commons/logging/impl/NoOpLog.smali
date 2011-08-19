.class public Lorg/apache/commons/logging/impl/NoOpLog;
.super Ljava/lang/Object;
.source "NoOpLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 44
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 46
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 56
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 58
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 60
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 62
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 48
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 50
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public final isTraceEnabled()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 40
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 42
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 52
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 54
    return-void
.end method
