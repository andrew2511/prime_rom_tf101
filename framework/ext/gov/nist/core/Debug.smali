.class public Lgov/nist/core/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static debug:Z

.field public static parserDebug:Z

.field static stackLogger:Lgov/nist/core/StackLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lgov/nist/core/Debug;->debug:Z

    .line 38
    sput-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 57
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_11

    :cond_8
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_11

    .line 58
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, p0, p1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    :cond_11
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 51
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_13

    :cond_8
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_13

    .line 52
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Stack Trace"

    invoke-interface {v0, v1, p0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    :cond_13
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 47
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_24

    :cond_8
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_24

    .line 48
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 49
    :cond_24
    return-void
.end method

.method public static setStackLogger(Lgov/nist/core/StackLogger;)V
    .registers 1
    .parameter "stackLogger"

    .prologue
    .line 43
    sput-object p0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    .line 44
    return-void
.end method
