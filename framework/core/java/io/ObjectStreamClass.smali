.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MODIFIERS_MASK:I = 0x611

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final CONSTRUCTOR_IS_NOT_RESOLVED:J = -0x1L

.field private static final EXTERNALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MODIFIERS_MASK:I = 0xdf

.field private static final METHOD_MODIFIERS_MASK:I = 0xd3f

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField; = null

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L

.field private static storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient arePropertiesResolved:Z

.field private volatile cachedHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private transient className:Ljava/lang/String;

.field private transient constructor:J

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient isEnum:Z

.field private transient isExternalizable:Z

.field private transient isProxy:Z

.field private transient isSerializable:Z

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient methodReadObject:Ljava/lang/reflect/Method;

.field private transient methodReadObjectNoData:Ljava/lang/reflect/Method;

.field private transient methodReadResolve:Ljava/lang/reflect/Method;

.field private transient methodWriteObject:Ljava/lang/reflect/Method;

.field private transient methodWriteReplace:Ljava/lang/reflect/Method;

.field private transient reflectionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient resolvedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorMethodId:I

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectInputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    .line 73
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectOutputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    .line 78
    new-array v1, v3, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 87
    :try_start_16
    const-string v1, "[Ljava.io.ObjectStreamField;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1e} :catch_3b

    .line 101
    const-class v1, Ljava/io/Serializable;

    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    .line 103
    const-class v1, Ljava/io/Externalizable;

    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    .line 106
    const-class v1, Ljava/lang/String;

    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    .line 108
    const-class v1, Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    .line 110
    const-class v1, Ljava/io/ObjectStreamClass;

    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    .line 1084
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    return-void

    .line 88
    :catch_3b
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 225
    return-void
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .registers 9
    .parameter
    .parameter "fields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_57

    .line 397
    aget-object v0, p1, v1

    .line 398
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_53

    .line 399
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 400
    .local v2, modifiers:I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    .end local v2           #modifiers:I
    if-eqz v2, :cond_53

    .line 401
    const-string v2, "serialVersionUID"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 407
    new-instance p0, Lorg/apache/harmony/luni/util/PriviAction;

    .end local p0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 411
    const/4 p0, 0x0

    :try_start_34
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_37} :catch_39

    move-result-wide p0

    .line 589
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v1           #i:I
    .end local p1
    :goto_38
    return-wide p0

    .line 412
    .restart local v0       #field:Ljava/lang/reflect/Field;
    .restart local v1       #i:I
    .restart local p1
    :catch_39
    move-exception p0

    .line 413
    .local p0, iae:Ljava/lang/IllegalAccessException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error fetching SUID: "

    .end local v1           #i:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #iae:Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    .restart local v0       #field:Ljava/lang/reflect/Field;
    .restart local v1       #i:I
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_53
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 422
    :cond_57
    :try_start_57
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_57 .. :try_end_5c} :catch_af

    move-result-object v1

    .line 426
    .local v1, digest:Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    .local v6, sha:Ljava/io/ByteArrayOutputStream;
    :try_start_62
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 429
    .local v5, output:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x611

    .line 436
    .local v0, classModifiers:I
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    .line 437
    .local v2, isArray:Z
    if-eqz v2, :cond_7c

    .line 438
    or-int/lit16 v0, v0, 0x400

    .line 441
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 442
    and-int/lit16 v0, v0, -0x401

    .line 444
    :cond_8a
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 451
    if-nez v2, :cond_b6

    .line 453
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 454
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, v2

    .end local v0           #classModifiers:I
    const/4 v3, 0x1

    if-le v0, v3, :cond_9f

    .line 457
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$1;-><init>()V

    .line 462
    .local v0, interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 466
    .end local v0           #interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    :cond_9f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a0
    array-length v3, v2

    if-ge v0, v3, :cond_b6

    .line 467
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_ac} :catch_198

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 423
    .end local v0           #i:I
    .end local v2           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #output:Ljava/io/DataOutputStream;
    .end local v6           #sha:Ljava/io/ByteArrayOutputStream;
    .local v1, i:I
    :catch_af
    move-exception p0

    .line 424
    .local p0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance p1, Ljava/lang/Error;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 472
    .local v1, digest:Ljava/security/MessageDigest;
    .restart local v5       #output:Ljava/io/DataOutputStream;
    .restart local v6       #sha:Ljava/io/ByteArrayOutputStream;
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_b6
    :try_start_b6
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_c2

    .line 475
    new-instance v0, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$2;-><init>()V

    .line 480
    .local v0, fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 484
    .end local v0           #fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :cond_c2
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_c4
    array-length v0, p1

    if-ge v2, v0, :cond_ff

    .line 485
    aget-object v0, p1, v2

    .line 486
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0xdf

    .line 488
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_e1

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_fd

    :cond_e1
    const/4 v4, 0x1

    .line 491
    .local v4, skip:Z
    :goto_e2
    if-nez v4, :cond_f9

    .line 494
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .end local v4           #skip:Z
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 496
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 484
    :cond_f9
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_c4

    .line 488
    .local v0, field:Ljava/lang/reflect/Field;
    :cond_fd
    const/4 v4, 0x0

    goto :goto_e2

    .line 506
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v3           #modifiers:I
    :cond_ff
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_114

    .line 508
    const-string p1, "<clinit>"

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 509
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 510
    const-string p1, "()V"

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 514
    :cond_114
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 515
    .local v0, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_124

    .line 518
    .end local v2           #i:I
    new-instance p1, Ljava/io/ObjectStreamClass$3;

    invoke-direct {p1}, Ljava/io/ObjectStreamClass$3;-><init>()V

    .line 526
    .local p1, constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 530
    .end local p1           #constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_124
    const/4 p1, 0x0

    .local p1, i:I
    move v2, p1

    .end local p1           #i:I
    .restart local v2       #i:I
    :goto_126
    array-length p1, v0

    if-ge v2, p1, :cond_156

    .line 531
    aget-object p1, v0, v2

    .line 532
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    and-int/lit16 v4, v3, 0xd3f

    .line 534
    .local v4, modifiers:I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    .line 535
    .local v3, isPrivate:Z
    if-nez v3, :cond_152

    .line 543
    const-string v3, "<init>"

    .end local v3           #isPrivate:Z
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 545
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v4           #modifiers:I
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 530
    :cond_152
    add-int/lit8 p1, v2, 0x1

    .end local v2           #i:I
    .local p1, i:I
    move v2, p1

    .end local p1           #i:I
    .restart local v2       #i:I
    goto :goto_126

    .line 552
    :cond_156
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 553
    .local v2, methods:[Ljava/lang/reflect/Method;
    array-length p0, v2

    .end local p0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 p1, 0x1

    if-le p0, p1, :cond_166

    .line 554
    new-instance p0, Ljava/io/ObjectStreamClass$4;

    invoke-direct {p0}, Ljava/io/ObjectStreamClass$4;-><init>()V

    .line 566
    .local p0, methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    invoke-static {v2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 570
    .end local p0           #methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    :cond_166
    const/4 p0, 0x0

    .end local v0           #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .local p0, i:I
    :goto_167
    array-length p1, v2

    if-ge p0, p1, :cond_1b2

    .line 571
    aget-object v0, v2, p0

    .line 572
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    and-int/lit16 v3, p1, 0xd3f

    .line 573
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p1

    .line 574
    .local p1, isPrivate:Z
    if-nez p1, :cond_195

    .line 577
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1           #isPrivate:Z
    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 579
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_195} :catch_198

    .line 570
    :cond_195
    add-int/lit8 p0, p0, 0x1

    goto :goto_167

    .line 583
    .end local v2           #methods:[Ljava/lang/reflect/Method;
    .end local v5           #output:Ljava/io/DataOutputStream;
    .end local p0           #i:I
    :catch_198
    move-exception p0

    .line 584
    .local p0, e:Ljava/io/IOException;
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    const-string v0, " computing SHA-1/SUID"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    .restart local v2       #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #output:Ljava/io/DataOutputStream;
    .local p0, i:I
    :cond_1b2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #i:I
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 589
    .local p0, hash:[B
    const/4 p1, 0x0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, p1, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide p0

    goto/16 :goto_38
.end method

.method private copyFieldAttributes()V
    .registers 7

    .prologue
    .line 843
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_8

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v5, :cond_9

    .line 859
    :cond_8
    return-void

    .line 847
    :cond_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 848
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    aget-object v3, v5, v1

    .line 849
    .local v3, loadField:Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    .line 850
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_18
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v2, v5, :cond_39

    .line 851
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v2

    .line 852
    .local v0, field:Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 853
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    .line 854
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 847
    .end local v0           #field:Ljava/io/ObjectStreamField;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 850
    .restart local v0       #field:Ljava/io/ObjectStreamField;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method private static createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v7, Ljava/io/ObjectStreamClass;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 239
    .local v7, result:Ljava/io/ObjectStreamClass;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 240
    .local v5, isArray:Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v8

    .line 241
    .local v8, serializable:Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    .line 243
    .local v1, externalizable:Z
    iput-boolean v8, v7, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 244
    iput-boolean v1, v7, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v7, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 249
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 250
    .local v9, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v9, :cond_2c

    .line 251
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 254
    :cond_2c
    const/4 v0, 0x0

    .line 257
    .local v0, declaredFields:[Ljava/lang/reflect/Field;
    if-nez v8, :cond_31

    if-eqz v1, :cond_42

    .line 258
    :cond_31
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v10

    if-nez v10, :cond_3d

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 259
    :cond_3d
    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 267
    :cond_42
    :goto_42
    if-eqz v8, :cond_89

    if-nez v5, :cond_89

    .line 268
    if-nez v0, :cond_4c

    .line 269
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 271
    :cond_4c
    invoke-virtual {v7, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 279
    :goto_4f
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 281
    .local v2, fields:[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_92

    .line 282
    array-length v10, v2

    new-array v6, v10, [Ljava/io/ObjectStreamField;

    .line 284
    .local v6, loadFields:[Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_59
    array-length v10, v2

    if-ge v4, v10, :cond_8f

    .line 285
    new-instance v10, Ljava/io/ObjectStreamField;

    aget-object v11, v2, v4

    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v12

    aget-object v13, v2, v4

    invoke-virtual {v13}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v6, v4

    .line 290
    aget-object v10, v6, v4

    invoke-virtual {v10}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 261
    .end local v2           #fields:[Ljava/io/ObjectStreamField;
    .end local v4           #i:I
    .end local v6           #loadFields:[Ljava/io/ObjectStreamField;
    :cond_7d
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 262
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    goto :goto_42

    .line 274
    :cond_89
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_4f

    .line 292
    .restart local v2       #fields:[Ljava/io/ObjectStreamField;
    .restart local v4       #i:I
    .restart local v6       #loadFields:[Ljava/io/ObjectStreamField;
    :cond_8f
    invoke-virtual {v7, v6}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 295
    .end local v4           #i:I
    .end local v6           #loadFields:[Ljava/io/ObjectStreamField;
    :cond_92
    const/4 v3, 0x0

    .line 296
    .local v3, flags:B
    if-eqz v1, :cond_d6

    .line 297
    or-int/lit8 v10, v3, 0x4

    int-to-byte v3, v10

    .line 298
    or-int/lit8 v10, v3, 0x8

    int-to-byte v3, v10

    .line 302
    :cond_9b
    :goto_9b
    const-string v10, "writeReplace"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 303
    const-string v10, "readResolve"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 304
    const-string v10, "writeObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 305
    const-string v10, "readObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 306
    const-string v10, "readObjectNoData"

    sget-object v11, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 307
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 308
    or-int/lit8 v10, v3, 0x1

    int-to-byte v3, v10

    .line 310
    :cond_d2
    invoke-virtual {v7, v3}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 312
    return-object v7

    .line 299
    :cond_d6
    if-eqz v8, :cond_9b

    .line 300
    or-int/lit8 v10, v3, 0x2

    int-to-byte v3, v10

    goto :goto_9b
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "signature"

    .prologue
    .line 601
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "signature"

    .prologue
    .line 613
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "serialPersistentFields"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 629
    .local v0, f:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 630
    .local v1, modifiers:I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 632
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_22} :catch_26

    if-ne v2, v3, :cond_27

    move-object v2, v0

    .line 639
    .end local v0           #f:Ljava/lang/reflect/Field;
    .end local v1           #modifiers:I
    :goto_25
    return-object v2

    .line 636
    :catch_26
    move-exception v2

    .line 639
    :cond_27
    const/4 v2, 0x0

    goto :goto_25
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .parameter
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1111
    move-object v1, p0

    .line 1112
    .local v1, search:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1113
    .local v0, method:Ljava/lang/reflect/Method;
    :goto_3
    if-eqz v1, :cond_22

    .line 1115
    const/4 v2, 0x0

    :try_start_6
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1116
    if-eq v1, p0, :cond_16

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1d

    .line 1118
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1a} :catch_1c

    move-object v2, v0

    .line 1125
    :goto_1b
    return-object v2

    .line 1121
    :catch_1c
    move-exception v2

    .line 1123
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    :cond_22
    move-object v2, v3

    .line 1125
    goto :goto_1b
.end method

.method static findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, param:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1142
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1d

    .line 1143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-object v1, v0

    .line 1149
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1b
    return-object v1

    .line 1146
    :catch_1c
    move-exception v1

    .line 1149
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static getCache()Ljava/util/WeakHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    sget-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 1089
    .local v0, tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    if-nez v0, :cond_16

    .line 1090
    new-instance v0, Ljava/io/ObjectStreamClass$5;

    .end local v0           #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    invoke-direct {v0}, Ljava/io/ObjectStreamClass$5;-><init>()V

    .line 1095
    .restart local v0       #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    .line 1097
    :cond_16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    check-cast v0, Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private static native getConstructorId(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, c1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, c2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 742
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, nameC1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, nameC2:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 745
    .local v0, indexDotC1:I
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 746
    .local v1, indexDotC2:I
    if-eq v0, v1, :cond_17

    move v4, v5

    .line 752
    :goto_16
    return v4

    .line 749
    :cond_17
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1c

    .line 750
    const/4 v4, 0x1

    goto :goto_16

    .line 752
    :cond_1c
    invoke-virtual {v2, v5, v3, v5, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_16
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPrimitiveType(C)Z
    .registers 2
    .parameter "typecode"

    .prologue
    .line 974
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_a

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1042
    .local v0, osc:Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;

    move-result-object v1

    .line 1071
    .local v1, tlc:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;"
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectStreamClass;

    .line 1072
    .local v0, cachedValue:Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_13

    .line 1073
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1074
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_13
    return-object v0
.end method

.method private makeHierarchy()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move-object v0, p0

    .local v0, osc:Ljava/io/ObjectStreamClass;
    :goto_6
    if-eqz v0, :cond_11

    .line 830
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 829
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_6

    .line 832
    :cond_11
    return-object v1
.end method

.method private static native newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1283
    :cond_8
    const/4 v0, 0x1

    .line 1294
    :goto_9
    return v0

    .line 1285
    :cond_a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1286
    :cond_12
    const/4 v0, 0x2

    goto :goto_9

    .line 1288
    :cond_14
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1289
    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    .line 1291
    :cond_1e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_26

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    .line 1292
    :cond_26
    const/16 v0, 0x8

    goto :goto_9

    .line 1294
    :cond_29
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .local p1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 665
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    if-eqz v9, :cond_9

    .line 666
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 727
    :goto_8
    return-object v9

    .line 672
    :cond_9
    move-object v2, p1

    .line 676
    .local v2, constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-byte v9, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_20

    move v8, v11

    .line 677
    .local v8, wasSerializable:Z
    :goto_11
    if-eqz v8, :cond_22

    .line 681
    :goto_13
    if-eqz v2, :cond_22

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 682
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_13

    .end local v8           #wasSerializable:Z
    :cond_20
    move v8, v10

    .line 676
    goto :goto_11

    .line 687
    .restart local v8       #wasSerializable:Z
    :cond_22
    const/4 v1, 0x0

    .line 688
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_2b

    .line 690
    :try_start_25
    sget-object v9, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_2a} :catch_8d

    move-result-object v1

    .line 696
    :cond_2b
    :goto_2b
    if-nez v1, :cond_3f

    .line 697
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 698
    .local v0, className:Ljava/lang/String;
    :goto_34
    new-instance v9, Ljava/io/InvalidClassException;

    const-string v10, "IllegalAccessException"

    invoke-direct {v9, v0, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 697
    .end local v0           #className:Ljava/lang/String;
    :cond_3c
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_34

    .line 701
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 702
    .local v3, constructorModifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    .line 703
    .local v6, isPublic:Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    .line 704
    .local v5, isProtected:Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    .line 708
    .local v4, isPrivate:Z
    iget-byte v9, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_68

    move v7, v11

    .line 709
    .local v7, wasExternalizable:Z
    :goto_56
    if-nez v4, :cond_5c

    if-eqz v7, :cond_6a

    if-nez v6, :cond_6a

    .line 710
    :cond_5c
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .end local v7           #wasExternalizable:Z
    :cond_68
    move v7, v10

    .line 708
    goto :goto_56

    .line 717
    .restart local v7       #wasExternalizable:Z
    :cond_6a
    if-nez v6, :cond_80

    if-nez v5, :cond_80

    .line 720
    invoke-direct {p0, v2, p1}, Ljava/io/ObjectStreamClass;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_80

    .line 721
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 725
    :cond_80
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    .line 726
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->getConstructorId(Ljava/lang/Class;)I

    move-result v9

    iput v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    move-object v9, v2

    .line 727
    goto/16 :goto_8

    .line 691
    .end local v3           #constructorModifiers:I
    .end local v4           #isPrivate:Z
    .end local v5           #isProtected:Z
    .end local v6           #isPublic:Z
    .end local v7           #wasExternalizable:Z
    :catch_8d
    move-exception v9

    goto :goto_2b
.end method

.method private resolveProperties()V
    .registers 3

    .prologue
    .line 997
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    if-eqz v1, :cond_5

    .line 1008
    :goto_4
    return-void

    .line 1001
    :cond_5
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1002
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 1003
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 1004
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    .line 1005
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    .line 1007
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    goto :goto_4
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .registers 23
    .parameter "declaredFields"

    .prologue
    .line 325
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 328
    .local v7, f:Ljava/lang/reflect/Field;
    if-nez v7, :cond_5b

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 332
    .local v18, useReflectFields:Z
    :goto_e
    const/4 v3, 0x0

    .line 333
    .local v3, _fields:[Ljava/io/ObjectStreamField;
    if-nez v18, :cond_6c

    .line 336
    new-instance v19, Lorg/apache/harmony/luni/util/PriviAction;

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static/range {v19 .. v19}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 339
    const/16 v19, 0x0

    :try_start_1e
    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/io/ObjectStreamField;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v3, v0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2c} :catch_60

    .line 364
    :goto_2c
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 366
    const/4 v15, 0x0

    .local v15, primOffset:I
    const/4 v13, 0x0

    .line 367
    .local v13, objectOffset:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_32
    move-object v0, v3

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_d8

    .line 368
    aget-object v19, v3, v9

    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v17

    .line 369
    .local v17, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_cd

    .line 370
    aget-object v19, v3, v9

    move v0, v15

    move-object/from16 v1, v19

    iput v0, v1, Ljava/io/ObjectStreamField;->offset:I

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    move-result v19

    add-int v15, v15, v19

    .line 367
    :goto_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 328
    .end local v3           #_fields:[Ljava/io/ObjectStreamField;
    .end local v9           #i:I
    .end local v13           #objectOffset:I
    .end local v15           #primOffset:I
    .end local v17           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #useReflectFields:Z
    .restart local p1
    :cond_5b
    const/16 v19, 0x0

    move/from16 v18, v19

    goto :goto_e

    .line 340
    .end local p1
    .restart local v3       #_fields:[Ljava/io/ObjectStreamField;
    .restart local v18       #useReflectFields:Z
    :catch_60
    move-exception v19

    move-object/from16 v6, v19

    .line 341
    .local v6, ex:Ljava/lang/IllegalAccessException;
    new-instance v19, Ljava/lang/AssertionError;

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19

    .line 345
    .end local v6           #ex:Ljava/lang/IllegalAccessException;
    .restart local p1
    :cond_6c
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .local v16, serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    move-object/from16 v4, p1

    .local v4, arr$:[Ljava/lang/reflect/Field;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_7e
    if-ge v10, v11, :cond_ad

    aget-object v5, v4, v10

    .line 349
    .local v5, declaredField:Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 350
    .local v12, modifiers:I
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v19

    if-nez v19, :cond_aa

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v19

    if-nez v19, :cond_aa

    .line 351
    new-instance v8, Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 353
    .local v8, field:Ljava/io/ObjectStreamField;
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v8           #field:Ljava/io/ObjectStreamField;
    :cond_aa
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 357
    .end local v5           #declaredField:Ljava/lang/reflect/Field;
    .end local v12           #modifiers:I
    :cond_ad
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_b7

    .line 358
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto/16 :goto_2c

    .line 361
    :cond_b7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #_fields:[Ljava/io/ObjectStreamField;
    check-cast v3, [Ljava/io/ObjectStreamField;

    .restart local v3       #_fields:[Ljava/io/ObjectStreamField;
    goto/16 :goto_2c

    .line 373
    .end local v4           #arr$:[Ljava/lang/reflect/Field;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v16           #serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    .end local p1
    .restart local v9       #i:I
    .restart local v13       #objectOffset:I
    .restart local v15       #primOffset:I
    .restart local v17       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_cd
    aget-object v19, v3, v9

    add-int/lit8 v14, v13, 0x1

    .end local v13           #objectOffset:I
    .local v14, objectOffset:I
    move v0, v13

    move-object/from16 v1, v19

    iput v0, v1, Ljava/io/ObjectStreamField;->offset:I

    move v13, v14

    .end local v14           #objectOffset:I
    .restart local v13       #objectOffset:I
    goto :goto_58

    .line 376
    .end local v17           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_d8
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 377
    return-void
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .registers 3

    .prologue
    .line 793
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v1, :cond_1d

    .line 794
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 795
    .local v0, forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_20

    .line 796
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 802
    .end local v0           #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    :goto_1d
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 799
    .restart local v0       #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_20
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_1d
.end method

.method public forClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    return-object v0
.end method

.method getConstructor()J
    .registers 3

    .prologue
    .line 187
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-wide v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .registers 6
    .parameter "name"

    .prologue
    .line 775
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 776
    .local v0, allFields:[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 777
    aget-object v1, v0, v2

    .line 778
    .local v1, f:Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v1

    .line 782
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :goto_15
    return-object v3

    .line 776
    .restart local v1       #f:Ljava/io/ObjectStreamField;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 782
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_19
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    .line 814
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/ObjectStreamField;

    move-object v0, p0

    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/ObjectStreamField;

    move-object v0, p0

    goto :goto_12
.end method

.method getFlags()B
    .registers 2

    .prologue
    .line 891
    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    return v0
.end method

.method getHierarchy()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 821
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez v0, :cond_a

    .line 822
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->makeHierarchy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    .line 824
    :cond_a
    return-object v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getMethodReadObject()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 1181
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadObjectNoData()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 1189
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadResolve()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteObject()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteReplace()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-object v0
.end method

.method getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;
    .registers 7
    .parameter "osf"

    .prologue
    .line 191
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v3

    .line 192
    :try_start_3
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 193
    .local v2, field:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_10

    .line 194
    monitor-exit v3

    move-object v3, v2

    .line 208
    .end local p0
    :goto_f
    return-object v3

    .line 196
    .restart local p0
    :cond_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_34

    .line 199
    :try_start_11
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 200
    .local v0, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_24} :catch_3a

    .line 203
    :try_start_24
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_37

    .line 205
    :try_start_2a
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_32
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a .. :try_end_32} :catch_3a

    move-object v3, p0

    goto :goto_f

    .line 196
    .end local v0           #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    .restart local p0
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v4

    .line 204
    .restart local v0       #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #field:Ljava/lang/reflect/Field;
    :catchall_37
    move-exception v4

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v4
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 206
    .end local v0           #declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p0
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 208
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public getSerialVersionUID()J
    .registers 3

    .prologue
    .line 919
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasMethodReadObject()Z
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasMethodReadObjectNoData()Z
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasMethodReadResolve()Z
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasMethodWriteObject()Z
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasMethodWriteReplace()Z
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method initPrivateFields(Ljava/io/ObjectStreamClass;)V
    .registers 3
    .parameter "desc"

    .prologue
    .line 1193
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    .line 1194
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    .line 1195
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    .line 1196
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    .line 1197
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    .line 1198
    return-void
.end method

.method isEnum()Z
    .registers 2

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1027
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .registers 2

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1017
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    return v0
.end method

.method isProxy()Z
    .registers 2

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1022
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .registers 2

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    .line 1012
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    return v0
.end method

.method newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 659
    .local p1, instantiationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamClass;->resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 660
    iget v0, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    .line 1208
    return-void
.end method

.method setConstructor(J)V
    .registers 3
    .parameter "newConstructor"

    .prologue
    .line 183
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->constructor:J

    .line 184
    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 1219
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 1220
    return-void
.end method

.method setFlags(B)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1245
    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    .line 1246
    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 1231
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    .line 1232
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .parameter "newName"

    .prologue
    .line 1256
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    .line 1257
    return-void
.end method

.method setSerialVersionUID(J)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1266
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    .line 1267
    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1278
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    .line 1279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
