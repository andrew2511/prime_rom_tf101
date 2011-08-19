.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field private static final NOT_SC_BLOCK_DATA:B = -0x9t

.field private static final WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedException:Ljava/io/StreamCorruptedException;

.field private nestedLevels:I

.field private objectsWritten:Ljava/io/SerializationHandleMap;

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private final proxyClassDesc:Ljava/io/ObjectStreamClass;

.field private subclassOverridingImplementation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Ljava/io/ObjectOutputStream;->WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 125
    const-class v1, Ljava/lang/reflect/Proxy;

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 259
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 260
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 261
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 267
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 11
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 284
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 125
    const-class v5, Ljava/lang/reflect/Proxy;

    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v5

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Ljava/io/ObjectOutputStream;

    .line 287
    .local v4, thisClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v0, v4, :cond_43

    .line 288
    const/4 v2, 0x0

    .line 290
    .local v2, mustCheck:Z
    :try_start_16
    const-string v5, "putFields"

    sget-object v6, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 291
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_21} :catch_74

    move-result-object v5

    if-eq v5, v4, :cond_68

    move v2, v8

    .line 294
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_25
    if-nez v2, :cond_36

    .line 296
    :try_start_27
    const-string v5, "writeUnshared"

    sget-object v6, Ljava/io/ObjectOutputStream;->WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 298
    .restart local v1       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_32} :catch_72

    move-result-object v5

    if-eq v5, v4, :cond_6a

    move v2, v8

    .line 302
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_36
    :goto_36
    if-eqz v2, :cond_43

    .line 303
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 304
    .local v3, sm:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_43

    .line 305
    sget-object v5, Ljava/io/ObjectStreamConstants;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 310
    .end local v2           #mustCheck:Z
    .end local v3           #sm:Ljava/lang/SecurityManager;
    :cond_43
    instance-of v5, p1, Ljava/io/DataOutputStream;

    if-eqz v5, :cond_6c

    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1
    move-object v5, p1

    :goto_4a
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    .line 312
    iput-boolean v7, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 313
    const/4 v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 314
    iput-boolean v7, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 316
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 317
    new-instance v5, Ljava/io/StreamCorruptedException;

    invoke-direct {v5}, Ljava/io/StreamCorruptedException;-><init>()V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    .line 320
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 322
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 323
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 324
    return-void

    .restart local v1       #method:Ljava/lang/reflect/Method;
    .restart local v2       #mustCheck:Z
    .restart local p1
    :cond_68
    move v2, v7

    .line 291
    goto :goto_25

    :cond_6a
    move v2, v7

    .line 298
    goto :goto_36

    .line 310
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #mustCheck:Z
    :cond_6c
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_4a

    .line 299
    .restart local v2       #mustCheck:Z
    :catch_72
    move-exception v5

    goto :goto_36

    .line 292
    :catch_74
    move-exception v5

    goto :goto_25
.end method

.method private checkWritePrimitiveTypes()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v0, :cond_16

    .line 365
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    .line 366
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 368
    :cond_16
    return-void
.end method

.method private computePutField()V
    .registers 3

    .prologue
    .line 393
    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 394
    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)I
    .registers 5
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 468
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v1, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v0

    .line 469
    .local v0, handle:I
    if-eq v0, v2, :cond_e

    .line 470
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(I)V

    move v1, v0

    .line 473
    :goto_d
    return v1

    :cond_e
    move v1, v2

    goto :goto_d
.end method

.method private static native getFieldL(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private nextHandle()I
    .registers 3

    .prologue
    .line 541
    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)I
    .registers 4
    .parameter "obj"

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v0

    .line 570
    .local v0, handle:I
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v1, p1, v0}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 571
    return v0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;I)V
    .registers 4
    .parameter "obj"
    .parameter "previousHandle"

    .prologue
    .line 584
    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    .line 585
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1, p2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 589
    :goto_8
    return-void

    .line 587
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1}, Ljava/io/SerializationHandleMap;->remove(Ljava/lang/Object;)I

    goto :goto_8
.end method

.method private resetSeenObjects()V
    .registers 2

    .prologue
    .line 642
    new-instance v0, Ljava/io/SerializationHandleMap;

    invoke-direct {v0}, Ljava/io/SerializationHandleMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    .line 643
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    .line 644
    return-void
.end method

.method private resetState()V
    .registers 2

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 655
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    .registers 11
    .parameter "classDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x78

    const/4 v5, -0x1

    .line 818
    if-nez p1, :cond_9

    .line 819
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 873
    :goto_8
    return v5

    .line 822
    :cond_9
    const/4 v1, -0x1

    .line 823
    .local v1, handle:I
    if-nez p2, :cond_10

    .line 824
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 826
    :cond_10
    if-ne v1, v5, :cond_87

    .line 827
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 828
    .local v0, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    .line 829
    .local v4, previousHandle:I
    if-eqz p2, :cond_1f

    .line 830
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v5, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v4

    .line 834
    :cond_1f
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v1

    .line 836
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 837
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 838
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 839
    .local v3, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 840
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3b
    array-length v5, v3

    if-ge v2, v5, :cond_4c

    .line 841
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 843
    :cond_4c
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 844
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 845
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 846
    if-eqz p2, :cond_5f

    .line 848
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    :cond_5f
    move v5, v1

    .line 850
    goto :goto_8

    .line 853
    .end local v2           #i:I
    .end local v3           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_61
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 854
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_89

    .line 855
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 864
    :goto_70
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 865
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 866
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 867
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 868
    if-eqz p2, :cond_87

    .line 870
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .end local v0           #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #previousHandle:I
    :cond_87
    move v5, v1

    .line 873
    goto :goto_8

    .line 859
    .restart local v0       #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #previousHandle:I
    :cond_89
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 860
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 861
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_70
.end method

.method private writeCyclicReference(I)V
    .registers 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 882
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 883
    return-void
.end method

.method private writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;
    .registers 11
    .parameter
    .parameter "classDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v6, 0x12

    .line 1754
    invoke-virtual {p2, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1755
    const/4 v2, -0x1

    .line 1756
    .local v2, previousHandle:I
    if-eqz p3, :cond_e

    .line 1757
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v4, p2}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v2

    .line 1759
    :cond_e
    const/4 v1, -0x1

    .line 1760
    .local v1, handle:I
    if-nez p3, :cond_15

    .line 1761
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 1763
    :cond_15
    const/4 v4, -0x1

    if-ne v1, v4, :cond_50

    .line 1764
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1767
    .local v0, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    .line 1769
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1770
    iget v4, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_51

    .line 1771
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1780
    :goto_2e
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1781
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1782
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1784
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 1785
    .local v3, superClassDesc:Ljava/io/ObjectStreamClass;
    if-eqz v3, :cond_5c

    .line 1787
    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1788
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v3, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1792
    :goto_4b
    if-eqz p3, :cond_50

    .line 1794
    invoke-direct {p0, p2, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1797
    .end local v0           #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #superClassDesc:Ljava/io/ObjectStreamClass;
    :cond_50
    return-object p2

    .line 1775
    .restart local v0       #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_51
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1776
    invoke-virtual {p0, p2}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 1777
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_2e

    .line 1790
    .restart local v3       #superClassDesc:Ljava/io/ObjectStreamClass;
    :cond_5c
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4b
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .registers 10
    .parameter "classDesc"
    .parameter "externalizable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 917
    .local v4, loadedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 918
    .local v2, fields:[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .line 922
    .local v1, fieldCount:I
    if-nez p2, :cond_11

    sget-object v6, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-eq v4, v6, :cond_11

    .line 923
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 924
    array-length v1, v2

    .line 928
    :cond_11
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 930
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v1, :cond_2d

    .line 931
    aget-object v0, v2, v3

    .line 932
    .local v0, f:Ljava/io/ObjectStreamField;
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/ObjectStreamField;->writeField(Ljava/io/DataOutputStream;)Z

    move-result v5

    .line 933
    .local v5, wasPrimitive:Z
    if-nez v5, :cond_2a

    .line 934
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 930
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 937
    .end local v0           #f:Ljava/io/ObjectStreamField;
    .end local v5           #wasPrimitive:Z
    :cond_2d
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .registers 14
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 974
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v0

    .line 975
    .local v0, accessibleSimulatedFields:Ljava/io/EmulatedFields;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v6

    .line 976
    .local v6, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v1

    .local v1, arr$:[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v4, :cond_c9

    aget-object v5, v1, v3

    .line 977
    .local v5, slot:Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    .line 978
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 979
    .local v7, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_35

    .line 980
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_33

    check-cast v2, Ljava/lang/Integer;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2d
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 976
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_33
    move v9, v11

    .line 980
    goto :goto_2d

    .line 981
    :cond_35
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_49

    .line 982
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_47

    check-cast v2, Ljava/lang/Byte;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    :goto_43
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_47
    move v9, v11

    goto :goto_43

    .line 983
    :cond_49
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_5d

    .line 984
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_5b

    check-cast v2, Ljava/lang/Character;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v9

    :goto_57
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_5b
    move v9, v11

    goto :goto_57

    .line 985
    :cond_5d
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_71

    .line 986
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6f

    check-cast v2, Ljava/lang/Short;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v9

    :goto_6b
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_6f
    move v9, v11

    goto :goto_6b

    .line 987
    :cond_71
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_85

    .line 988
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_83

    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_7f
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_83
    move v9, v11

    goto :goto_7f

    .line 989
    :cond_85
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_9a

    .line 990
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_97

    check-cast v2, Ljava/lang/Long;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_93
    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_97
    const-wide/16 v9, 0x0

    goto :goto_93

    .line 991
    :cond_9a
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_ae

    .line 992
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_ac

    check-cast v2, Ljava/lang/Float;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_a8
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_ac
    const/4 v9, 0x0

    goto :goto_a8

    .line 993
    :cond_ae
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_c4

    .line 994
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_c1

    check-cast v2, Ljava/lang/Double;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_bc
    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_30

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_c1
    const-wide/16 v9, 0x0

    goto :goto_bc

    .line 997
    :cond_c4
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 1000
    .end local v2           #fieldValue:Ljava/lang/Object;
    .end local v5           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v7           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c9
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 15
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .local v0, arr$:[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_6
    if-ge v3, v5, :cond_dc

    aget-object v2, v0, v3

    .line 1023
    .local v2, fieldDesc:Ljava/io/ObjectStreamField;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v8

    .line 1024
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1025
    .local v1, field:Ljava/lang/reflect/Field;
    if-nez v1, :cond_4b

    .line 1026
    new-instance v9, Ljava/io/InvalidClassException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t have a field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_43} :catch_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_43} :catch_69

    .line 1053
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_43
    move-exception v9

    move-object v4, v9

    .line 1055
    .local v4, iae:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 1028
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4b
    :try_start_4b
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_5b

    .line 1029
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1021
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1030
    :cond_5b
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_75

    .line 1031
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_68} :catch_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_68} :catch_69

    goto :goto_58

    .line 1056
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_69
    move-exception v9

    move-object v6, v9

    .line 1060
    .local v6, nsf:Ljava/lang/NoSuchFieldError;
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1032
    .end local v6           #nsf:Ljava/lang/NoSuchFieldError;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_75
    :try_start_75
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_83

    .line 1033
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_58

    .line 1034
    :cond_83
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_91

    .line 1035
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_58

    .line 1036
    :cond_91
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_9f

    .line 1037
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_58

    .line 1038
    :cond_9f
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_ad

    .line 1039
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_58

    .line 1040
    :cond_ad
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_bb

    .line 1041
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_58

    .line 1042
    :cond_bb
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_c9

    .line 1043
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_58

    .line 1046
    :cond_c9
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1047
    .local v7, objField:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1048
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    goto :goto_58

    .line 1050
    :cond_d7
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_da
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_da} :catch_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_da} :catch_69

    goto/16 :goto_58

    .line 1063
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #fieldDesc:Ljava/io/ObjectStreamField;
    .end local v7           #objField:Ljava/lang/Object;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_dc
    return-void
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 14
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1104
    if-nez p1, :cond_9

    .line 1105
    new-instance v8, Ljava/io/NotActiveException;

    invoke-direct {v8}, Ljava/io/NotActiveException;-><init>()V

    throw v8

    .line 1110
    :cond_9
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v4

    .line 1111
    .local v4, hierarchy:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, end:I
    :goto_12
    if-ge v5, v1, :cond_77

    .line 1112
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/ObjectStreamClass;

    .line 1115
    .local v7, osc:Ljava/io/ObjectStreamClass;
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1116
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1120
    const/4 v3, 0x0

    .line 1121
    .local v3, executed:Z
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1122
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getMethodWriteObject()Ljava/lang/reflect/Method;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_55

    move-result-object v6

    .line 1124
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    :try_start_2a
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_32} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_32} :catch_67

    .line 1125
    const/4 v3, 0x1

    .line 1139
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_33
    if-eqz v3, :cond_73

    .line 1140
    :try_start_35
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1141
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_55

    .line 1150
    :goto_3f
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1151
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1152
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1111
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1126
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :catch_48
    move-exception v8

    move-object v0, v8

    .line 1127
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1128
    .local v2, ex:Ljava/lang/Throwable;
    instance-of v8, v2, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_5d

    .line 1129
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_55

    .line 1150
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :catchall_55
    move-exception v8

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1151
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1152
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v8

    .line 1130
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v2       #ex:Ljava/lang/Throwable;
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :cond_5d
    :try_start_5d
    instance-of v8, v2, Ljava/lang/Error;

    if-eqz v8, :cond_64

    .line 1131
    check-cast v2, Ljava/lang/Error;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2

    .line 1133
    .restart local v2       #ex:Ljava/lang/Throwable;
    :cond_64
    check-cast v2, Ljava/io/IOException;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2

    .line 1134
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_67
    move-exception v8

    move-object v0, v8

    .line 1135
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1145
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_73
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_55

    goto :goto_3f

    .line 1155
    .end local v3           #executed:Z
    .end local v7           #osc:Ljava/io/ObjectStreamClass;
    :cond_77
    return-void
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    .registers 24
    .parameter "array"
    .parameter
    .parameter "arrayClDesc"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    .local p2, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    const/16 v16, 0x75

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1205
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v15

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1207
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v9

    .line 1208
    .local v9, handle:I
    if-nez p5, :cond_25

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1217
    :cond_25
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_1a4

    .line 1218
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_56

    .line 1219
    check-cast p1, [I

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v11, v0

    .line 1220
    .local v11, intArray:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v11

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1221
    const/4 v10, 0x0

    .local v10, i:I
    :goto_46
    array-length v15, v11

    if-ge v10, v15, :cond_84

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget v16, v11, v10

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1221
    add-int/lit8 v10, v10, 0x1

    goto :goto_46

    .line 1224
    .end local v10           #i:I
    .end local v11           #intArray:[I
    .restart local p1
    :cond_56
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_85

    .line 1225
    check-cast p1, [B

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    .line 1226
    .local v5, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1279
    .end local v5           #byteArray:[B
    :cond_84
    return v9

    .line 1228
    .restart local p1
    :cond_85
    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_b0

    .line 1229
    check-cast p1, [C

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [C

    move-object v6, v0

    .line 1230
    .local v6, charArray:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1231
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_a0
    array-length v15, v6

    if-ge v10, v15, :cond_84

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget-char v16, v6, v10

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 1231
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    .line 1234
    .end local v6           #charArray:[C
    .end local v10           #i:I
    .restart local p1
    :cond_b0
    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_db

    .line 1235
    check-cast p1, [S

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [S

    move-object v14, v0

    .line 1236
    .local v14, shortArray:[S
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1237
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_cb
    array-length v15, v14

    if-ge v10, v15, :cond_84

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget-short v16, v14, v10

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1237
    add-int/lit8 v10, v10, 0x1

    goto :goto_cb

    .line 1240
    .end local v10           #i:I
    .end local v14           #shortArray:[S
    .restart local p1
    :cond_db
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_106

    .line 1241
    check-cast p1, [Z

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [Z

    move-object v4, v0

    .line 1242
    .local v4, booleanArray:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1243
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_f6
    array-length v15, v4

    if-ge v10, v15, :cond_84

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget-boolean v16, v4, v10

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1243
    add-int/lit8 v10, v10, 0x1

    goto :goto_f6

    .line 1246
    .end local v4           #booleanArray:[Z
    .end local v10           #i:I
    .restart local p1
    :cond_106
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_131

    .line 1247
    check-cast p1, [J

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [J

    move-object v12, v0

    .line 1248
    .local v12, longArray:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1249
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_121
    array-length v15, v12

    if-ge v10, v15, :cond_84

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget-wide v16, v12, v10

    invoke-virtual/range {v15 .. v17}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1249
    add-int/lit8 v10, v10, 0x1

    goto :goto_121

    .line 1252
    .end local v10           #i:I
    .end local v12           #longArray:[J
    .restart local p1
    :cond_131
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_15c

    .line 1253
    check-cast p1, [F

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [F

    move-object v8, v0

    .line 1254
    .local v8, floatArray:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1255
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_14c
    array-length v15, v8

    if-ge v10, v15, :cond_84

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget v16, v8, v10

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1255
    add-int/lit8 v10, v10, 0x1

    goto :goto_14c

    .line 1258
    .end local v8           #floatArray:[F
    .end local v10           #i:I
    .restart local p1
    :cond_15c
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object v1, v15

    if-ne v0, v1, :cond_187

    .line 1259
    check-cast p1, [D

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [D

    move-object v7, v0

    .line 1260
    .local v7, doubleArray:[D
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1261
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_177
    array-length v15, v7

    if-ge v10, v15, :cond_84

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    aget-wide v16, v7, v10

    invoke-virtual/range {v15 .. v17}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1261
    add-int/lit8 v10, v10, 0x1

    goto :goto_177

    .line 1265
    .end local v7           #doubleArray:[D
    .end local v10           #i:I
    .restart local p1
    :cond_187
    new-instance v15, Ljava/io/InvalidClassException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Wrong base type in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1269
    :cond_1a4
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 1270
    .local v13, objectArray:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object v15, v0

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1271
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1b8
    array-length v15, v13

    if-ge v10, v15, :cond_84

    .line 1276
    aget-object v15, v13, v10

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1271
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b8
.end method

.method private writeNewClass(Ljava/lang/Class;Z)I
    .registers 7
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, object:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1303
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1307
    .local v0, clDesc:Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1308
    invoke-direct {p0, p1, v0, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1313
    :goto_14
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    .line 1314
    .local v1, handle:I
    if-nez p2, :cond_1f

    .line 1315
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1318
    :cond_1f
    return v1

    .line 1310
    .end local v1           #handle:I
    :cond_20
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    goto :goto_14
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .registers 7
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1337
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1338
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v1

    .line 1340
    .local v1, flags:B
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    .line 1342
    .local v0, externalizable:Z
    if-eqz v0, :cond_24

    .line 1343
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 1344
    and-int/lit8 v2, v1, -0x9

    int-to-byte v1, v2

    .line 1351
    :cond_24
    :goto_24
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1352
    const/16 v2, 0x12

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v3

    if-eq v2, v3, :cond_39

    .line 1353
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    .line 1358
    :goto_34
    return-void

    .line 1348
    :cond_35
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    goto :goto_24

    .line 1356
    :cond_39
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_34
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    .registers 16
    .parameter "object"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    .line 1802
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1804
    .local v5, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    const/4 v9, 0x0

    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1806
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v10, 0x7e

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1807
    :goto_d
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1809
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_d

    .line 1811
    :cond_1a
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1812
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-direct {p0, p2, v0, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1814
    const/4 v6, -0x1

    .line 1815
    .local v6, previousHandle:I
    if-eqz p3, :cond_2a

    .line 1816
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v9, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v6

    .line 1818
    :cond_2a
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v3

    .line 1820
    .local v3, handle:I
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1823
    .local v2, fields:[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_60

    array-length v9, v2

    if-le v9, v11, :cond_60

    .line 1824
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    aget-object v10, v2, v11

    invoke-virtual {v9, v10}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1825
    .local v1, field:Ljava/lang/reflect/Field;
    if-nez v1, :cond_4d

    .line 1826
    new-instance v9, Ljava/lang/NoSuchFieldError;

    invoke-direct {v9}, Ljava/lang/NoSuchFieldError;-><init>()V

    throw v9

    .line 1829
    :cond_4d
    :try_start_4d
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1830
    .local v7, str:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1831
    .local v8, strHandle:I
    if-nez p3, :cond_5a

    .line 1832
    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v8

    .line 1834
    :cond_5a
    const/4 v9, -0x1

    if-ne v8, v9, :cond_60

    .line 1835
    invoke-direct {p0, v7, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_60} :catch_68

    .line 1842
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #strHandle:I
    :cond_60
    if-eqz p3, :cond_65

    .line 1844
    invoke-direct {p0, p1, v6}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1846
    :cond_65
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1847
    return v3

    .line 1837
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :catch_68
    move-exception v9

    move-object v4, v9

    .line 1838
    .local v4, iae:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .registers 5
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1393
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1394
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1395
    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1396
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1397
    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    .registers 17
    .parameter "object"
    .parameter
    .parameter "clDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1427
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1428
    .local v4, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1431
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    .line 1432
    .local v1, externalizable:Z
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v6

    .line 1433
    .local v6, serializable:Z
    if-nez v1, :cond_1d

    if-nez v6, :cond_1d

    .line 1435
    new-instance v7, Ljava/io/NotSerializableException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1439
    :cond_1d
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1440
    invoke-direct {p0, p3, v10}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1441
    const/4 v5, -0x1

    .line 1442
    .local v5, previousHandle:I
    if-eqz p4, :cond_30

    .line 1443
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v7, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v5

    .line 1446
    :cond_30
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v2

    .line 1452
    .local v2, handle:I
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1453
    iput-object p3, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1455
    if-eqz v1, :cond_77

    .line 1456
    :try_start_3a
    iget v7, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    if-ne v7, v11, :cond_5d

    move v3, v11

    .line 1457
    .local v3, noBlockData:Z
    :goto_3f
    if-eqz v3, :cond_45

    .line 1458
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1461
    :cond_45
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1462
    if-eqz v3, :cond_5f

    .line 1463
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_6a

    .line 1480
    .end local v3           #noBlockData:Z
    :goto_51
    if-eqz p4, :cond_56

    .line 1482
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1484
    :cond_56
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1485
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1486
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1489
    return v2

    :cond_5d
    move v3, v10

    .line 1456
    goto :goto_3f

    .line 1469
    .restart local v3       #noBlockData:Z
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1470
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_6a

    goto :goto_51

    .line 1480
    .end local v3           #noBlockData:Z
    :catchall_6a
    move-exception v7

    if-eqz p4, :cond_70

    .line 1482
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1484
    :cond_70
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1485
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1486
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v7

    .line 1475
    :cond_77
    :try_start_77
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_6a

    goto :goto_51
.end method

.method private writeNewString(Ljava/lang/String;Z)I
    .registers 12
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1505
    invoke-static {p1, v8}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1

    .line 1507
    .local v1, count:J
    const/4 v4, 0x0

    .line 1508
    .local v4, offset:I
    const-wide/32 v6, 0xffff

    cmp-long v6, v1, v6

    if-gtz v6, :cond_36

    .line 1509
    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x3

    new-array v0, v6, [B

    .line 1510
    .local v0, buffer:[B
    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    const/16 v6, 0x74

    aput-byte v6, v0, v4

    .line 1511
    long-to-int v6, v1

    int-to-short v6, v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 1512
    add-int/lit8 v4, v5, 0x2

    .line 1519
    .end local v5           #offset:I
    .restart local v4       #offset:I
    :goto_21
    invoke-static {v0, v4, p1}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 1520
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v7, v0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1522
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v3

    .line 1523
    .local v3, handle:I
    if-nez p2, :cond_35

    .line 1524
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v6, p1, v3}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1527
    :cond_35
    return v3

    .line 1514
    .end local v0           #buffer:[B
    .end local v3           #handle:I
    :cond_36
    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x9

    new-array v0, v6, [B

    .line 1515
    .restart local v0       #buffer:[B
    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .restart local v5       #offset:I
    const/16 v6, 0x7c

    aput-byte v6, v0, v4

    .line 1516
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v1, v2, v6}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 1517
    add-int/lit8 v4, v5, 0x8

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_21
.end method

.method private writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1540
    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .registers 9
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1572
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-ne v3, v4, :cond_17

    move v2, v5

    .line 1573
    .local v2, setOutput:Z
    :goto_8
    if-eqz v2, :cond_d

    .line 1574
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1578
    :cond_d
    iget-boolean v3, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-eqz v3, :cond_1a

    if-nez p2, :cond_1a

    .line 1579
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 1605
    :cond_16
    :goto_16
    return-void

    .line 1572
    .end local v2           #setOutput:Z
    :cond_17
    const/4 v3, 0x0

    move v2, v3

    goto :goto_8

    .line 1585
    .restart local v2       #setOutput:Z
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1588
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1589
    if-eqz v2, :cond_16

    .line 1590
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_29

    goto :goto_16

    .line 1592
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 1595
    .local v0, ioEx1:Ljava/io/IOException;
    iget v3, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    if-nez v3, :cond_36

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    if-eq v0, v3, :cond_36

    .line 1597
    :try_start_33
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1603
    :cond_36
    throw v0

    .line 1598
    :catch_37
    move-exception v1

    .line 1599
    .local v1, ioEx2:Ljava/io/IOException;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    invoke-virtual {v3}, Ljava/io/StreamCorruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1600
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    throw v3
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)I
    .registers 24
    .parameter "object"
    .parameter "unshared"
    .parameter "computeClassBasedReplacement"
    .parameter "computeStreamReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    if-nez p1, :cond_7

    .line 1632
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1633
    const/4 v5, -0x1

    .line 1744
    .end local p1
    :goto_6
    return v5

    .line 1635
    .restart local p1
    :cond_7
    const/4 v11, -0x1

    .line 1636
    .local v11, handle:I
    if-nez p2, :cond_13

    .line 1637
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v11

    .line 1638
    const/4 v5, -0x1

    if-eq v11, v5, :cond_13

    move v5, v11

    .line 1639
    goto :goto_6

    .line 1644
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1645
    .local v7, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v7}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 1647
    .local v8, clDesc:Ljava/io/ObjectStreamClass;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 1650
    :try_start_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    move v5, v0

    if-eqz v5, :cond_30

    if-nez p4, :cond_5e

    .line 1652
    :cond_30
    sget-object v5, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v7, v5, :cond_47

    .line 1653
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_6

    .line 1656
    .restart local p1
    :cond_47
    :try_start_47
    sget-object v5, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v7, v5, :cond_5e

    .line 1657
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_6

    .line 1661
    .restart local p1
    :cond_5e
    :try_start_5e
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v5

    if-eqz v5, :cond_e1

    if-eqz p3, :cond_e1

    .line 1662
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->hasMethodWriteReplace()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1663
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getMethodWriteReplace()Ljava/lang/reflect/Method;
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_c6

    move-result-object v14

    .line 1664
    .local v14, methodWriteReplace:Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    .line 1666
    .local v15, replObj:Ljava/lang/Object;
    const/4 v5, 0x0

    :try_start_72
    check-cast v5, [Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_72 .. :try_end_7b} :catch_b1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_72 .. :try_end_7b} :catch_b6

    move-result-object v15

    .line 1681
    :goto_7c
    move-object v0, v15

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_e1

    .line 1683
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_83
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    move v3, v6

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v16

    .line 1687
    .local v16, replacementHandle:I
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-eq v0, v1, :cond_a1

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_a1
    .catchall {:try_start_83 .. :try_end_a1} :catchall_c6

    .line 1744
    :cond_a1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v5, v16

    goto/16 :goto_6

    .line 1667
    .end local v16           #replacementHandle:I
    :catch_b1
    move-exception v5

    move-object v12, v5

    .line 1668
    .local v12, iae:Ljava/lang/IllegalAccessException;
    move-object/from16 v15, p1

    .line 1680
    goto :goto_7c

    .line 1669
    .end local v12           #iae:Ljava/lang/IllegalAccessException;
    :catch_b6
    move-exception v5

    move-object v13, v5

    .line 1672
    .local v13, ite:Ljava/lang/reflect/InvocationTargetException;
    :try_start_b8
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v18

    .line 1673
    .local v18, target:Ljava/lang/Throwable;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/io/ObjectStreamException;

    move v5, v0

    if-eqz v5, :cond_d4

    .line 1674
    check-cast v18, Ljava/io/ObjectStreamException;

    .end local v18           #target:Ljava/lang/Throwable;
    throw v18
    :try_end_c6
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_c6

    .line 1744
    .end local v13           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v14           #methodWriteReplace:Ljava/lang/reflect/Method;
    .end local v15           #replObj:Ljava/lang/Object;
    .end local p1
    :catchall_c6
    move-exception v5

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .end local v7           #objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    throw v5

    .line 1675
    .restart local v7       #objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v13       #ite:Ljava/lang/reflect/InvocationTargetException;
    .restart local v14       #methodWriteReplace:Ljava/lang/reflect/Method;
    .restart local v15       #replObj:Ljava/lang/Object;
    .restart local v18       #target:Ljava/lang/Throwable;
    .restart local p1
    :cond_d4
    :try_start_d4
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Error;

    move v5, v0

    if-eqz v5, :cond_de

    .line 1676
    check-cast v18, Ljava/lang/Error;

    .end local v18           #target:Ljava/lang/Throwable;
    throw v18

    .line 1678
    .restart local v18       #target:Ljava/lang/Throwable;
    :cond_de
    check-cast v18, Ljava/lang/RuntimeException;

    .end local v18           #target:Ljava/lang/Throwable;
    throw v18

    .line 1699
    .end local v13           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v14           #methodWriteReplace:Ljava/lang/reflect/Method;
    .end local v15           #replObj:Ljava/lang/Object;
    :cond_e1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    move v5, v0

    if-eqz v5, :cond_125

    if-eqz p4, :cond_125

    .line 1701
    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1702
    .local v17, streamReplacement:Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_125

    .line 1704
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    move/from16 v3, p3

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v16

    .line 1707
    .restart local v16       #replacementHandle:I
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-eq v0, v1, :cond_115

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_115
    .catchall {:try_start_d4 .. :try_end_115} :catchall_c6

    .line 1744
    :cond_115
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v5, v16

    goto/16 :goto_6

    .line 1717
    .end local v16           #replacementHandle:I
    .end local v17           #streamReplacement:Ljava/lang/Object;
    :cond_125
    :try_start_125
    sget-object v5, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v7, v5, :cond_13d

    .line 1718
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_12e
    .catchall {:try_start_125 .. :try_end_12e} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 1722
    .restart local p1
    :cond_13d
    :try_start_13d
    sget-object v5, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v7, v5, :cond_155

    .line 1723
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_146
    .catchall {:try_start_13d .. :try_end_146} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 1727
    .restart local p1
    :cond_155
    :try_start_155
    sget-object v5, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-ne v7, v5, :cond_16d

    .line 1728
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_15e
    .catchall {:try_start_155 .. :try_end_15e} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 1732
    .restart local p1
    :cond_16d
    :try_start_16d
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 1733
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    :try_end_180
    .catchall {:try_start_16d .. :try_end_180} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 1737
    :cond_18f
    :try_start_18f
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Enum;

    move v5, v0

    if-eqz v5, :cond_1af

    .line 1738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    :try_end_1a0
    .catchall {:try_start_18f .. :try_end_1a0} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 1742
    :cond_1af
    :try_start_1af
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    :try_end_1ba
    .catchall {:try_start_1af .. :try_end_1ba} :catchall_c6

    move-result v5

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 381
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 382
    return-void
.end method

.method public defaultWriteObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 409
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 411
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 412
    return-void
.end method

.method protected drain()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    .line 422
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_c

    .line 449
    :cond_b
    :goto_b
    return-void

    .line 427
    :cond_c
    const/4 v0, 0x0

    .line 428
    .local v0, offset:I
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 430
    .local v2, written:[B
    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_44

    .line 431
    array-length v3, v2

    sub-int/2addr v3, v0

    if-le v3, v5, :cond_33

    move v1, v5

    .line 433
    .local v1, toWrite:I
    :goto_1b
    const/16 v3, 0x100

    if-ge v1, v3, :cond_37

    .line 434
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 435
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    int-to-byte v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 442
    :goto_2c
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 443
    add-int/2addr v0, v1

    .line 444
    goto :goto_13

    .line 431
    .end local v1           #toWrite:I
    :cond_33
    array-length v3, v2

    sub-int/2addr v3, v0

    move v1, v3

    goto :goto_1b

    .line 437
    .restart local v1       #toWrite:I
    :cond_37
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v4, 0x7a

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 438
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2c

    .line 447
    .end local v1           #toWrite:I
    :cond_44
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 448
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_b
.end method

.method protected enableReplaceObject(Z)Z
    .registers 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_d

    .line 496
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 497
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 498
    sget-object v2, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 501
    .end local v0           #currentManager:Ljava/lang/SecurityManager;
    :cond_d
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 502
    .local v1, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 503
    return v1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 517
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 518
    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 560
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 562
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_11

    .line 563
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    .line 565
    :cond_11
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    return-object p1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 630
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 632
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 633
    return-void
.end method

.method public useProtocolVersion(I)V
    .registers 5
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0}, Ljava/io/SerializationHandleMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set protocol version when stream in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_10
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_2f
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 680
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 731
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 732
    return-void
.end method

.method public write([B)V
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 694
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 695
    return-void
.end method

.method public write([BII)V
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
    .line 714
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 715
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 716
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 744
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 745
    return-void
.end method

.method public writeByte(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 757
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 758
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 772
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public writeChar(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 785
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 786
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 799
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1371
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 895
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 896
    return-void
.end method

.method public writeFields()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_a

    .line 953
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 955
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    .line 956
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1075
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1076
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1167
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1168
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1180
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1181
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1553
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1860
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-nez v0, :cond_a

    .line 1862
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1864
    :cond_a
    return-void
.end method

.method public writeShort(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1875
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1876
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1877
    return-void
.end method

.method protected writeStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1887
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1888
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1901
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1902
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1569
    return-void
.end method
