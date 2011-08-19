.class public abstract Lorg/apache/harmony/kernel/vm/LangAccess;
.super Ljava/lang/Object;
.source "LangAccess.java"


# static fields
.field private static theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/kernel/vm/LangAccess;->theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/kernel/vm/LangAccess;
    .registers 4

    .prologue
    .line 54
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 55
    .local v0, calling:Ljava/lang/ClassLoader;
    const-class v2, Lorg/apache/harmony/kernel/vm/LangAccess;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 57
    .local v1, current:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_16

    if-eq v0, v1, :cond_16

    .line 58
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "LangAccess access denied"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_16
    sget-object v2, Lorg/apache/harmony/kernel/vm/LangAccess;->theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;

    if-nez v2, :cond_22

    .line 62
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "not yet initialized"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_22
    sget-object v2, Lorg/apache/harmony/kernel/vm/LangAccess;->theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;

    return-object v2
.end method

.method public static setInstance(Lorg/apache/harmony/kernel/vm/LangAccess;)V
    .registers 3
    .parameter "instance"

    .prologue
    .line 38
    sget-object v0, Lorg/apache/harmony/kernel/vm/LangAccess;->theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;

    if-eqz v0, :cond_c

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    sput-object p0, Lorg/apache/harmony/kernel/vm/LangAccess;->theInstance:Lorg/apache/harmony/kernel/vm/LangAccess;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract getEnumValuesInOrder(Ljava/lang/Class;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract parkFor(J)V
.end method

.method public abstract parkUntil(J)V
.end method

.method public abstract unpark(Ljava/lang/Thread;)V
.end method
