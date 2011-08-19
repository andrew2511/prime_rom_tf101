.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/AccessibleObject;
.source "Constructor.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/AccessibleObject;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Member;"
    }
.end annotation


# instance fields
.field declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private volatile genericTypesAreInitialized:Z

.field parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field slot:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 80
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter "slot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, ptypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p3, extypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    .line 98
    iput-object p1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    .line 99
    iput-object p2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    .line 100
    iput-object p3, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    .line 101
    iput p4, p0, Ljava/lang/reflect/Constructor;->slot:I

    .line 102
    return-void
.end method

.method private native constructNative([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;IZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method private native getConstructorModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)I"
        }
    .end annotation
.end method

.method private native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
.end method

.method private native getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
.end method

.method private getSignature()Ljava/lang/String;
    .registers 4

    .prologue
    .line 343
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v1, result:Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 347
    iget-object v2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 349
    :cond_1e
    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private declared-synchronized initGenericTypes()V
    .registers 4

    .prologue
    .line 63
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    if-nez v2, :cond_28

    .line 64
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, signatureAttribute:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 67
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 68
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 69
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 70
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 73
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    .end local v1           #signatureAttribute:Ljava/lang/String;
    :cond_28
    monitor-exit p0

    return-void

    .line 63
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 274
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 210
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 295
    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 297
    .end local p0           #this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :goto_6
    return-object v0

    .restart local p0       #this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :cond_7
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    check-cast p0, [Ljava/lang/Class;

    move-object v0, p0

    goto :goto_6
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 204
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    .line 205
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 184
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    .line 185
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .registers 3

    .prologue
    .line 309
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Constructor;->getConstructorModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 4

    .prologue
    .line 224
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 226
    .local v0, parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    if-nez v1, :cond_13

    .line 227
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/reflect/Method;->noAnnotations(I)[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 229
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 4

    .prologue
    .line 105
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Constructor;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 108
    const/4 v1, 0x0

    .line 111
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    .line 123
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    check-cast p0, [Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 365
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .registers 4

    .prologue
    .line 254
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Constructor;->getConstructorModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 255
    .local v0, mods:I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isVarArgs()Z
    .registers 4

    .prologue
    .line 242
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Constructor;->getConstructorModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 243
    .local v0, mods:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v2, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Constructor;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Constructor;->flag:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/Constructor;->constructNative([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toGenericString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 133
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 137
    .local v2, modifier:I
    if-eqz v2, :cond_1f

    .line 138
    and-int/lit16 v4, v2, -0x81

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_1f
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_4e

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-lez v4, :cond_4e

    .line 142
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-ge v1, v4, :cond_49

    .line 144
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 145
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_46

    .line 146
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 149
    :cond_49
    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .end local v1           #i:I
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 154
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 157
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 161
    .local v0, genericExceptionTypeArray:[Ljava/lang/reflect/Type;
    array-length v4, v0

    if-lez v4, :cond_79

    .line 162
    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Constructor;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 165
    :cond_79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    .local p0, this:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 447
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    :cond_18
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_4b

    .line 453
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
