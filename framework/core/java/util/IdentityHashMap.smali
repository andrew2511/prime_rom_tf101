.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x15

.field private static final NULL_OBJECT:Ljava/lang/Object; = null

.field private static final loadFactor:I = 0x1d4c

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field transient modCount:I

.field size:I

.field transient threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 253
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 254
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 76
    iput v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 264
    if-ltz p1, :cond_1b

    .line 265
    iput v0, p0, Ljava/util/IdentityHashMap;->size:I

    .line 266
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 267
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 271
    return-void

    .line 269
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_9
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 305
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 306
    return-void

    .line 304
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9
.end method

.method static synthetic access$000(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method private computeElementArraySize()I
    .registers 6

    .prologue
    .line 280
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v1, p0, Ljava/util/IdentityHashMap;->threshold:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1d4c

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 283
    .local v0, arraySize:I
    if-gez v0, :cond_10

    neg-int v1, v0

    :goto_f
    return v1

    :cond_10
    move v1, v0

    goto :goto_f
.end method

.method private computeMaxSize()V
    .registers 5

    .prologue
    .line 527
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/16 v2, 0x1d4c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 528
    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 8
    .parameter "key"
    .parameter "array"

    .prologue
    .line 428
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    array-length v2, p2

    .line 429
    .local v2, length:I
    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    .line 430
    .local v0, index:I
    add-int v3, v0, v2

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    rem-int v1, v3, v2

    .line 431
    .local v1, last:I
    :goto_b
    if-eq v0, v1, :cond_15

    .line 432
    aget-object v3, p2, v0

    if-eq v3, p1, :cond_15

    aget-object v3, p2, v0

    if-nez v3, :cond_16

    .line 441
    :cond_15
    return v0

    .line 439
    :cond_16
    add-int/lit8 v3, v0, 0x2

    rem-int v0, v3, v2

    goto :goto_b
.end method

.method private getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 411
    .local v0, key:Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    aget-object v1, v2, v3

    .line 413
    .local v1, value:Ljava/lang/Object;
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v0, v2, :cond_f

    .line 414
    const/4 v0, 0x0

    .line 416
    .end local v0           #key:Ljava/lang/Object;
    :cond_f
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 417
    const/4 v1, 0x0

    .line 420
    .end local v1           #value:Ljava/lang/Object;
    :cond_14
    new-instance v2, Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;-><init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 393
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 396
    :cond_4
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 397
    .local v0, index:I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_15

    .line 398
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v1

    .line 401
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .registers 5
    .parameter "key"
    .parameter "length"

    .prologue
    .line 445
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    rem-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getThreshold(I)I
    .registers 3
    .parameter "maxSize"

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x3

    .line 276
    if-le p1, v0, :cond_4

    move v0, p1

    :cond_4
    return v0
.end method

.method private massageValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    move-object v0, p1

    goto :goto_5
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "s"

    .prologue
    .line 294
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 824
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 826
    :cond_9
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 811
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 812
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 813
    .local v2, savedSize:I
    const/16 v3, 0x15

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v3

    iput v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 814
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 815
    move v0, v2

    .local v0, i:I
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2a

    .line 816
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 817
    .local v1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 819
    .end local v1           #key:Ljava/lang/Object;,"TK;"
    :cond_2a
    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    .line 820
    return-void
.end method

.method private rehash()V
    .registers 9

    .prologue
    .line 508
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v4, v5, 0x2

    .line 509
    .local v4, newlength:I
    if-nez v4, :cond_8

    .line 510
    const/4 v4, 0x1

    .line 512
    :cond_8
    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 513
    .local v3, newData:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v0, v5, :cond_2b

    .line 514
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v5, v0

    .line 515
    .local v2, key:Ljava/lang/Object;
    if-eqz v2, :cond_28

    .line 517
    invoke-direct {p0, v2, v3}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 518
    .local v1, index:I
    aput-object v2, v3, v1

    .line 519
    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    .line 513
    .end local v1           #index:I
    :cond_28
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 522
    .end local v2           #key:Ljava/lang/Object;
    :cond_2b
    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 523
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeMaxSize()V

    .line 524
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 799
    iget v2, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 800
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 801
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 802
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/MapEntry;

    .line 803
    .local v0, entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<**>;"
    iget-object v2, v0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 804
    iget-object v2, v0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_10

    .line 806
    .end local v0           #entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<**>;"
    :cond_27
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 321
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/IdentityHashMap;->size:I

    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 323
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 325
    :cond_11
    iget v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 326
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 764
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    .line 766
    .local v0, cloneHashMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    .line 767
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 769
    return-object v0

    .line 770
    .end local v0           #cloneHashMap:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    :catch_1c
    move-exception v2

    move-object v1, v2

    .line 771
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 338
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 339
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 342
    :cond_4
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 343
    .local v0, index:I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 356
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 357
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 360
    :cond_4
    const/4 v0, 0x1

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 361
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_12

    .line 362
    const/4 v1, 0x1

    .line 365
    :goto_11
    return v1

    .line 360
    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 365
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 738
    if-ne p0, p1, :cond_5

    .line 739
    const/4 v3, 0x1

    .line 751
    :goto_4
    return v3

    .line 741
    :cond_5
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_26

    .line 742
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 743
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_19

    move v3, v5

    .line 744
    goto :goto_4

    .line 747
    :cond_19
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 749
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    .end local v2           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_26
    move v3, v5

    .line 751
    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 378
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 381
    :cond_4
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 383
    .local v0, index:I
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1b

    .line 384
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 385
    .local v1, result:Ljava/lang/Object;
    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 388
    .end local v1           #result:Ljava/lang/Object;
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 784
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 612
    new-instance v0, Ljava/util/IdentityHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$1;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 648
    :cond_b
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    move-object v0, p1

    .line 461
    .local v0, _key:Ljava/lang/Object;
    move-object v1, p2

    .line 462
    .local v1, _value:Ljava/lang/Object;
    if-nez v0, :cond_6

    .line 463
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 466
    :cond_6
    if-nez v1, :cond_a

    .line 467
    sget-object v1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 470
    :cond_a
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 473
    .local v2, index:I
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eq v4, v0, :cond_3a

    .line 474
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 475
    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->size:I

    iget v5, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-le v4, v5, :cond_2f

    .line 476
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->rehash()V

    .line 477
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 481
    :cond_2f
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 482
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 486
    :cond_3a
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v4, v5

    .line 487
    .local v3, result:Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aput-object v1, v4, v5

    .line 489
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 505
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 540
    if-nez p1, :cond_7

    .line 541
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    .line 547
    :cond_7
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v7}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    .local v4, next:I
    move v2, v4

    .line 549
    .local v2, index:I
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v7, v7, v2

    if-eq v7, p1, :cond_16

    move-object v7, v13

    .line 587
    :goto_15
    return-object v7

    .line 554
    :cond_16
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    aget-object v6, v7, v8

    .line 558
    .local v6, result:Ljava/lang/Object;
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v3, v7

    .line 560
    .local v3, length:I
    :cond_1f
    :goto_1f
    add-int/lit8 v7, v4, 0x2

    rem-int v4, v7, v3

    .line 561
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v5, v7, v4

    .line 562
    .local v5, object:Ljava/lang/Object;
    if-nez v5, :cond_43

    .line 580
    iget v7, p0, Ljava/util/IdentityHashMap;->size:I

    sub-int/2addr v7, v11

    iput v7, p0, Ljava/util/IdentityHashMap;->size:I

    .line 581
    iget v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 584
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v13, v7, v2

    .line 585
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    aput-object v13, v7, v8

    .line 587
    invoke-direct {p0, v6}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_15

    .line 566
    :cond_43
    invoke-direct {p0, v5, v3}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    .line 567
    .local v0, hash:I
    if-le v0, v2, :cond_65

    move v1, v11

    .line 568
    .local v1, hashedOk:Z
    :goto_4a
    if-ge v4, v2, :cond_69

    .line 569
    if-nez v1, :cond_50

    if-gt v0, v4, :cond_67

    :cond_50
    move v1, v11

    .line 573
    :goto_51
    if-nez v1, :cond_1f

    .line 574
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v5, v7, v2

    .line 575
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 576
    move v2, v4

    goto :goto_1f

    .end local v1           #hashedOk:Z
    :cond_65
    move v1, v12

    .line 567
    goto :goto_4a

    .restart local v1       #hashedOk:Z
    :cond_67
    move v1, v12

    .line 569
    goto :goto_51

    .line 571
    :cond_69
    if-eqz v1, :cond_6f

    if-gt v0, v4, :cond_6f

    move v1, v11

    :goto_6e
    goto :goto_51

    :cond_6f
    move v1, v12

    goto :goto_6e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 794
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 673
    new-instance v0, Ljava/util/IdentityHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$2;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    .line 712
    :cond_b
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
