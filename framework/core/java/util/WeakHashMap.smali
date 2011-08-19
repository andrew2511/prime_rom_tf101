.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
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
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 188
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 189
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 200
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 201
    if-ltz p1, :cond_22

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 203
    if-nez p1, :cond_20

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 204
    const/16 v0, 0x1d4c

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 205
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 206
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 210
    return-void

    :cond_20
    move v0, p1

    .line 203
    goto :goto_b

    .line 208
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 224
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 225
    if-ltz p1, :cond_2a

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2a

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 227
    if-nez p1, :cond_28

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 228
    const v0, 0x461c4000

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    .line 229
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 230
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 234
    return-void

    :cond_28
    move v0, p1

    .line 227
    goto :goto_10

    .line 232
    :cond_2a
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
    .line 244
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_9
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 245
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 246
    return-void

    .line 244
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9
.end method

.method private computeMaxSize()V
    .registers 5

    .prologue
    .line 267
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 268
    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .registers 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

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
    .line 728
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 729
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 731
    :cond_9
    return-void
.end method

.method private rehash()V
    .registers 9

    .prologue
    .line 641
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    mul-int/lit8 v3, v6, 0x2

    .line 642
    .local v3, length:I
    if-nez v3, :cond_8

    .line 643
    const/4 v3, 0x1

    .line 645
    :cond_8
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 646
    .local v4, newData:[Ljava/util/WeakHashMap$Entry;,"[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_34

    .line 647
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v6, v1

    .line 648
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_16
    if-eqz v0, :cond_31

    .line 649
    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    move v2, v6

    .line 651
    .local v2, index:I
    :goto_1e
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 652
    .local v5, next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 653
    aput-object v0, v4, v2

    .line 654
    move-object v0, v5

    .line 655
    goto :goto_16

    .line 649
    .end local v2           #index:I
    .end local v5           #next:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_28
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v3

    move v2, v6

    goto :goto_1e

    .line 646
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 657
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_34
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    .line 658
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    .line 659
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 256
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-lez v0, :cond_1b

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 258
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 260
    :cond_13
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_13

    .line 264
    :cond_1b
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 280
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 528
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 529
    if-eqz p1, :cond_2a

    .line 530
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v3

    .local v1, i:I
    :cond_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4a

    .line 531
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 532
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_11
    if-eqz v0, :cond_9

    .line 533
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 534
    .local v2, key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_1d

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_27

    :cond_1d
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v3, v4

    .line 553
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :goto_26
    return v3

    .line 538
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    :cond_27
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 539
    goto :goto_11

    .line 542
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_2a
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v3

    .restart local v1       #i:I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4a

    .line 543
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 544
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_35
    if-eqz v0, :cond_2d

    .line 545
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 546
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    if-nez v2, :cond_41

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_47

    :cond_41
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_47

    move v3, v4

    .line 547
    goto :goto_26

    .line 549
    :cond_47
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 550
    goto :goto_35

    .line 553
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    :cond_4a
    const/4 v3, 0x0

    goto :goto_26
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
    .line 293
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 294
    new-instance v0, Ljava/util/WeakHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 473
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 474
    if-eqz p1, :cond_2b

    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    rem-int v1, v2, v3

    .line 476
    .local v1, index:I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v2, v1

    .line 477
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_29

    .line 478
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 479
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 492
    .end local v1           #index:I
    :goto_25
    return-object v2

    .line 481
    .restart local v1       #index:I
    :cond_26
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_17

    :cond_29
    move-object v2, v4

    .line 483
    goto :goto_25

    .line 485
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_2b
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 486
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_30
    if-eqz v0, :cond_3c

    .line 487
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_39

    .line 488
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_25

    .line 490
    :cond_39
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_30

    :cond_3c
    move-object v2, v4

    .line 492
    goto :goto_25
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 497
    if-eqz p1, :cond_2a

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    rem-int v1, v2, v3

    .line 499
    .local v1, index:I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v2, v1

    .line 500
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_17
    if-eqz v0, :cond_28

    .line 501
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v2, v0

    .line 515
    .end local v1           #index:I
    :goto_24
    return-object v2

    .line 504
    .restart local v1       #index:I
    :cond_25
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_17

    :cond_28
    move-object v2, v4

    .line 506
    goto :goto_24

    .line 508
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1           #index:I
    :cond_2a
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 509
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2f
    if-eqz v0, :cond_3a

    .line 510
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_37

    move-object v2, v0

    .line 511
    goto :goto_24

    .line 513
    :cond_37
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2f

    :cond_3a
    move-object v2, v4

    .line 515
    goto :goto_24
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 563
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 351
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 352
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 353
    new-instance v0, Ljava/util/WeakHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 408
    :cond_e
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .registers 3

    .prologue
    .line 569
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    .local v0, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 570
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    goto :goto_0

    .line 572
    :cond_e
    return-void
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
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 609
    const/4 v1, 0x0

    .line 611
    .local v1, index:I
    if-eqz p1, :cond_27

    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 613
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 614
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 615
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 618
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_27
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v5

    .line 619
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2b
    if-eqz v0, :cond_34

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_34

    .line 620
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2b

    .line 623
    :cond_34
    if-nez v0, :cond_6a

    .line 624
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 625
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v3, v4, :cond_4c

    .line 626
    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    .line 627
    if-nez p1, :cond_5f

    move v1, v5

    .line 630
    :cond_4c
    :goto_4c
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 631
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v3, v3, v1

    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 632
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aput-object v0, v3, v1

    .line 633
    const/4 v3, 0x0

    .line 637
    :goto_5e
    return-object v3

    .line 627
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int/2addr v3, v4

    move v1, v3

    goto :goto_4c

    .line 635
    :cond_6a
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 636
    .local v2, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    move-object v3, v2

    .line 637
    goto :goto_5e
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
    .line 673
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 674
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, index:I
    const/4 v2, 0x0

    .line 689
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_28

    .line 690
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 691
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 692
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 693
    move-object v2, v0

    .line 694
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 697
    .end local v0           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_28
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 698
    .restart local v0       #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2d
    if-eqz v0, :cond_37

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_37

    .line 699
    move-object v2, v0

    .line 700
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2d

    .line 703
    :cond_37
    if-eqz v0, :cond_55

    .line 704
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 705
    if-nez v2, :cond_50

    .line 706
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 710
    :goto_47
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 711
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 713
    :goto_4f
    return-object v3

    .line 708
    :cond_50
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_47

    .line 713
    :cond_55
    const/4 v3, 0x0

    goto :goto_4f
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, toRemove:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 576
    .local v2, last:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 577
    .local v1, index:I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    .line 580
    .local v0, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_28

    .line 581
    if-ne p1, v0, :cond_2e

    .line 582
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 583
    if-nez v2, :cond_29

    .line 584
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    .line 588
    :goto_22
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    .line 594
    :cond_28
    return-void

    .line 586
    :cond_29
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_22

    .line 591
    :cond_2e
    move-object v2, v0

    .line 592
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_10
.end method

.method public size()I
    .registers 2

    .prologue
    .line 723
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 724
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

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
    .line 432
    .local p0, this:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    .line 433
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_e

    .line 434
    new-instance v0, Ljava/util/WeakHashMap$3;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    .line 460
    :cond_e
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
