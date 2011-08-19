.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$InputValidationDesc;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;

.field private static final bootstrapLoader:Ljava/lang/ClassLoader;

.field private static final systemLoader:Ljava/lang/ClassLoader;


# instance fields
.field private cachedSuperclasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:I

.field private emptyStream:Ljava/io/InputStream;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private nextHandle:I

.field private objectsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    .line 115
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    .line 2124
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 81
    iget-object v1, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 108
    iput-boolean v3, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 361
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 362
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_28

    .line 363
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 367
    :cond_28
    iput-boolean v3, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 386
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    new-instance v4, Ljava/io/ByteArrayInputStream;

    sget-object v5, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 81
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 108
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 111
    const/4 v4, -0x1

    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1356
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 388
    .local v0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Ljava/io/ObjectInputStream;

    .line 389
    .local v3, thisClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 390
    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_42

    if-eq v0, v3, :cond_42

    .line 391
    new-instance v4, Ljava/io/ObjectInputStream$1;

    invoke-direct {v4, p0, v0, v3}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/io/ObjectInputStream;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 413
    .local v1, mustCheck:Z
    if-eqz v1, :cond_42

    .line 414
    sget-object v4, Ljava/io/ObjectStreamConstants;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 418
    .end local v1           #mustCheck:Z
    :cond_42
    instance-of v4, p1, Ljava/io/DataInputStream;

    if-eqz v4, :cond_67

    check-cast p1, Ljava/io/DataInputStream;

    .end local p1
    move-object v4, p1

    :goto_49
    iput-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    .line 420
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    .line 421
    iput-boolean v6, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 422
    iput-boolean v6, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 423
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 424
    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    .line 427
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 429
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 430
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 431
    return-void

    .line 418
    .restart local p1
    :cond_67
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_49
.end method

.method private cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 1361
    .local v0, nextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    if-eqz v0, :cond_14

    .line 1362
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1363
    .local v2, testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_12

    .line 1364
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1366
    :cond_12
    move-object v0, v2

    .line 1367
    goto :goto_6

    .line 1368
    .end local v2           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_14
    iget-object v3, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    return-object v1
.end method

.method private checkReadPrimitiveTypes()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_12

    .line 479
    :cond_e
    :goto_e
    return-void

    .line 473
    .local v0, next:I
    :pswitch_f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 458
    .end local v0           #next:I
    :cond_12
    const/4 v0, 0x0

    .line 459
    .restart local v0       #next:I
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v1, :cond_26

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 465
    :goto_1a
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    packed-switch v1, :pswitch_data_48

    .line 476
    :pswitch_1f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 477
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_e

    .line 462
    :cond_26
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 463
    int-to-byte v1, v0

    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_1a

    .line 467
    :pswitch_30
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_e

    .line 470
    :pswitch_3c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_e

    .line 465
    :pswitch_data_48
    .packed-switch 0x77
        :pswitch_30
        :pswitch_1f
        :pswitch_f
        :pswitch_3c
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .registers 3
    .parameter "desc"
    .parameter "superDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2497
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2498
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0

    .line 2500
    :cond_c
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 2501
    return-void
.end method

.method private corruptStream(B)Ljava/io/StreamCorruptedException;
    .registers 5
    .parameter "tc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private discardData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v2, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 723
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 724
    .local v0, resolve:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 726
    :goto_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v1

    .line 727
    .local v1, tc:B
    const/16 v2, 0x78

    if-ne v1, v2, :cond_14

    .line 728
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 729
    return-void

    .line 731
    :cond_14
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    goto :goto_9
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I
    .registers 10
    .parameter
    .parameter
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, classList:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    move v2, p3

    .local v2, i:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, end:I
    :goto_5
    if-ge v2, v0, :cond_3e

    .line 1374
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    .line 1375
    .local v3, objCl:Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, forName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1378
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move v4, v2

    .line 1388
    .end local v1           #forName:Ljava/lang/String;
    .end local v3           #objCl:Ljava/io/ObjectStreamClass;
    :goto_2e
    return v4

    .line 1383
    .restart local v1       #forName:Ljava/lang/String;
    .restart local v3       #objCl:Ljava/io/ObjectStreamClass;
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move v4, v2

    .line 1384
    goto :goto_2e

    .line 1373
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1388
    .end local v1           #forName:Ljava/lang/String;
    .end local v3           #objCl:Ljava/io/ObjectStreamClass;
    :cond_3e
    const/4 v4, -0x1

    goto :goto_2e
.end method

.method private static formatClassSig(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "classSig"

    .prologue
    .line 1021
    const/4 v1, 0x0

    .line 1022
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1024
    .local v0, end:I
    if-gtz v0, :cond_9

    move-object v2, p0

    .line 1039
    :goto_8
    return-object v2

    .line 1029
    :cond_9
    :goto_9
    const-string v2, "[L"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_21

    .line 1030
    add-int/lit8 v1, v1, 0x2

    .line 1031
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1034
    :cond_21
    if-lez v1, :cond_2c

    .line 1035
    add-int/lit8 v1, v1, -0x2

    .line 1036
    add-int/lit8 v0, v0, 0x1

    .line 1037
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_2c
    move-object v2, p0

    .line 1039
    goto :goto_8
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fullName"

    .prologue
    .line 2486
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2488
    .local v0, k:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_13

    :cond_11
    move-object v1, p0

    .line 2491
    :goto_12
    return-object v1

    :cond_13
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private static getClosestUserClassLoader()Ljava/lang/ClassLoader;
    .registers 8

    .prologue
    .line 2133
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v5

    .line 2134
    .local v5, stackClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_20

    aget-object v4, v0, v1

    .line 2135
    .local v4, stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2136
    .local v3, loader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1d

    sget-object v6, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_1d

    sget-object v6, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_1d

    move-object v6, v3

    .line 2141
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1c
    return-object v6

    .line 2134
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    .restart local v4       #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2141
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_20
    const/4 v6, 0x0

    goto :goto_1c
.end method

.method private missingClassDescriptor()Ljava/io/InvalidClassException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1982
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Read null attempting to read class descriptor for object"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextHandle()I
    .registers 3

    .prologue
    .line 555
    iget v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    return v0
.end method

.method private nextTC()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v0, :cond_a

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 577
    :goto_7
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return v0

    .line 575
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_7
.end method

.method private pushbackTC()V
    .registers 2

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 585
    return-void
.end method

.method private readBlockData()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v0, v1, [B

    .line 649
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 650
    return-object v0
.end method

.method private readBlockDataLong()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 665
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 666
    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 749
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 750
    .local v2, tc:B
    sparse-switch v2, :sswitch_data_3a

    .line 765
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 752
    :sswitch_d
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 763
    .end local p0
    :goto_11
    return-object v3

    .line 754
    .restart local p0
    :sswitch_12
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    move-result-object v0

    .line 755
    .local v0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 756
    .local v1, streamClass:Ljava/io/ObjectStreamClass;
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 757
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 758
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    move-object v3, v1

    .line 759
    goto :goto_11

    .line 761
    .end local v0           #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #streamClass:Ljava/io/ObjectStreamClass;
    :sswitch_2f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/ObjectStreamClass;

    move-object v3, p0

    goto :goto_11

    .line 763
    .restart local p0
    :sswitch_37
    const/4 v3, 0x0

    goto :goto_11

    .line 750
    nop

    :sswitch_data_3a
    .sparse-switch
        0x70 -> :sswitch_37
        0x71 -> :sswitch_2f
        0x72 -> :sswitch_d
        0x7d -> :sswitch_12
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .registers 5
    .parameter "tc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 790
    packed-switch p1, :pswitch_data_4a

    .line 818
    :pswitch_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 792
    :pswitch_a
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v1

    .line 816
    :goto_e
    return-object v1

    .line 794
    :pswitch_f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v1

    goto :goto_e

    .line 796
    :pswitch_14
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_e

    .line 798
    :pswitch_19
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    goto :goto_e

    .line 800
    :pswitch_1e
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 802
    :pswitch_23
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 804
    :pswitch_28
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 806
    :pswitch_2d
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 808
    :pswitch_32
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :pswitch_37
    move-object v1, v2

    .line 810
    goto :goto_e

    .line 812
    :pswitch_39
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v0

    .line 813
    .local v0, exc:Ljava/lang/Exception;
    new-instance v1, Ljava/io/WriteAbortedException;

    const-string v2, "Read an exception"

    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 815
    .end local v0           #exc:Ljava/lang/Exception;
    :pswitch_45
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    move-object v1, v2

    .line 816
    goto :goto_e

    .line 790
    :pswitch_data_4a
    .packed-switch 0x70
        :pswitch_37
        :pswitch_32
        :pswitch_19
        :pswitch_23
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
        :pswitch_5
        :pswitch_45
        :pswitch_f
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .registers 9
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1684
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1685
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    .line 1688
    .local v2, newHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v4

    .line 1689
    .local v4, tc:B
    packed-switch v4, :pswitch_data_3a

    .line 1701
    :pswitch_f
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v5

    throw v5

    .line 1691
    :pswitch_14
    if-eqz p1, :cond_21

    .line 1692
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 1693
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v6, "Unshared read of back reference"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1695
    :cond_21
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1704
    .local v1, name:Ljava/lang/String;
    :goto_27
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 1705
    .local v3, result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-direct {p0, v3, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1707
    return-object v3

    .line 1698
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :pswitch_33
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1699
    .restart local v1       #name:Ljava/lang/String;
    goto :goto_27

    .line 1689
    :pswitch_data_3a
    .packed-switch 0x71
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_33
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1636
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v0

    .line 1637
    .local v0, tc:B
    packed-switch v0, :pswitch_data_1c

    .line 1645
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 1639
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1643
    .end local p0
    :goto_10
    return-object v1

    .line 1641
    .restart local p0
    :pswitch_11
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/ObjectStreamClass;

    move-object v1, p0

    goto :goto_10

    .line 1643
    .restart local p0
    :pswitch_19
    const/4 v1, 0x0

    goto :goto_10

    .line 1637
    nop

    :pswitch_data_1c
    .packed-switch 0x70
        :pswitch_19
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1651
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1652
    iget v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1653
    .local v1, oldHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v4

    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1654
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1655
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    iget v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1656
    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1657
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1658
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1660
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1661
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1662
    .local v2, superClass:Ljava/io/ObjectStreamClass;
    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1664
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_3f

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_66

    .line 1665
    :cond_3f
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1668
    :cond_66
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v3

    .line 1670
    .local v3, tc:B
    const/16 v4, 0x78

    if-ne v3, v4, :cond_76

    .line 1672
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 1677
    :goto_75
    return-object v0

    .line 1675
    :cond_76
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_75
.end method

.method private readException()Ljava/lang/Exception;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 953
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 957
    .local v0, exc:Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 958
    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .registers 12
    .parameter "cDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 980
    .local v6, numFields:S
    new-array v3, v6, [Ljava/io/ObjectStreamField;

    .line 984
    .local v3, fields:[Ljava/io/ObjectStreamField;
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 987
    const/4 v4, 0x0

    .local v4, i:S
    :goto_c
    if-ge v4, v6, :cond_46

    .line 988
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    int-to-char v8, v9

    .line 989
    .local v8, typecode:C
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, fieldName:Ljava/lang/String;
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    move-result v5

    .line 992
    .local v5, isPrimType:Z
    if-eqz v5, :cond_34

    .line 993
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, classSig:Ljava/lang/String;
    :goto_25
    invoke-static {v0}, Ljava/io/ObjectInputStream;->formatClassSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    new-instance v1, Ljava/io/ObjectStreamField;

    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .local v1, f:Ljava/io/ObjectStreamField;
    aput-object v1, v3, v4

    .line 987
    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    goto :goto_c

    .line 1001
    .end local v0           #classSig:Ljava/lang/String;
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_34
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 1003
    .local v7, old:Z
    const/4 v9, 0x0

    :try_start_37
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 1004
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_42

    .line 1006
    .restart local v0       #classSig:Ljava/lang/String;
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    goto :goto_25

    .end local v0           #classSig:Ljava/lang/String;
    :catchall_42
    move-exception v9

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    throw v9

    .line 1014
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v5           #isPrimType:Z
    .end local v7           #old:Z
    .end local v8           #typecode:C
    :cond_46
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .registers 11
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v5

    .line 1090
    .local v5, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_b5

    aget-object v2, v0, v3

    .line 1091
    .local v2, element:Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v7, 0x0

    iput-boolean v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 1092
    iget-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1093
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2b

    .line 1094
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 1090
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1095
    :cond_2b
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3c

    .line 1096
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1097
    :cond_3c
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4d

    .line 1098
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1099
    :cond_4d
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5e

    .line 1100
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1101
    :cond_5e
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6f

    .line 1102
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1103
    :cond_6f
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_80

    .line 1104
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1105
    :cond_80
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_91

    .line 1106
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1107
    :cond_91
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_a2

    .line 1108
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1112
    :cond_a2
    :try_start_a2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a2 .. :try_end_a8} :catch_a9

    goto :goto_28

    .line 1113
    :catch_a9
    move-exception v7

    move-object v1, v7

    .line 1116
    .local v1, cnf:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1120
    .end local v1           #cnf:Ljava/lang/ClassNotFoundException;
    .end local v2           #element:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b5
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 36
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v15

    .line 1153
    .local v15, fields:[Ljava/io/ObjectStreamField;
    if-nez v15, :cond_a

    sget-object v30, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    move-object/from16 v15, v30

    .line 1154
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    .line 1155
    .local v9, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v9, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v30, v0

    if-eqz v30, :cond_22

    .line 1156
    new-instance v30, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1159
    :cond_22
    move-object v4, v15

    .local v4, arr$:[Ljava/io/ObjectStreamField;
    move-object v0, v4

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_29
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1e0

    aget-object v12, v4, v17

    .line 1160
    .local v12, fieldDesc:Ljava/io/ObjectStreamField;
    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1164
    .local v11, field:Ljava/lang/reflect/Field;
    :try_start_38
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v26

    .line 1165
    .local v26, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v30, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5a

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1167
    .local v5, b:B
    if-eqz v11, :cond_57

    .line 1168
    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    .line 1159
    .end local v5           #b:B
    .end local v26           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_57
    :goto_57
    add-int/lit8 v17, v17, 0x1

    goto :goto_29

    .line 1170
    .restart local v26       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5a
    sget-object v30, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_83

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readChar()C

    move-result v6

    .line 1172
    .local v6, c:C
    if-eqz v11, :cond_57

    .line 1173
    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_75} :catch_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_75} :catch_9f

    goto :goto_57

    .line 1237
    .end local v6           #c:C
    .end local v26           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_76
    move-exception v30

    move-object/from16 v18, v30

    .line 1239
    .local v18, iae:Ljava/lang/IllegalAccessException;
    new-instance v30, Ljava/lang/AssertionError;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v30

    .line 1175
    .end local v18           #iae:Ljava/lang/IllegalAccessException;
    .restart local v26       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_83
    :try_start_83
    sget-object v30, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_a1

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    .line 1177
    .local v7, d:D
    if-eqz v11, :cond_57

    .line 1178
    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_57

    .line 1240
    .end local v7           #d:D
    .end local v26           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_9f
    move-exception v30

    goto :goto_57

    .line 1180
    .restart local v26       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a1
    sget-object v30, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_bd

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readFloat()F

    move-result v10

    .line 1182
    .local v10, f:F
    if-eqz v11, :cond_57

    .line 1183
    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_57

    .line 1185
    .end local v10           #f:F
    :cond_bd
    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_db

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1187
    .local v16, i:I
    if-eqz v11, :cond_57

    .line 1188
    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_57

    .line 1190
    .end local v16           #i:I
    :cond_db
    sget-object v30, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_f9

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v19

    .line 1192
    .local v19, j:J
    if-eqz v11, :cond_57

    .line 1193
    move-object v0, v11

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_57

    .line 1195
    .end local v19           #j:J
    :cond_f9
    sget-object v30, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_117

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readShort()S

    move-result v23

    .line 1197
    .local v23, s:S
    if-eqz v11, :cond_57

    .line 1198
    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_57

    .line 1200
    .end local v23           #s:S
    :cond_117
    sget-object v30, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_135

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v29

    .line 1202
    .local v29, z:Z
    if-eqz v11, :cond_57

    .line 1203
    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_57

    .line 1206
    .end local v29           #z:Z
    :cond_135
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1207
    .local v13, fieldName:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1208
    .local v24, setBack:Z
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v22

    .line 1209
    .local v22, localFieldDesc:Ljava/io/ObjectStreamField;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v30, v0

    if-eqz v30, :cond_156

    if-nez v12, :cond_156

    .line 1210
    const/16 v24, 0x1

    .line 1211
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 1213
    :cond_156
    if-eqz v12, :cond_1c8

    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v30

    if-eqz v30, :cond_1c8

    const/16 v30, 0x1

    move/from16 v27, v30

    .line 1214
    .local v27, unshared:Z
    :goto_162
    if-eqz v27, :cond_1cd

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v25, v30

    .line 1215
    .local v25, toSet:Ljava/lang/Object;
    :goto_16a
    if-eqz v24, :cond_174

    .line 1216
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 1218
    :cond_174
    if-eqz v12, :cond_57

    .line 1219
    if-eqz v25, :cond_57

    .line 1225
    invoke-virtual/range {v22 .. v22}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v14

    .line 1227
    .local v14, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    .line 1228
    .local v28, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v30

    if-nez v30, :cond_1d4

    .line 1229
    new-instance v30, Ljava/lang/ClassCastException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " - "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " not compatible with "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1213
    .end local v14           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v25           #toSet:Ljava/lang/Object;
    .end local v27           #unshared:Z
    .end local v28           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1c8
    const/16 v30, 0x0

    move/from16 v27, v30

    goto :goto_162

    .line 1214
    .restart local v27       #unshared:Z
    :cond_1cd
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v25, v30

    goto :goto_16a

    .line 1231
    .restart local v14       #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v25       #toSet:Ljava/lang/Object;
    .restart local v28       #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d4
    if-eqz v11, :cond_57

    .line 1232
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1de
    .catch Ljava/lang/IllegalAccessException; {:try_start_83 .. :try_end_1de} :catch_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_1de} :catch_9f

    goto/16 :goto_57

    .line 1243
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v12           #fieldDesc:Ljava/io/ObjectStreamField;
    .end local v13           #fieldName:Ljava/lang/String;
    .end local v14           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v22           #localFieldDesc:Ljava/io/ObjectStreamField;
    .end local v24           #setBack:Z
    .end local v25           #toSet:Ljava/lang/Object;
    .end local v26           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v27           #unshared:Z
    .end local v28           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1e0
    return-void
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 15
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1324
    if-nez p1, :cond_c

    iget-boolean v10, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v10, :cond_c

    .line 1325
    new-instance v10, Ljava/io/NotActiveException;

    invoke-direct {v10}, Ljava/io/NotActiveException;-><init>()V

    throw v10

    .line 1328
    :cond_c
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v7

    .line 1329
    .local v7, streamClassList:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez p1, :cond_27

    .line 1330
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/ObjectStreamClass;

    .line 1331
    .local v6, objectStreamClass:Ljava/io/ObjectStreamClass;
    const/4 v10, 0x0

    invoke-direct {p0, v10, v6}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_16

    .line 1334
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #objectStreamClass:Ljava/io/ObjectStreamClass;
    :cond_27
    iget-object v10, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1335
    .local v9, superclasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v9, :cond_3d

    .line 1336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 1339
    :cond_3d
    const/4 v5, 0x0

    .line 1340
    .local v5, lastIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, end:I
    :goto_43
    if-ge v1, v0, :cond_6e

    .line 1341
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 1342
    .local v8, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v8, v7, v5}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I

    move-result v3

    .line 1343
    .local v3, index:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_5c

    .line 1344
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-direct {p0, p1, v8, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V

    .line 1340
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1347
    :cond_5c
    move v4, v5

    .local v4, j:I
    :goto_5d
    if-gt v4, v3, :cond_6b

    .line 1348
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1347
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1350
    :cond_6b
    add-int/lit8 v5, v3, 0x1

    goto :goto_59

    .line 1354
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #index:I
    .end local v4           #j:I
    .end local v5           #lastIndex:I
    .end local v8           #superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #superclasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_6e
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .registers 25
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 1527
    .local v8, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v8, :cond_b

    .line 1528
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v20

    throw v20

    .line 1531
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v15

    .line 1534
    .local v15, newHandle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 1535
    .local v19, size:I
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1536
    .local v4, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 1537
    .local v9, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v17

    .line 1539
    .local v17, result:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1545
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_1a4

    .line 1546
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5f

    .line 1547
    move-object/from16 v0, v17

    check-cast v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v13, v0

    .line 1548
    .local v13, intArray:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4b
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    aput v20, v13, v12

    .line 1548
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    .line 1551
    .end local v12           #i:I
    .end local v13           #intArray:[I
    :cond_5f
    sget-object v20, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a0

    .line 1552
    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v6, v0

    .line 1553
    .local v6, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1598
    .end local v6           #byteArray:[B
    :cond_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9f

    .line 1599
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1600
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1602
    :cond_9f
    return-object v17

    .line 1554
    :cond_a0
    sget-object v20, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c7

    .line 1555
    move-object/from16 v0, v17

    check-cast v0, [C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [C

    move-object v7, v0

    .line 1556
    .local v7, charArray:[C
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_b3
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readChar()C

    move-result v20

    aput-char v20, v7, v12

    .line 1556
    add-int/lit8 v12, v12, 0x1

    goto :goto_b3

    .line 1559
    .end local v7           #charArray:[C
    .end local v12           #i:I
    :cond_c7
    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_eb

    .line 1560
    move-object/from16 v0, v17

    check-cast v0, [S

    move-object/from16 v18, v0

    check-cast v18, [S

    .line 1561
    .local v18, shortArray:[S
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_d7
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    aput-short v20, v18, v12

    .line 1561
    add-int/lit8 v12, v12, 0x1

    goto :goto_d7

    .line 1564
    .end local v12           #i:I
    .end local v18           #shortArray:[S
    :cond_eb
    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_112

    .line 1565
    move-object/from16 v0, v17

    check-cast v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [Z

    move-object v5, v0

    .line 1566
    .local v5, booleanArray:[Z
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_fe
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v20

    aput-boolean v20, v5, v12

    .line 1566
    add-int/lit8 v12, v12, 0x1

    goto :goto_fe

    .line 1569
    .end local v5           #booleanArray:[Z
    .end local v12           #i:I
    :cond_112
    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_139

    .line 1570
    move-object/from16 v0, v17

    check-cast v0, [J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [J

    move-object v14, v0

    .line 1571
    .local v14, longArray:[J
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_125
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    aput-wide v20, v14, v12

    .line 1571
    add-int/lit8 v12, v12, 0x1

    goto :goto_125

    .line 1574
    .end local v12           #i:I
    .end local v14           #longArray:[J
    :cond_139
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_160

    .line 1575
    move-object/from16 v0, v17

    check-cast v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [F

    move-object v11, v0

    .line 1576
    .local v11, floatArray:[F
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_14c
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readFloat()F

    move-result v20

    aput v20, v11, v12

    .line 1576
    add-int/lit8 v12, v12, 0x1

    goto :goto_14c

    .line 1579
    .end local v11           #floatArray:[F
    .end local v12           #i:I
    :cond_160
    sget-object v20, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_187

    .line 1580
    move-object/from16 v0, v17

    check-cast v0, [D

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [D

    move-object v10, v0

    .line 1581
    .local v10, doubleArray:[D
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_173
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v10, v12

    .line 1581
    add-int/lit8 v12, v12, 0x1

    goto :goto_173

    .line 1585
    .end local v10           #doubleArray:[D
    .end local v12           #i:I
    :cond_187
    new-instance v20, Ljava/lang/ClassNotFoundException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Wrong base type in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1589
    :cond_1a4
    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1590
    .local v16, objectArray:[Ljava/lang/Object;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1b1
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 1595
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v16, v12

    .line 1590
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b1
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .registers 5
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1620
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_b

    .line 1621
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v2

    throw v2

    .line 1623
    :cond_b
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1624
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_18

    .line 1625
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1627
    :cond_18
    return-object v1
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 12
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1729
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1730
    iget v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1731
    .local v8, oldHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v9

    iput v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1732
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v7

    .line 1733
    .local v7, newClassDesc:Ljava/io/ObjectStreamClass;
    iget v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0, v7, v9, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1734
    iput v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1735
    iget-object v9, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1739
    :try_start_1b
    invoke-virtual {p0, v7}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1741
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifyAndInit(Ljava/io/ObjectStreamClass;)V
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_25} :catch_44

    .line 1751
    :cond_25
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 1752
    .local v3, fields:[Ljava/io/ObjectStreamField;
    if-nez v3, :cond_2e

    sget-object v9, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    move-object v3, v9

    .line 1753
    :cond_2e
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_4b

    iget-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    move-object v6, v9

    .line 1755
    .local v6, loader:Ljava/lang/ClassLoader;
    :goto_37
    move-object v0, v3

    .local v0, arr$:[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3a
    if-ge v4, v5, :cond_55

    aget-object v2, v0, v4

    .line 1756
    .local v2, element:Ljava/io/ObjectStreamField;
    invoke-virtual {v2, v6}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    .line 1755
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1742
    .end local v0           #arr$:[Ljava/io/ObjectStreamField;
    .end local v2           #element:Ljava/io/ObjectStreamField;
    .end local v3           #fields:[Ljava/io/ObjectStreamField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #loader:Ljava/lang/ClassLoader;
    :catch_44
    move-exception v9

    move-object v1, v9

    .line 1743
    .local v1, e:Ljava/lang/ClassNotFoundException;
    iget-boolean v9, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v9, :cond_25

    .line 1744
    throw v1

    .line 1753
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #fields:[Ljava/io/ObjectStreamField;
    :cond_4b
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v6, v9

    goto :goto_37

    .line 1760
    .restart local v0       #arr$:[Ljava/io/ObjectStreamField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #loader:Ljava/lang/ClassLoader;
    :cond_55
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1761
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1762
    return-object v7
.end method

.method private readNewHandle()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1858
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .registers 7
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2017
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 2018
    .local v0, length:J
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v2

    .line 2019
    .local v2, result:Ljava/lang/String;
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v3, :cond_15

    .line 2020
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2022
    .end local v2           #result:Ljava/lang/String;
    :cond_15
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 2024
    return-object v2
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .registers 16
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1885
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1887
    .local v2, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v2, :cond_b

    .line 1888
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v12

    throw v12

    .line 1891
    :cond_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v6

    .line 1892
    .local v6, newHandle:I
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    .line 1893
    .local v7, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 1894
    .local v9, result:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1895
    .local v8, registeredResult:Ljava/lang/Object;
    if-eqz v7, :cond_7a

    .line 1898
    invoke-virtual {v2, v7}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 1899
    invoke-direct {p0, v9, v6, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1900
    move-object v8, v9

    .line 1910
    .end local v8           #registeredResult:Ljava/lang/Object;
    .end local v9           #result:Ljava/lang/Object;
    :goto_1f
    :try_start_1f
    iput-object v9, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1911
    iput-object v2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1917
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v12

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_7c

    const/4 v12, 0x1

    move v11, v12

    .line 1918
    .local v11, wasExternalizable:Z
    :goto_2d
    if-eqz v11, :cond_8f

    .line 1919
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_7f

    const/4 v12, 0x1

    move v1, v12

    .line 1920
    .local v1, blockData:Z
    :goto_39
    if-nez v1, :cond_3f

    .line 1921
    iget-object v12, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1923
    :cond_3f
    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v12, :cond_4a

    .line 1924
    move-object v0, v9

    check-cast v0, Ljava/io/Externalizable;

    move-object v3, v0

    .line 1925
    .local v3, extern:Ljava/io/Externalizable;
    invoke-interface {v3, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 1927
    .end local v3           #extern:Ljava/io/Externalizable;
    :cond_4a
    if-eqz v1, :cond_82

    .line 1930
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_4f
    .catchall {:try_start_1f .. :try_end_4f} :catchall_87

    .line 1942
    .end local v1           #blockData:Z
    :goto_4f
    const/4 v12, 0x0

    iput-object v12, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1943
    const/4 v12, 0x0

    iput-object v12, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1946
    if-eqz v7, :cond_ad

    .line 1948
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasMethodReadResolve()Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 1949
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getMethodReadResolve()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1951
    .local v5, methodReadResolve:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_62
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_67} :catch_93
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_62 .. :try_end_67} :catch_96

    move-result-object v9

    .restart local v9       #result:Ljava/lang/Object;
    move-object v12, v9

    .line 1972
    .end local v5           #methodReadResolve:Ljava/lang/reflect/Method;
    .end local v9           #result:Ljava/lang/Object;
    :goto_69
    if-eqz v12, :cond_74

    iget-boolean v13, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v13, :cond_74

    .line 1973
    invoke-virtual {p0, v12}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #result:Ljava/lang/Object;
    move-object v12, v9

    .line 1975
    .end local v9           #result:Ljava/lang/Object;
    :cond_74
    if-eq v8, v12, :cond_79

    .line 1976
    invoke-direct {p0, v12, v6, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1978
    :cond_79
    return-object v12

    .line 1902
    .end local v11           #wasExternalizable:Z
    .restart local v8       #registeredResult:Ljava/lang/Object;
    .restart local v9       #result:Ljava/lang/Object;
    :cond_7a
    const/4 v9, 0x0

    goto :goto_1f

    .line 1917
    .end local v8           #registeredResult:Ljava/lang/Object;
    .end local v9           #result:Ljava/lang/Object;
    :cond_7c
    const/4 v12, 0x0

    move v11, v12

    goto :goto_2d

    .line 1919
    .restart local v11       #wasExternalizable:Z
    :cond_7f
    const/4 v12, 0x0

    move v1, v12

    goto :goto_39

    .line 1932
    .restart local v1       #blockData:Z
    :cond_82
    :try_start_82
    iget-object v12, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_87

    goto :goto_4f

    .line 1942
    .end local v1           #blockData:Z
    .end local v11           #wasExternalizable:Z
    :catchall_87
    move-exception v12

    const/4 v13, 0x0

    iput-object v13, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1943
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v12

    .line 1937
    .restart local v11       #wasExternalizable:Z
    :cond_8f
    :try_start_8f
    invoke-direct {p0, v9, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_87

    goto :goto_4f

    .line 1952
    .restart local v5       #methodReadResolve:Ljava/lang/reflect/Method;
    :catch_93
    move-exception v12

    move-object v12, v9

    .line 1962
    goto :goto_69

    .line 1953
    :catch_96
    move-exception v12

    move-object v4, v12

    .line 1954
    .local v4, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v10

    .line 1955
    .local v10, target:Ljava/lang/Throwable;
    instance-of v12, v10, Ljava/io/ObjectStreamException;

    if-eqz v12, :cond_a3

    .line 1956
    check-cast v10, Ljava/io/ObjectStreamException;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .line 1957
    .restart local v10       #target:Ljava/lang/Throwable;
    :cond_a3
    instance-of v12, v10, Ljava/lang/Error;

    if-eqz v12, :cond_aa

    .line 1958
    check-cast v10, Ljava/lang/Error;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .line 1960
    .restart local v10       #target:Ljava/lang/Throwable;
    :cond_aa
    check-cast v10, Ljava/lang/RuntimeException;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .end local v4           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v5           #methodReadResolve:Ljava/lang/reflect/Method;
    :cond_ad
    move-object v12, v9

    goto :goto_69
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1781
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 1782
    .local v2, interfaceNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 1783
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1785
    :cond_16
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1787
    .local v3, proxy:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1788
    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .registers 4
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1996
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, result:Ljava/lang/String;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_e

    .line 1998
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2000
    .end local v0           #result:Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 2002
    return-object v0
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .registers 7
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 840
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_1c

    .line 841
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 842
    .local v0, e:Ljava/io/OptionalDataException;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    .line 843
    throw v0

    .line 875
    .end local v0           #e:Ljava/io/OptionalDataException;
    .local v2, tc:B
    :pswitch_19
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 847
    .end local v2           #tc:B
    :cond_1c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 848
    .restart local v2       #tc:B
    packed-switch v2, :pswitch_data_78

    .line 883
    :pswitch_23
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 850
    :pswitch_28
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v3

    .line 870
    :goto_2c
    return-object v3

    .line 852
    :pswitch_2d
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_2c

    .line 854
    :pswitch_32
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 856
    :pswitch_37
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 858
    :pswitch_3c
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 860
    :pswitch_41
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 862
    :pswitch_46
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 864
    :pswitch_4b
    if-eqz p1, :cond_58

    .line 865
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 866
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "Unshared read of back reference"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_58
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2c

    .line 870
    :pswitch_5d
    const/4 v3, 0x0

    goto :goto_2c

    .line 872
    :pswitch_5f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v1

    .line 873
    .local v1, exc:Ljava/lang/Exception;
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "Read an exception"

    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 878
    .end local v1           #exc:Ljava/lang/Exception;
    :pswitch_6b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    .line 879
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 880
    .restart local v0       #e:Ljava/io/OptionalDataException;
    const/4 v3, 0x1

    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    .line 881
    throw v0

    .line 848
    nop

    :pswitch_data_78
    .packed-switch 0x70
        :pswitch_5d
        :pswitch_4b
        :pswitch_2d
        :pswitch_37
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_23
        :pswitch_6b
        :pswitch_19
        :pswitch_23
        :pswitch_5f
        :pswitch_41
        :pswitch_23
        :pswitch_46
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .registers 12
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2062
    iget-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-ne v6, v7, :cond_1a

    move v4, v8

    .line 2063
    .local v4, restoreInput:Z
    :goto_9
    if-eqz v4, :cond_f

    .line 2064
    iget-object v6, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2069
    :cond_f
    iget-boolean v6, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    if-eqz v6, :cond_1d

    if-nez p1, :cond_1d

    .line 2070
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v6

    .line 2118
    :goto_19
    return-object v6

    .line 2062
    .end local v4           #restoreInput:Z
    :cond_1a
    const/4 v6, 0x0

    move v4, v6

    goto :goto_9

    .line 2080
    .restart local v4       #restoreInput:Z
    :cond_1d
    :try_start_1d
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-ne v6, v8, :cond_2b

    .line 2083
    invoke-static {}, Ljava/io/ObjectInputStream;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2087
    :cond_2b
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    move-result-object v5

    .line 2088
    .local v5, result:Ljava/lang/Object;
    if-eqz v4, :cond_35

    .line 2089
    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_56

    .line 2094
    :cond_35
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    sub-int/2addr v6, v8

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_3e

    .line 2098
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2104
    :cond_3e
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_63

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-eqz v6, :cond_63

    .line 2109
    :try_start_46
    iget-object v0, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .local v0, arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4a
    if-ge v2, v3, :cond_61

    aget-object v1, v0, v2

    .line 2110
    .local v1, element:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget-object v6, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_65

    .line 2109
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2094
    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v1           #element:Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #result:Ljava/lang/Object;
    :catchall_56
    move-exception v6

    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v7, :cond_60

    .line 2098
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_60
    throw v6

    .line 2115
    .restart local v0       #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #result:Ljava/lang/Object;
    :cond_61
    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_63
    move-object v6, v5

    .line 2118
    goto :goto_19

    .line 2115
    :catchall_65
    move-exception v6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    throw v6
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 12
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1419
    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1420
    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1422
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_38

    move v2, v8

    .line 1423
    .local v2, hadWriteMethod:Z
    :goto_10
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1426
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1a

    iget-boolean v5, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v5, :cond_3a

    .line 1427
    :cond_1a
    const/4 v3, 0x0

    .line 1432
    .local v3, readMethod:Ljava/lang/reflect/Method;
    :goto_1b
    if-eqz v3, :cond_6f

    .line 1434
    :try_start_1d
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v5, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4c

    .line 1437
    const/4 v5, 0x1

    :try_start_26
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_2e} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2e} :catch_63

    .line 1454
    :goto_2e
    if-eqz v2, :cond_33

    .line 1455
    :try_start_30
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4c

    .line 1460
    :cond_33
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1462
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1464
    return-void

    .end local v2           #hadWriteMethod:Z
    .end local v3           #readMethod:Ljava/lang/reflect/Method;
    .end local v4           #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_38
    move v2, v6

    .line 1422
    goto :goto_10

    .line 1429
    .restart local v2       #hadWriteMethod:Z
    .restart local v4       #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3a
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getMethodReadObject()Ljava/lang/reflect/Method;

    move-result-object v3

    .restart local v3       #readMethod:Ljava/lang/reflect/Method;
    goto :goto_1b

    .line 1438
    :catch_3f
    move-exception v5

    move-object v0, v5

    .line 1439
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1440
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_52

    .line 1441
    check-cast v1, Ljava/lang/ClassNotFoundException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4c

    .line 1460
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catchall_4c
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1462
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v5

    .line 1442
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_52
    :try_start_52
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_59

    .line 1443
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1444
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_59
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_60

    .line 1445
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1447
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_60
    check-cast v1, Ljava/io/IOException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1448
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_63
    move-exception v5

    move-object v0, v5

    .line 1449
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1452
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_6f
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_4c

    goto :goto_2e
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V
    .registers 9
    .parameter "object"
    .parameter
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1393
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1413
    :cond_6
    :goto_6
    return-void

    .line 1396
    :cond_7
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->hasMethodReadObjectNoData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1397
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->getMethodReadObjectNoData()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1399
    .local v2, readMethod:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_12
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_17} :catch_2f

    goto :goto_6

    .line 1400
    :catch_18
    move-exception v3

    move-object v0, v3

    .line 1401
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1402
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_25

    .line 1403
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1404
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_25
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_2c

    .line 1405
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1407
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_2c
    check-cast v1, Ljava/io/ObjectStreamException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1408
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2f
    move-exception v3

    move-object v0, v3

    .line 1409
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private registerObjectRead(Ljava/lang/Object;IZ)V
    .registers 8
    .parameter "obj"
    .parameter "handle"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2260
    if-eqz p3, :cond_4

    .line 2261
    sget-object p1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 2263
    :cond_4
    const/high16 v2, 0x7e

    sub-int v0, p2, v2

    .line 2264
    .local v0, index:I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2268
    .local v1, size:I
    :goto_e
    if-le v0, v1, :cond_19

    .line 2269
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2272
    :cond_19
    if-ne v0, v1, :cond_21

    .line 2273
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    :goto_20
    return-void

    .line 2275
    :cond_21
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method private registeredObjectRead(I)Ljava/lang/Object;
    .registers 5
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2249
    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/high16 v2, 0x7e

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2250
    .local v0, res:Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 2251
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2253
    :cond_16
    return-object v0
.end method

.method private resetSeenObjects()V
    .registers 2

    .prologue
    .line 2344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    .line 2345
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    .line 2346
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2347
    return-void
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2355
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 2356
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 2357
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    .line 2359
    return-void
.end method

.method private verifyAndInit(Ljava/io/ObjectStreamClass;)V
    .registers 11
    .parameter "loadedStreamClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 2462
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2463
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 2466
    .local v3, localStreamClass:Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3b

    .line 2468
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2473
    :cond_3b
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2474
    .local v0, loadedClassBaseName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2476
    .local v2, localClassBaseName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 2477
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Incompatible class (base name): %s but expected %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2482
    :cond_6a
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->initPrivateFields(Ljava/io/ObjectStreamClass;)V

    .line 2483
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 437
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 494
    return-void
.end method

.method public defaultReadObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v0, :cond_10

    .line 512
    :cond_8
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 516
    return-void

    .line 514
    :cond_10
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0
.end method

.method protected enableResolveObject(Z)Z
    .registers 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 535
    if-eqz p1, :cond_d

    .line 538
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 539
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 540
    sget-object v2, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 543
    .end local v0           #currentManager:Ljava/lang/SecurityManager;
    :cond_d
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 544
    .local v1, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 545
    return v1
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 600
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 630
    if-nez p3, :cond_8

    .line 631
    const/4 v0, 0x0

    .line 634
    :goto_7
    return v0

    .line 633
    :cond_8
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 634
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_7
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1801
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1802
    .local v1, newClassDesc:Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    .line 1804
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The stream is corrupted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1806
    :cond_19
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 1807
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 1808
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1815
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    .line 1816
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1818
    :cond_39
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1820
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    .line 1821
    return-object v1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 1060
    new-instance v1, Ljava/io/NotActiveException;

    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    throw v1

    .line 1062
    :cond_a
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    .line 1063
    .local v0, result:Ljava/io/EmulatedFieldsForLoading;
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    .line 1064
    return-object v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 3
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1273
    return-void
.end method

.method public readFully([BII)V
    .registers 5
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1293
    return-void
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1491
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2042
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2161
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v0, :cond_6

    .line 2162
    const/4 v0, 0x0

    return-object v0

    .line 2165
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2190
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x5313

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 2192
    return-void

    .line 2194
    :cond_14
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2240
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2209
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2224
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .registers 12
    .parameter "object"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2302
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2304
    .local v3, instanceBeingRead:Ljava/lang/Object;
    if-nez v3, :cond_12

    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_12

    .line 2305
    new-instance v6, Ljava/io/NotActiveException;

    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    throw v6
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 2302
    .end local v3           #instanceBeingRead:Ljava/lang/Object;
    :catchall_f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2307
    .restart local v3       #instanceBeingRead:Ljava/lang/Object;
    :cond_12
    if-nez p1, :cond_1c

    .line 2308
    :try_start_14
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "Callback object cannot be null"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2313
    :cond_1c
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    .line 2314
    .local v1, desc:Ljava/io/ObjectInputStream$InputValidationDesc;
    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    .line 2315
    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    .line 2318
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-nez v6, :cond_35

    .line 2319
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2320
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v7, 0x0

    aput-object v1, v6, v7
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_f

    .line 2338
    :goto_33
    monitor-exit p0

    return-void

    .line 2322
    :cond_35
    const/4 v2, 0x0

    .line 2323
    .local v2, i:I
    :goto_36
    :try_start_36
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v6, v6

    if-ge v2, v6, :cond_43

    .line 2324
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aget-object v5, v6, v2

    .line 2326
    .local v5, validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    if-lt p2, v6, :cond_61

    .line 2330
    .end local v5           #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_43
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2331
    .local v4, oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v0, v4

    .line 2332
    .local v0, currentSize:I
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2333
    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2334
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v2

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2336
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aput-object v1, v6, v2
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_f

    goto :goto_33

    .line 2323
    .end local v0           #currentSize:I
    .end local v4           #oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v5       #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_36
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 6
    .parameter "osClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2377
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2378
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_1b

    .line 2380
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, className:Ljava/lang/String;
    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 2385
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_1b

    .line 2389
    const/4 v2, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2392
    .end local v0           #className:Ljava/lang/String;
    :cond_1b
    return-object v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2413
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .parameter "interfaceNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1846
    .local v3, loader:Ljava/lang/ClassLoader;
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Class;

    .line 1847
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v4, p1

    if-ge v1, v4, :cond_17

    .line 1848
    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1847
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1851
    :cond_17
    :try_start_17
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v4

    return-object v4

    .line 1852
    :catch_1c
    move-exception v0

    .line 1853
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public skipBytes(I)I
    .registers 8
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2431
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v3, :cond_a

    .line 2432
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2435
    :cond_a
    const/4 v0, 0x0

    .line 2436
    .local v0, offset:I
    :goto_b
    if-ge v0, p1, :cond_24

    .line 2437
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 2438
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    sub-int v4, p1, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 2439
    .local v1, skipped:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_21

    move v3, v0

    .line 2444
    .end local v1           #skipped:J
    :goto_20
    return v3

    .line 2442
    .restart local v1       #skipped:J
    :cond_21
    long-to-int v3, v1

    add-int/2addr v0, v3

    .line 2443
    goto :goto_b

    .end local v1           #skipped:J
    :cond_24
    move v3, p1

    .line 2444
    goto :goto_20
.end method
