.class Lcom/google/android/testing/mocking/AndroidMockGenerator;
.super Ljava/lang/Object;
.source "AndroidMockGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    .line 51
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    new-instance v1, Ljavassist/ClassClassPath;

    const-class v2, Lcom/google/android/testing/mocking/MockObject;

    invoke-direct {v1, v2}, Ljavassist/ClassClassPath;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    .line 52
    return-void
.end method

.method private addConstructors(Ljavassist/CtClass;Ljava/lang/Class;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p2}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getCtClassForClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object v0

    .line 264
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 265
    invoke-virtual {v3}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v4

    .line 266
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljavassist/CtConstructor;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v3}, Ljavassist/CtConstructor;->getExceptionTypes()[Ljavassist/CtClass;

    move-result-object v3

    invoke-static {v4, v3, p1}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v3

    .line 271
    invoke-virtual {p1, v3}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal Error - Could not add constructors."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :catch_1
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal Error - Constructor suddenly could not be found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 279
    :cond_2
    return-void
.end method

.method private addGetDelegateMethod(Ljavassist/CtClass;)V
    .locals 3
    .parameter

    .prologue
    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getGetDelegateMethodSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljavassist/CtMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    :try_start_1
    invoke-virtual {v0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    .line 309
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->removeMethod(Ljavassist/CtMethod;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/CannotCompileException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :goto_0
    :try_start_2
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V
    :try_end_2
    .catch Ljavassist/CannotCompileException; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error while creating the getDelegate() method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 310
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addSetDelegateMethod(Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getSetDelegateMethodSource(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljavassist/CtMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error while creating the setDelegate() method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private classExists(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private containsUsableConstructor(Ljava/lang/Class;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 135
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 136
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0

    .line 135
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    .line 141
    goto :goto_1
.end method

.method private getAllMethodsMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_0

    .line 378
    invoke-direct {p0, v1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getAllMethodsMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 380
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    .line 382
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v8, v5

    move-object v5, v2

    move v2, v8

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v3, v2

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_1
    invoke-interface {v0, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_2
    return-object v0
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
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
    .line 216
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getClassPool()Ljavassist/ClassPool;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    return-object v0
.end method

.method private getGetDelegateMethodSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public Object getDelegate___AndroidMock() { return this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/StringBuilder;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 181
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot specify final or static methods in an interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    move v4, v6

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 192
    invoke-direct {p0, v5}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v5, " arg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_2

    .line 196
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_4

    .line 202
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    move v4, v6

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, v1, v3

    .line 206
    invoke-direct {p0, v5}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_5

    .line 208
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :cond_6
    return-object v0
.end method

.method private getReturnDefault(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    const-string v0, "null"

    .line 421
    :goto_0
    return-object v0

    .line 416
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 417
    const-string v0, "false"

    goto :goto_0

    .line 418
    :cond_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 419
    const-string v0, ""

    goto :goto_0

    .line 421
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reportReasonForUnsupportedType(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_1
    return-void

    .line 110
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const-string v0, "Cannot mock an Enum"

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string v0, "Cannot mock an Annotation"

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    const-string v0, "Cannot mock an Array"

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    const-string v0, "Cannot mock a Final class"

    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 119
    const-string v0, "Cannot mock primitives"

    goto :goto_0

    .line 120
    :cond_7
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 121
    const-string v0, "Cannot mock non-classes"

    goto :goto_0

    .line 122
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->containsUsableConstructor(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v0, "Cannot mock a class with no public constructors"

    goto :goto_0
.end method


# virtual methods
.method addInterfaceMethods(Ljava/lang/Class;Ljavassist/CtClass;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getAllMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 330
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 332
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->isMockable(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-virtual {p0, v3}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getInterfaceMethodSource(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavassist/CtMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v4

    .line 334
    invoke-virtual {p2, v4}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error while creating a new Interface method for class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".  Method name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 344
    :cond_1
    return-void

    .line 336
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method addMethods(Ljava/lang/Class;Ljavassist/CtClass;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getAllMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 348
    invoke-virtual {p2}, Ljavassist/CtClass;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p2}, Ljavassist/CtClass;->defrost()V

    .line 351
    :cond_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 352
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 354
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->isMockable(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    invoke-virtual {p0, v4}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateMethodSource(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Ljavassist/CtMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v5

    .line 356
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 357
    invoke-virtual {p2, v5}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Error while creating subclass methods for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :cond_2
    return-void

    .line 360
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method classIsSupportedType(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->containsUsableConstructor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMocksForClass(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/testing/mocking/GeneratedClassFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/google/android/testing/mocking/SdkVersion;->UNKNOWN:Lcom/google/android/testing/mocking/SdkVersion;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->createMocksForClass(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createMocksForClass(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/testing/mocking/SdkVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/testing/mocking/GeneratedClassFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->classIsSupportedType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->reportReasonForUnsupportedType(Ljava/lang/Class;)V

    .line 95
    new-array v0, v4, [Lcom/google/android/testing/mocking/GeneratedClassFile;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->generateInterface(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/google/android/testing/mocking/GeneratedClassFile;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/testing/mocking/GeneratedClassFile;-><init>(Ljava/lang/String;[B)V

    .line 100
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->generateSubClass(Ljava/lang/Class;Ljavassist/CtClass;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;

    move-result-object v0

    .line 101
    new-instance v2, Lcom/google/android/testing/mocking/GeneratedClassFile;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/testing/mocking/GeneratedClassFile;-><init>(Ljava/lang/String;[B)V

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/testing/mocking/GeneratedClassFile;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method generateInterface(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/testing/mocking/SdkVersion;",
            ")",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 164
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/testing/mocking/FileUtils;->getInterfaceNameFor(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    invoke-static {p1, p2}, Lcom/google/android/testing/mocking/FileUtils;->getInterfaceNameFor(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->makeInterface(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->addInterfaceMethods(Ljava/lang/Class;Ljavassist/CtClass;)V

    goto :goto_0
.end method

.method generateSkeletalClass(Ljava/lang/Class;Ljavassist/CtClass;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavassist/CtClass;",
            "Lcom/google/android/testing/mocking/SdkVersion;",
            ")",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 455
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getCtClassForClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v1

    .line 456
    invoke-static {p1, p3}, Lcom/google/android/testing/mocking/FileUtils;->getSubclassNameFor(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/lang/String;

    move-result-object v2

    .line 460
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    :try_start_1
    new-instance v1, Ljavassist/CtField;

    invoke-virtual {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v0}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->addField(Ljavassist/CtField;)V
    :try_end_1
    .catch Ljavassist/CannotCompileException; {:try_start_1 .. :try_end_1} :catch_2

    .line 478
    :goto_0
    return-object v0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frozen class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    :try_start_2
    invoke-virtual {v0, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, "Internal Error: could not find class"

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 469
    :cond_0
    throw v1

    .line 474
    :catch_2
    move-exception v1

    .line 475
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error adding the delegate field to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method generateSubClass(Ljava/lang/Class;Ljavassist/CtClass;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavassist/CtClass;",
            "Lcom/google/android/testing/mocking/SdkVersion;",
            ")",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p1, p3}, Lcom/google/android/testing/mocking/FileUtils;->getSubclassNameFor(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :try_start_0
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/google/android/testing/mocking/FileUtils;->getSubclassNameFor(Ljava/lang/Class;Lcom/google/android/testing/mocking/SdkVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/ClassNotFoundException;

    const-string v2, "This should be impossible, since we just checked for the existence of the class being created"

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->generateSkeletalClass(Ljava/lang/Class;Ljavassist/CtClass;Lcom/google/android/testing/mocking/SdkVersion;)Ljavassist/CtClass;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0, p2}, Ljavassist/CtClass;->addInterface(Ljavassist/CtClass;)V

    .line 248
    :try_start_1
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    const-class v2, Lcom/google/android/testing/mocking/MockObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->addInterface(Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->addMethods(Ljava/lang/Class;Ljavassist/CtClass;)V

    .line 253
    invoke-direct {p0, v0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->addGetDelegateMethod(Ljavassist/CtClass;)V

    .line 254
    invoke-direct {p0, v0, p2}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->addSetDelegateMethod(Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 255
    invoke-direct {p0, v0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->addConstructors(Ljavassist/CtClass;Ljava/lang/Class;)V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/google/android/testing/mocking/MockObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getAllMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getAllMethodsMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method getCtClassForClass(Ljava/lang/Class;)Ljavassist/CtClass;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found when finding the class to be mocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getDelegateFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "delegateMockObject"

    return-object v0
.end method

.method getDelegateMethodSource(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "if(this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, "==null){return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getReturnDefault(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, ";}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_0
    const-string v1, "this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 442
    const-string v2, "arg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 445
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_2
    const-string v1, ");}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInterfaceMethodSource(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSetDelegateMethodSource(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public void setDelegate___AndroidMock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj) { this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->getDelegateFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = obj;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isForbiddenMethod(Ljava/lang/reflect/Method;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v2

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 409
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 402
    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 409
    goto :goto_0
.end method

.method isMockable(Ljava/lang/reflect/Method;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/android/testing/mocking/AndroidMockGenerator;->isForbiddenMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 396
    :goto_0
    return v0

    .line 395
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 396
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method saveCtClass(Ljavassist/CtClass;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->writeFile()V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while saving modified class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Error: Attempt to save syntactically incorrect code for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
