.class public Lorg/easymock/internal/ObjectMethodsFilter;
.super Ljava/lang/Object;
.source "ObjectMethodsFilter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d6dd20d55f60916L


# instance fields
.field private final delegate:Lorg/easymock/internal/MockInvocationHandler;

.field private transient equalsMethod:Ljava/lang/reflect/Method;

.field private transient hashCodeMethod:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private transient toStringMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/easymock/internal/MockInvocationHandler;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/easymock/internal/MockInvocationHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/easymock/internal/Invocation;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' is not a valid Java identifier."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    .line 37
    :goto_0
    const-string v0, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->equalsMethod:Ljava/lang/reflect/Method;

    .line 39
    const-string v2, "hashCode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->hashCodeMethod:Ljava/lang/reflect/Method;

    .line 40
    const-string v2, "toString"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->toStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iput-object p2, p0, Lorg/easymock/internal/ObjectMethodsFilter;->delegate:Lorg/easymock/internal/MockInvocationHandler;

    .line 47
    iput-object p3, p0, Lorg/easymock/internal/ObjectMethodsFilter;->name:Ljava/lang/String;

    .line 48
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An Object method could not be found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private mockToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyMock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/easymock/internal/ObjectMethodsFilter;->mockType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private mockType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MethodSerializationWrapper;

    invoke-virtual {v0}, Lorg/easymock/internal/MethodSerializationWrapper;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->toStringMethod:Ljava/lang/reflect/Method;

    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MethodSerializationWrapper;

    invoke-virtual {v0}, Lorg/easymock/internal/MethodSerializationWrapper;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->equalsMethod:Ljava/lang/reflect/Method;

    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MethodSerializationWrapper;

    invoke-virtual {v0}, Lorg/easymock/internal/MethodSerializationWrapper;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->hashCodeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 94
    new-instance v0, Lorg/easymock/internal/MethodSerializationWrapper;

    iget-object v1, p0, Lorg/easymock/internal/ObjectMethodsFilter;->toStringMethod:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MethodSerializationWrapper;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lorg/easymock/internal/MethodSerializationWrapper;

    iget-object v1, p0, Lorg/easymock/internal/ObjectMethodsFilter;->equalsMethod:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MethodSerializationWrapper;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lorg/easymock/internal/MethodSerializationWrapper;

    iget-object v1, p0, Lorg/easymock/internal/ObjectMethodsFilter;->hashCodeMethod:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MethodSerializationWrapper;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/easymock/internal/MockInvocationHandler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->delegate:Lorg/easymock/internal/MockInvocationHandler;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->equalsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    aget-object v0, p3, v1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->hashCodeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->toStringMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-direct {p0, p1}, Lorg/easymock/internal/ObjectMethodsFilter;->mockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Lorg/easymock/internal/ObjectMethodsFilter;->delegate:Lorg/easymock/internal/MockInvocationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/easymock/internal/MockInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
