.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient name:Ljava/lang/String;

.field private transient pd:Ljava/security/ProtectionDomain;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 128
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method private static arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, result:[Ljava/lang/Object;,"[TT;"
    .local p1, head:[Ljava/lang/Object;,"[TT;"
    .local p2, tail:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 1414
    array-length v0, p1

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    return-object p0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 10
    .parameter "list"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 810
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_a

    .line 811
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "name == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 813
    :cond_a
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_1f

    aget-object v1, v0, v2

    .line 814
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 815
    return-object v1

    .line 813
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 818
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_1f
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 10
    .parameter "className"
    .parameter "initializeBoolean"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p2, :cond_1c

    .line 209
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 210
    .local v4, smgr:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_18

    .line 211
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 212
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_18

    .line 213
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "getClassLoader"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 217
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_18
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 227
    .end local v4           #smgr:Ljava/lang/SecurityManager;
    :cond_1c
    :try_start_1c
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1f} :catch_21

    move-result-object v3

    .line 236
    .local v3, result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object v3

    .line 229
    .end local v3           #result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_21
    move-exception v2

    .line 230
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 231
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v5, :cond_2d

    .line 232
    check-cast v1, Ljava/lang/ExceptionInInitializerError;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 234
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_2d
    throw v2
.end method

.method private static native getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation
.end method

.method private static native getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method static native getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
.end method

.method private static native getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method static native getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private getFullListOfClasses(Z)[Ljava/lang/Class;
    .registers 7
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v1

    .line 521
    .local v1, result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 522
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v0, :cond_21

    .line 523
    invoke-static {v0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v2

    .line 524
    .local v2, temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-eqz v3, :cond_1c

    .line 525
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast v1, [Ljava/lang/Class;

    .line 528
    .restart local v1       #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 529
    goto :goto_8

    .line 531
    .end local v2           #temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_21
    return-object v1
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private static native getModifiers(Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getSignatureAnnotation()[Ljava/lang/Object;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 140
    const/4 v1, 0x0

    .line 143
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method static getStackClasses(IZ)[Ljava/lang/Class;
    .registers 3
    .parameter "maxDepth"
    .parameter "stopAtPrivileged"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1453
    invoke-static {p0, p1}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private native newInstanceImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method static native setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1360
    return-object p0

    .line 1362
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, actualClassName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, desiredClassName:Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1379
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 1380
    const/4 v2, 0x0

    .line 1382
    :goto_3
    return-object v2

    .line 1381
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, p1

    .line 1382
    goto :goto_3

    .line 1384
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, actualClassName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1386
    .local v1, desiredClassName:Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native desiredAssertionStatus()Z
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_15

    aget-object v0, v1, v2

    .line 280
    .local v0, annotation:Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v0

    .line 284
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    :goto_11
    return-object v4

    .line 279
    .restart local v0       #annotation:Ljava/lang/annotation/Annotation;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 284
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    :cond_15
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 10

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x1

    .line 306
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 309
    .local v2, declaredAnnotations:[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    sub-int v3, v6, v8

    .local v3, i:I
    :goto_d
    if-ltz v3, :cond_1d

    .line 310
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 312
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .local v5, sup:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_21
    if-eqz v5, :cond_4d

    .line 313
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 314
    array-length v6, v2

    sub-int v3, v6, v8

    :goto_2a
    if-ltz v3, :cond_48

    .line 315
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 316
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 317
    aget-object v6, v2, v3

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_45
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 312
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_48
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_21

    .line 323
    :cond_4d
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 324
    .local v1, coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, [Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .registers 4

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    move-object v1, v2

    .line 368
    :goto_e
    return-object v1

    .line 339
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 344
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 348
    .end local v0           #name:Ljava/lang/String;
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 353
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0       #name:Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 362
    .end local v0           #name:Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .restart local v0       #name:Ljava/lang/String;
    :cond_64
    move-object v1, v2

    .line 368
    goto :goto_e
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 6

    .prologue
    .line 385
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 386
    .local v2, smgr:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 387
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    .line 388
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 390
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 391
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "getClassLoader"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 395
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 396
    const/4 v3, 0x0

    .line 403
    :goto_29
    return-object v3

    .line 399
    :cond_2a
    if-nez v1, :cond_30

    .line 400
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v1

    :cond_30
    move-object v3, v1

    .line 403
    goto :goto_29
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 419
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/lang/Class;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 420
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_a
.end method

.method getClassMembers()Ljava/lang/ClassMembers;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassMembers",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/ClassMembers;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, Ljava/lang/ClassMembers;

    return-object p0
.end method

.method public getClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getFullListOfClasses(Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 459
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v0, "<init>"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, p1}, Ljava/lang/ClassMembers;->getConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 564
    const-string v0, "<init>"

    invoke-static {p0, v0, v1, v1, p1}, Ljava/lang/ClassMembers;->getConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassMembers;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 612
    .local v1, fields:[Ljava/lang/reflect/Field;
    invoke-direct {p0, v1, p1}, Ljava/lang/Class;->findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 618
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassMembers;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 637
    .local v0, fields:[Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/ClassMembers;->deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 672
    invoke-static {p0, p1, v1, v1, p2}, Ljava/lang/ClassMembers;->getConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 674
    .local v0, member:Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_f

    .line 675
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_f
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0           #member:Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 695
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassMembers;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 696
    .local v0, methods:[Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/lang/ClassMembers;->deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 765
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassMembers;->getEnumValuesInOrder()[Ljava/lang/Object;

    move-result-object v0

    .line 768
    .local v0, values:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    .line 771
    .end local v0           #values:[Ljava/lang/Object;,"[TT;"
    :goto_15
    return-object v1

    .restart local p0       #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 791
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassMembers;->getAllPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 792
    .local v1, fields:[Ljava/lang/reflect/Field;
    invoke-direct {p0, v1, p1}, Ljava/lang/Class;->findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 798
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassMembers;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 840
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassMembers;->getAllPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 841
    .local v0, fields:[Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/ClassMembers;->deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 853
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 854
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 855
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 865
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 866
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 867
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public native getInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 904
    invoke-static {p0, p1, v1, v1, p2}, Ljava/lang/ClassMembers;->getConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 905
    .local v0, member:Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_f

    .line 906
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_f
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0           #member:Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 930
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassMembers;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 931
    .local v0, methods:[Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/lang/ClassMembers;->deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 942
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 962
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 963
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_b

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :goto_a
    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_a
.end method

.method public getPackage()Ljava/lang/Package;
    .registers 6

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1326
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1327
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_20

    .line 1328
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1329
    .local v2, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1330
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    .line 1333
    .end local v0           #dot:I
    .end local v2           #name:Ljava/lang/String;
    :goto_1d
    return-object v3

    .restart local v0       #dot:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_1e
    move-object v3, v4

    .line 1330
    goto :goto_1d

    .end local v0           #dot:I
    .end local v2           #name:Ljava/lang/String;
    :cond_20
    move-object v3, v4

    .line 1333
    goto :goto_1d
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 4

    .prologue
    .line 1025
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1026
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1028
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getProtectionDomain"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1031
    :cond_10
    iget-object v1, p0, Ljava/lang/Class;->pd:Ljava/security/ProtectionDomain;

    return-object v1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1047
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1048
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1062
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1063
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1064
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1066
    :goto_19
    return-object v3

    .line 1050
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1052
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1053
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1058
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1055
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1066
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_19
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1083
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1084
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1098
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1099
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1100
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1102
    :goto_19
    return-object v3

    .line 1086
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1088
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1089
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1094
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1091
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1102
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_19
.end method

.method public getSigners()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1116
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 978
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 997
    :goto_21
    return-object v2

    .line 982
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 985
    const-string v2, ""

    goto :goto_21

    .line 988
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 989
    :cond_3b
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 992
    :cond_40
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 993
    .local v0, dot:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_50

    .line 994
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_50
    move-object v2, v1

    .line 997
    goto :goto_21
.end method

.method public native getSuperclass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1140
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1141
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1142
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 1140
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isAnnotation()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    .line 1152
    const/16 v0, 0x2000

    .line 1153
    .local v0, ACC_ANNOTATION:I
    invoke-static {p0, v3}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1154
    .local v1, mod:I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
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
    .line 1167
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 1187
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public isEnum()Z
    .registers 3

    .prologue
    .line 1214
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public native isInstance(Ljava/lang/Object;)Z
.end method

.method public native isInterface()Z
.end method

.method public isLocalClass()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_19

    :cond_e
    move v0, v3

    .line 1248
    .local v0, enclosed:Z
    :goto_f
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_1b

    move v1, v3

    :goto_18
    return v1

    .end local v0           #enclosed:Z
    :cond_19
    move v0, v2

    .line 1246
    goto :goto_f

    .restart local v0       #enclosed:Z
    :cond_1b
    move v1, v2

    .line 1248
    goto :goto_18
.end method

.method public isMemberClass()Z
    .registers 2

    .prologue
    .line 1259
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isPrimitive()Z
.end method

.method public isSynthetic()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    .line 1277
    const/16 v0, 0x1000

    .line 1278
    .local v0, ACC_SYNTHETIC:I
    invoke-static {p0, v3}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1279
    .local v1, mod:I
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1301
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->newInstanceImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1309
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1310
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1312
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "interface "

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2d
    const-string v1, "class "

    goto :goto_1c
.end method
