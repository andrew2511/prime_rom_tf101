.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field static trans:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    .line 67
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "byte"

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "char"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "short"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "int"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "long"

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "float"

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "double"

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "void"

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "boolean"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 117
    return-void
.end method

.method private static native getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;
.end method

.method static getClassSignatureAttribute(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter "clazz"

    .prologue
    .line 261
    invoke-static {p0}, Ljava/lang/reflect/AccessibleObject;->getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 264
    const/4 v1, 0x0

    .line 267
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method static getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    .registers 1

    .prologue
    .line 283
    sget-object v0, Ljava/lang/reflect/ReflectionAccessImpl;->THE_ONE:Ljava/lang/reflect/ReflectionAccessImpl;

    return-object v0
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 6
    .parameter "objects"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 99
    .local v1, smgr:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 100
    new-instance v2, Ljava/lang/reflect/ReflectPermission;

    const-string v3, "suppressAccessChecks"

    invoke-direct {v2, v3}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 103
    :cond_10
    const-class v2, Ljava/lang/reflect/AccessibleObject;

    monitor-enter v2

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    :try_start_14
    array-length v3, p0

    if-ge v0, v3, :cond_1e

    .line 105
    aget-object v3, p0, v0

    iput-boolean p1, v3, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 107
    :cond_1e
    monitor-exit v2

    .line 108
    return-void

    .line 107
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v3
.end method


# virtual methods
.method appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V
    .registers 5
    .parameter "sb"
    .parameter "objs"

    .prologue
    .line 319
    array-length v1, p2

    if-lez v1, :cond_1a

    .line 320
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 321
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 322
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 326
    .end local v0           #i:I
    :cond_1a
    return-void
.end method

.method appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .registers 6
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, obj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 298
    .local v1, dimensions:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 299
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v0, 0x0

    .local v0, d:I
    :goto_16
    if-ge v0, v1, :cond_20

    .line 304
    const-string v2, "[]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 306
    :cond_20
    return-void
.end method

.method appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V
    .registers 13
    .parameter "sb"
    .parameter "obj"

    .prologue
    const/4 v9, 0x1

    .line 337
    instance-of v7, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_f

    .line 338
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_e
    :goto_e
    return-void

    .line 339
    .restart local p2
    :cond_f
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_1b

    .line 340
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 341
    :cond_1b
    instance-of v7, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_2e

    .line 342
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 343
    .local v6, simplified:Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 344
    const-string v7, "[]"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 345
    .end local v6           #simplified:Ljava/lang/reflect/Type;
    .restart local p2
    :cond_2e
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_e

    .line 346
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 347
    .local v2, c:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 348
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\["

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, as:[Ljava/lang/String;
    array-length v7, v1

    sub-int v5, v7, v9

    .line 350
    .local v5, len:I
    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6c

    .line 351
    aget-object v7, v1, v5

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_61
    :goto_61
    const/4 v4, 0x0

    .local v4, i:I
    :goto_62
    if-ge v4, v5, :cond_e

    .line 374
    const-string v7, "[]"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 353
    .end local v4           #i:I
    :cond_6c
    aget-object v7, v1, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 354
    .local v3, ch:C
    const/16 v7, 0x49

    if-ne v3, v7, :cond_7d

    .line 355
    const-string v7, "int"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 356
    :cond_7d
    const/16 v7, 0x42

    if-ne v3, v7, :cond_87

    .line 357
    const-string v7, "byte"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 358
    :cond_87
    const/16 v7, 0x4a

    if-ne v3, v7, :cond_91

    .line 359
    const-string v7, "long"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 360
    :cond_91
    const/16 v7, 0x46

    if-ne v3, v7, :cond_9b

    .line 361
    const-string v7, "float"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 362
    :cond_9b
    const/16 v7, 0x44

    if-ne v3, v7, :cond_a5

    .line 363
    const-string v7, "double"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 364
    :cond_a5
    const/16 v7, 0x53

    if-ne v3, v7, :cond_af

    .line 365
    const-string v7, "short"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 366
    :cond_af
    const/16 v7, 0x43

    if-ne v3, v7, :cond_b9

    .line 367
    const-string v7, "char"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 368
    :cond_b9
    const/16 v7, 0x5a

    if-ne v3, v7, :cond_c3

    .line 369
    const-string v7, "boolean"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 370
    :cond_c3
    const/16 v7, 0x56

    if-ne v3, v7, :cond_61

    .line 371
    const-string v7, "void"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 377
    .end local v1           #as:[Ljava/lang/String;
    .end local v3           #ch:C
    .end local v5           #len:I
    :cond_cd
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e
.end method

.method appendSimpleType(Ljava/lang/StringBuilder;[Ljava/lang/Class;)V
    .registers 5
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, objs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v1, p2

    if-lez v1, :cond_22

    .line 396
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_22

    .line 398
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 402
    .end local v0           #i:I
    :cond_22
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_8

    .line 179
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 181
    :cond_8
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 182
    .local v0, annotations:[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_10
    if-ltz v1, :cond_21

    .line 183
    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_1e

    .line 185
    aget-object v2, v0, v1

    .local v2, result:Ljava/lang/annotation/Annotation;,"TT;"
    move-object v3, v2

    .line 189
    .end local v2           #result:Ljava/lang/annotation/Annotation;,"TT;"
    :goto_1d
    return-object v3

    .line 182
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 189
    :cond_21
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "subclass must override this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, ""

    .line 204
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, nextType:Ljava/lang/String;
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 207
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 215
    .restart local v1       #result:Ljava/lang/String;
    :goto_16
    return-object v1

    .line 209
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 212
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAccessible()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAccessible(Z)V
    .registers 5
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 147
    new-instance v1, Ljava/lang/reflect/ReflectPermission;

    const-string v2, "suppressAccessChecks"

    invoke-direct {v1, v2}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 150
    :cond_10
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 151
    return-void
.end method

.method setAccessibleNoCheck(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 160
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 161
    return-void
.end method

.method toString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v1, result:Ljava/lang/StringBuilder;
    array-length v2, p1

    if-eqz v2, :cond_27

    .line 233
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v0, 0x1

    .local v0, i:I
    :goto_13
    array-length v2, p1

    if-ge v0, v2, :cond_27

    .line 235
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 240
    .end local v0           #i:I
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
