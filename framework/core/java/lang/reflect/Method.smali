.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/AccessibleObject;
.source "Method.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field public static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private genericReturnType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private name:Ljava/lang/String;

.field private parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private slot:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/reflect/Method$1;

    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    .line 268
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "name"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, declaring:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p3, exceptTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p4, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    .line 124
    iput-object p1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    .line 125
    iput-object p5, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    .line 126
    iput p6, p0, Ljava/lang/reflect/Method;->slot:I

    .line 127
    iput-object p2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    .line 128
    iput-object p3, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    .line 129
    iput-object p4, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 9
    .parameter "orig"

    .prologue
    .line 113
    iget-object v1, p1, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p1, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    iget-object v4, p1, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget-object v5, p1, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    iget v6, p1, Ljava/lang/reflect/Method;->slot:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    .line 117
    iget-boolean v0, p1, Ljava/lang/reflect/Method;->flag:Z

    if-eqz v0, :cond_17

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/reflect/Method;->flag:Z

    .line 120
    :cond_17
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method private native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
.end method

.method private native getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;
.end method

.method private native getMethodModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method private native getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
.end method

.method private getSignature()Ljava/lang/String;
    .registers 4

    .prologue
    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v1, result:Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 555
    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 557
    :cond_1e
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private declared-synchronized initGenericTypes()V
    .registers 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    if-nez v2, :cond_2c

    .line 95
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, signatureAttribute:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 98
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 99
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 100
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 101
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 102
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 105
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    .end local v1           #signatureAttribute:Ljava/lang/String;
    :cond_2c
    monitor-exit p0

    return-void

    .line 94
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method static noAnnotations(I)[[Ljava/lang/annotation/Annotation;
    .registers 4
    .parameter "size"

    .prologue
    .line 274
    new-array v0, p0, [[Ljava/lang/annotation/Annotation;

    .line 275
    .local v0, annotations:[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p0, :cond_c

    .line 276
    sget-object v2, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v2, v0, v1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 278
    :cond_c
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 362
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

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
    .line 263
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Method;->getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

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
    .line 381
    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 382
    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 384
    .end local p0
    :goto_6
    return-object v0

    .restart local p0
    :cond_7
    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Class;

    move-object v0, p0

    goto :goto_6
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 240
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 221
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 258
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 4

    .prologue
    .line 290
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Method;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 292
    .local v0, parameterAnnotations:[[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    if-nez v1, :cond_13

    .line 293
    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/reflect/Method;->noAnnotations(I)[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 295
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
    .line 419
    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public getReturnType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Method;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 142
    const/4 v1, 0x0

    .line 145
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
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 134
    iget-object v0, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter "receiver"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 488
    if-nez p2, :cond_4

    .line 489
    sget-object p2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 491
    :cond_4
    iget-object v3, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v4, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget v6, p0, Ljava/lang/reflect/Method;->slot:I

    iget-boolean v7, p0, Ljava/lang/reflect/Method;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Method;->invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBridge()Z
    .registers 4

    .prologue
    .line 317
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 318
    .local v0, modifiers:I
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isSynthetic()Z
    .registers 4

    .prologue
    .line 327
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 328
    .local v0, modifiers:I
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
    .line 307
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 308
    .local v0, modifiers:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public toGenericString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 167
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 168
    .local v2, modifier:I
    if-eqz v2, :cond_1f

    .line 169
    and-int/lit16 v4, v2, -0xc1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_1f
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_4e

    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-lez v4, :cond_4e

    .line 174
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-ge v1, v4, :cond_49

    .line 176
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 177
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_46

    .line 178
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 181
    :cond_49
    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v1           #i:I
    :cond_4e
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 185
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 188
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 193
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 197
    .local v0, genericExceptionTypeArray:[Ljava/lang/reflect/Type;
    array-length v4, v0

    if-lez v4, :cond_92

    .line 198
    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 201
    :cond_92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_18
    iget-object v1, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_61

    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_61

    .line 535
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
