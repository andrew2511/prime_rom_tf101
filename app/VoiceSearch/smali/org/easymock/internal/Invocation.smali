.class public Lorg/easymock/internal/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x275c4d6707c877dfL


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private transient method:Ljava/lang/reflect/Method;

.field private final mock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    invoke-static {v0, p3}, Lorg/easymock/internal/Invocation;->expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private equalArguments([Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    move v0, v4

    .line 90
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 76
    :goto_1
    iget-object v1, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 77
    iget-object v1, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 78
    aget-object v2, p1, v0

    .line 80
    invoke-direct {p0, v0}, Lorg/easymock/internal/Invocation;->isPrimitiveParameter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v4

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    if-eq v1, v2, :cond_2

    move v0, v4

    .line 86
    goto :goto_0

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 33
    if-eqz p0, :cond_0

    if-eqz p0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :cond_0
    if-nez p1, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 43
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/easymock/internal/matchers/ArrayEquals;->createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 38
    array-length v1, p1

    sub-int/2addr v1, v2

    .line 39
    array-length v2, v0

    .line 40
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 43
    goto :goto_0
.end method

.method public static isJavaIdentifier(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 150
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    .line 146
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v4

    .line 147
    goto :goto_0

    .line 145
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 150
    goto :goto_0
.end method

.method private isPrimitiveParameter(I)Z
    .locals 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 99
    :goto_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0

    :cond_0
    move v1, p1

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
    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 156
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MethodSerializationWrapper;

    invoke-virtual {v0}, Lorg/easymock/internal/MethodSerializationWrapper;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toStringIsDefined(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "toString"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The toString() method could not be found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 166
    new-instance v0, Lorg/easymock/internal/MethodSerializationWrapper;

    iget-object v1, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MethodSerializationWrapper;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_1
    check-cast p1, Lorg/easymock/internal/Invocation;

    .line 64
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    iget-object v1, p1, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/easymock/internal/Invocation;->equalArguments([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMockAndMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/easymock/internal/Invocation;->toStringIsDefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/easymock/internal/Invocation;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hashCode() is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public matches(Lorg/easymock/internal/Invocation;Lorg/easymock/ArgumentsMatcher;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    iget-object v1, p1, Lorg/easymock/internal/Invocation;->mock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/easymock/internal/Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    iget-object v1, p1, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Lorg/easymock/ArgumentsMatcher;->matches([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(Lorg/easymock/ArgumentsMatcher;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/easymock/internal/Invocation;->getMockAndMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/easymock/internal/Invocation;->arguments:[Ljava/lang/Object;

    invoke-interface {p1, v1}, Lorg/easymock/ArgumentsMatcher;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
