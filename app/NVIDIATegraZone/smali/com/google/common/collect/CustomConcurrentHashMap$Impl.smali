.class Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$ValueIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V
    .locals 9
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 622
    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v0

    .line 623
    .local v0, concurrencyLevel:I
    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v2

    .line 625
    .local v2, initialCapacity:I
    const/high16 v7, 0x1

    if-le v0, v7, :cond_0

    .line 626
    const/high16 v0, 0x1

    .line 630
    :cond_0
    const/4 v5, 0x0

    .line 631
    .local v5, segmentShift:I
    const/4 v4, 0x1

    .line 632
    .local v4, segmentCount:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 633
    add-int/lit8 v5, v5, 0x1

    .line 634
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    :cond_1
    const/16 v7, 0x20

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 637
    const/4 v7, 0x1

    sub-int v7, v4, v7

    iput v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 638
    invoke-virtual {p0, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 640
    const/high16 v7, 0x4000

    if-le v2, v7, :cond_2

    .line 641
    const/high16 v2, 0x4000

    .line 644
    :cond_2
    div-int v3, v2, v4

    .line 645
    .local v3, segmentCapacity:I
    mul-int v7, v3, v4

    if-ge v7, v2, :cond_3

    .line 646
    add-int/lit8 v3, v3, 0x1

    .line 649
    :cond_3
    const/4 v6, 0x1

    .line 650
    .local v6, segmentSize:I
    :goto_1
    if-ge v6, v3, :cond_4

    .line 651
    shl-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 653
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 654
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v8, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v8, p0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v8, v7, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 657
    :cond_5
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 659
    new-instance v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v7, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setInternals(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V

    .line 660
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1991
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1992
    .local v3, initialCapacity:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1993
    .local v0, concurrencyLevel:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1995
    .local v9, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    const/high16 v11, 0x1

    if-le v0, v11, :cond_0

    .line 1996
    const/high16 v0, 0x1

    .line 2000
    :cond_0
    const/4 v7, 0x0

    .line 2001
    .local v7, segmentShift:I
    const/4 v6, 0x1

    .line 2002
    .local v6, segmentCount:I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 2003
    add-int/lit8 v7, v7, 0x1

    .line 2004
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2006
    :cond_1
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    const/16 v12, 0x20

    sub-int/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2007
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    sub-int v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2008
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    const/high16 v11, 0x4000

    if-le v3, v11, :cond_2

    .line 2011
    const/high16 v3, 0x4000

    .line 2014
    :cond_2
    div-int v5, v3, v6

    .line 2015
    .local v5, segmentCapacity:I
    mul-int v11, v5, v6

    if-ge v11, v3, :cond_3

    .line 2016
    add-int/lit8 v5, v5, 0x1

    .line 2019
    :cond_3
    const/4 v8, 0x1

    .line 2020
    .local v8, segmentSize:I
    :goto_1
    if-ge v8, v5, :cond_4

    .line 2021
    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2023
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v11, v11

    if-ge v2, v11, :cond_5

    .line 2024
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v12, p0, v8}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v12, v11, v2

    .line 2023
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2027
    :cond_5
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    invoke-virtual {v11, p0, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2030
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 2031
    .local v4, key:Ljava/lang/Object;,"TK;"
    if-nez v4, :cond_6

    .line 2040
    return-void

    .line 2034
    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    .line 2035
    .local v10, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v4, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2037
    .end local v0           #concurrencyLevel:I
    .end local v2           #i:I
    .end local v3           #initialCapacity:I
    .end local v4           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #segmentCapacity:I
    .end local v6           #segmentCount:I
    .end local v7           #segmentShift:I
    .end local v8           #segmentSize:I
    .end local v9           #strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    .end local v10           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 2038
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1954
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1955
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1956
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1957
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1958
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1959
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1961
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1962
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1588
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .local v0, arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1589
    .local v3, segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    .end local v3           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 1371
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1372
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1375
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter "value"

    .prologue
    .line 1393
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1394
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "value"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1399
    :cond_0
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1400
    .local v11, segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    array-length v12, v11

    new-array v8, v12, [I

    .line 1403
    .local v8, mc:[I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    const/4 v12, 0x2

    if-ge v6, v12, :cond_6

    .line 1404
    const/4 v9, 0x0

    .line 1405
    .local v9, mcsum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v12, v11

    if-ge v4, v12, :cond_2

    .line 1407
    aget-object v12, v11, v4

    iget v1, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1408
    .local v1, c:I
    aget-object v12, v11, v4

    iget v12, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v12, v8, v4

    add-int/2addr v9, v12

    .line 1409
    aget-object v12, v11, v4

    invoke-virtual {v12, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1410
    const/4 v12, 0x1

    .line 1445
    .end local v1           #c:I
    .end local v4           #i:I
    .end local v9           #mcsum:I
    :goto_2
    return v12

    .line 1405
    .restart local v1       #c:I
    .restart local v4       #i:I
    .restart local v9       #mcsum:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1413
    .end local v1           #c:I
    :cond_2
    const/4 v2, 0x1

    .line 1414
    .local v2, cleanSweep:Z
    if-eqz v9, :cond_3

    .line 1415
    const/4 v4, 0x0

    :goto_3
    array-length v12, v11

    if-ge v4, v12, :cond_3

    .line 1417
    aget-object v12, v11, v4

    iget v1, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1418
    .restart local v1       #c:I
    aget v12, v8, v4

    aget-object v13, v11, v4

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v12, v13, :cond_4

    .line 1419
    const/4 v2, 0x0

    .line 1424
    .end local v1           #c:I
    :cond_3
    if-eqz v2, :cond_5

    .line 1425
    const/4 v12, 0x0

    goto :goto_2

    .line 1415
    .restart local v1       #c:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1403
    .end local v1           #c:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1429
    .end local v2           #cleanSweep:Z
    .end local v4           #i:I
    .end local v9           #mcsum:I
    :cond_6
    move-object v0, v11

    .local v0, arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_7

    aget-object v10, v0, v5

    .line 1430
    .local v10, segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1429
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1432
    .end local v10           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_7
    const/4 v3, 0x0

    .line 1434
    .local v3, found:Z
    move-object v0, v11

    :try_start_0
    array-length v7, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_8

    aget-object v10, v0, v5

    .line 1435
    .restart local v10       #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_9

    .line 1436
    const/4 v3, 0x1

    .line 1441
    .end local v10           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_8
    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_b

    aget-object v10, v0, v5

    .line 1442
    .restart local v10       #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1441
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1434
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1441
    .end local v10           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :catchall_0
    move-exception v12

    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_a

    aget-object v10, v0, v5

    .line 1442
    .restart local v10       #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1441
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .end local v10           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_a
    throw v12

    :cond_b
    move v12, v3

    .line 1445
    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 1659
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1660
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1352
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 663
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->hashKey(Ljava/lang/Object;)I

    move-result v0

    .line 664
    .local v0, h:I
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->access$000(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    const/4 v6, 0x0

    .line 1251
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1260
    .local v3, segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    array-length v4, v3

    new-array v1, v4, [I

    .line 1261
    .local v1, mc:[I
    const/4 v2, 0x0

    .line 1262
    .local v2, mcsum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1263
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v4, :cond_0

    move v4, v6

    .line 1279
    :goto_1
    return v4

    .line 1266
    :cond_0
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v4, v1, v0

    add-int/2addr v2, v4

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    if-eqz v2, :cond_4

    .line 1273
    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 1274
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v4, :cond_2

    aget v4, v1, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v4, v5, :cond_3

    :cond_2
    move v4, v6

    .line 1275
    goto :goto_1

    .line 1273
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1279
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1612
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1613
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .parameter "ssize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    check-cast p0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    check-cast p0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1466
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1467
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    :cond_0
    if-nez p2, :cond_1

    .line 1470
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1472
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1473
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1506
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1508
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1485
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1486
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    :cond_0
    if-nez p2, :cond_1

    .line 1489
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1492
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1523
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1524
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1526
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1527
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1537
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1538
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1541
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1573
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1574
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1576
    :cond_0
    if-nez p2, :cond_1

    .line 1577
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1580
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1551
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1552
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1554
    :cond_0
    if-nez p2, :cond_1

    .line 1555
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "oldValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1557
    :cond_1
    if-nez p3, :cond_2

    .line 1558
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "newValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1560
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1561
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 15

    .prologue
    .line 1291
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1292
    .local v10, segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    const-wide/16 v11, 0x0

    .line 1293
    .local v11, sum:J
    const-wide/16 v1, 0x0

    .line 1294
    .local v1, check:J
    array-length v13, v10

    new-array v7, v13, [I

    .line 1297
    .local v7, mc:[I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    const/4 v13, 0x2

    if-ge v5, v13, :cond_2

    .line 1298
    const-wide/16 v1, 0x0

    .line 1299
    const-wide/16 v11, 0x0

    .line 1300
    const/4 v8, 0x0

    .line 1301
    .local v8, mcsum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v13, v10

    if-ge v3, v13, :cond_0

    .line 1302
    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 1303
    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v13, v7, v3

    add-int/2addr v8, v13

    .line 1301
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1305
    :cond_0
    if-eqz v8, :cond_1

    .line 1306
    const/4 v3, 0x0

    :goto_2
    array-length v13, v10

    if-ge v3, v13, :cond_1

    .line 1307
    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v1, v13

    .line 1308
    aget v13, v7, v3

    aget-object v14, v10, v3

    iget v14, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v13, v14, :cond_3

    .line 1309
    const-wide/16 v1, -0x1

    .line 1314
    :cond_1
    cmp-long v13, v1, v11

    if-nez v13, :cond_4

    .line 1318
    .end local v3           #i:I
    .end local v8           #mcsum:I
    :cond_2
    cmp-long v13, v1, v11

    if-eqz v13, :cond_7

    .line 1319
    const-wide/16 v11, 0x0

    .line 1320
    move-object v0, v10

    .local v0, arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v9, v0, v4

    .line 1321
    .local v9, segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1320
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1306
    .end local v0           #arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .restart local v3       #i:I
    .restart local v8       #mcsum:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1297
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1323
    .end local v3           #i:I
    .end local v8           #mcsum:I
    .restart local v0       #arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    aget-object v9, v0, v4

    .line 1324
    .restart local v9       #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget v13, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 1323
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1326
    .end local v9           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_6
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_7

    aget-object v9, v0, v4

    .line 1327
    .restart local v9       #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1330
    .end local v0           #arr$:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_7
    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v11, v13

    if-lez v13, :cond_8

    .line 1331
    const v13, 0x7fffffff

    .line 1333
    :goto_6
    return v13

    :cond_8
    long-to-int v13, v11

    goto :goto_6
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1637
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
