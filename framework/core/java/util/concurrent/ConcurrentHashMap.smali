.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentHashMap$Values;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySet;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 651
    const/high16 v0, 0x3f40

    invoke-direct {p0, v1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 652
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 643
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 644
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 630
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 631
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 11
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "concurrencyLevel"

    .prologue
    .line 584
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 585
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_c

    if-ltz p1, :cond_c

    if-gtz p3, :cond_12

    .line 586
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 588
    :cond_12
    const/high16 v5, 0x1

    if-le p3, v5, :cond_18

    .line 589
    const/high16 p3, 0x1

    .line 592
    :cond_18
    const/4 v3, 0x0

    .line 593
    .local v3, sshift:I
    const/4 v4, 0x1

    .line 594
    .local v4, ssize:I
    :goto_1a
    if-ge v4, p3, :cond_21

    .line 595
    add-int/lit8 v3, v3, 0x1

    .line 596
    shl-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 598
    :cond_21
    const/16 v5, 0x20

    sub-int/2addr v5, v3

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    .line 599
    const/4 v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    .line 600
    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v5

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 602
    const/high16 v5, 0x4000

    if-le p1, v5, :cond_37

    .line 603
    const/high16 p1, 0x4000

    .line 604
    :cond_37
    div-int v0, p1, v4

    .line 605
    .local v0, c:I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_3f

    .line 606
    add-int/lit8 v0, v0, 0x1

    .line 607
    :cond_3f
    const/4 v1, 0x1

    .line 608
    .local v1, cap:I
    :goto_40
    if-ge v1, v0, :cond_45

    .line 609
    shl-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 611
    :cond_45
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_57

    .line 612
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 613
    :cond_57
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    const/16 v2, 0x10

    const/high16 v1, 0x3f40

    .line 663
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 666
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 667
    return-void
.end method

.method private static hash(I)I
    .registers 3
    .parameter "h"

    .prologue
    .line 158
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 159
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 160
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 161
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 162
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 163
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1273
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 1277
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 1276
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1286
    .local v1, key:Ljava/lang/Object;,"TK;"
    .local v2, value:Ljava/lang/Object;,"TV;"
    :cond_16
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    .end local v1           #key:Ljava/lang/Object;,"TK;"
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_19
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1283
    .restart local v1       #key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1284
    .restart local v2       #value:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_16

    .line 1288
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1245
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1247
    const/4 v2, 0x0

    .local v2, k:I
    :goto_5
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_36

    .line 1248
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v5, v2

    .line 1249
    .local v3, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 1251
    :try_start_11
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1252
    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v4

    if-ge v1, v5, :cond_2b

    .line 1253
    aget-object v0, v4, v1

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_28

    .line 1254
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1255
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1253
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_31

    goto :goto_19

    .line 1252
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1259
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2b
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1259
    .end local v1           #i:I
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_31
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v5

    .line 1262
    .end local v3           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_36
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1263
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1264
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 967
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 968
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    :cond_10
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 862
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 781
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 782
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 13
    .parameter "value"

    .prologue
    .line 797
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 798
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 802
    :cond_8
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 803
    .local v7, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    array-length v9, v7

    new-array v5, v9, [I

    .line 806
    .local v5, mc:[I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_e
    const/4 v9, 0x2

    if-ge v4, v9, :cond_4d

    .line 807
    const/4 v8, 0x0

    .line 808
    .local v8, sum:I
    const/4 v6, 0x0

    .line 809
    .local v6, mcsum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    array-length v9, v7

    if-ge v3, v9, :cond_2f

    .line 810
    aget-object v9, v7, v3

    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 811
    .local v0, c:I
    aget-object v9, v7, v3

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v5, v3

    add-int/2addr v6, v9

    .line 812
    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 813
    const/4 v9, 0x1

    .line 843
    .end local v0           #c:I
    .end local v6           #mcsum:I
    .end local v8           #sum:I
    :goto_2b
    return v9

    .line 809
    .restart local v0       #c:I
    .restart local v6       #mcsum:I
    .restart local v8       #sum:I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 815
    .end local v0           #c:I
    :cond_2f
    const/4 v1, 0x1

    .line 816
    .local v1, cleanSweep:Z
    if-eqz v6, :cond_43

    .line 817
    const/4 v3, 0x0

    :goto_33
    array-length v9, v7

    if-ge v3, v9, :cond_43

    .line 818
    aget-object v9, v7, v3

    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 819
    .restart local v0       #c:I
    aget v9, v5, v3

    aget-object v10, v7, v3

    iget v10, v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_47

    .line 820
    const/4 v1, 0x0

    .line 825
    .end local v0           #c:I
    :cond_43
    if-eqz v1, :cond_4a

    .line 826
    const/4 v9, 0x0

    goto :goto_2b

    .line 817
    .restart local v0       #c:I
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 806
    .end local v0           #c:I
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 829
    .end local v1           #cleanSweep:Z
    .end local v3           #i:I
    .end local v6           #mcsum:I
    .end local v8           #sum:I
    :cond_4d
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4e
    array-length v9, v7

    if-ge v3, v9, :cond_59

    .line 830
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 831
    :cond_59
    const/4 v2, 0x0

    .line 833
    .local v2, found:Z
    const/4 v3, 0x0

    :goto_5b
    :try_start_5b
    array-length v9, v7

    if-ge v3, v9, :cond_67

    .line 834
    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_76

    move-result v9

    if-eqz v9, :cond_73

    .line 835
    const/4 v2, 0x1

    .line 840
    :cond_67
    const/4 v3, 0x0

    :goto_68
    array-length v9, v7

    if-ge v3, v9, :cond_84

    .line 841
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 833
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 840
    :catchall_76
    move-exception v9

    const/4 v3, 0x0

    :goto_78
    array-length v10, v7

    if-ge v3, v10, :cond_83

    .line 841
    aget-object v10, v7, v3

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    :cond_83
    throw v9

    :cond_84
    move v9, v2

    .line 843
    goto :goto_2b
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
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
    .line 1030
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1031
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 768
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 8

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 675
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 685
    .local v3, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    array-length v4, v3

    new-array v1, v4, [I

    .line 686
    .local v1, mc:[I
    const/4 v2, 0x0

    .line 687
    .local v2, mcsum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_1d

    .line 688
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v4, :cond_13

    move v4, v6

    .line 703
    :goto_12
    return v4

    .line 691
    :cond_13
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v4, v1, v0

    add-int/2addr v2, v4

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 696
    :cond_1d
    if-eqz v2, :cond_36

    .line 697
    const/4 v0, 0x0

    :goto_20
    array-length v4, v3

    if-ge v0, v4, :cond_36

    .line 698
    aget-object v4, v3, v0

    iget v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v4, :cond_31

    aget v4, v1, v0

    aget-object v5, v3, v0

    iget v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v4, v5, :cond_33

    :cond_31
    move v4, v6

    .line 700
    goto :goto_12

    .line 697
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 703
    :cond_36
    const/4 v4, 0x1

    goto :goto_12
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 988
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 989
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 880
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 881
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 882
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 909
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 894
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 895
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 896
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 922
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 931
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 932
    .local v0, hash:I
    if-nez p2, :cond_d

    move v1, v2

    .line 934
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_c

    :cond_19
    move v1, v2

    goto :goto_c
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 958
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 959
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 960
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    if-eqz p2, :cond_4

    if-nez p3, :cond_a

    .line 944
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 945
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 946
    .local v0, hash:I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .registers 5
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 12

    .prologue
    .line 714
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 715
    .local v6, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const-wide/16 v7, 0x0

    .line 716
    .local v7, sum:J
    const-wide/16 v0, 0x0

    .line 717
    .local v0, check:J
    array-length v9, v6

    new-array v4, v9, [I

    .line 720
    .local v4, mc:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_a
    const/4 v9, 0x2

    if-ge v3, v9, :cond_40

    .line 721
    const-wide/16 v0, 0x0

    .line 722
    const-wide/16 v7, 0x0

    .line 723
    const/4 v5, 0x0

    .line 724
    .local v5, mcsum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v9, v6

    if-ge v2, v9, :cond_26

    .line 725
    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 726
    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v4, v2

    add-int/2addr v5, v9

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 728
    :cond_26
    if-eqz v5, :cond_3c

    .line 729
    const/4 v2, 0x0

    :goto_29
    array-length v9, v6

    if-ge v2, v9, :cond_3c

    .line 730
    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 731
    aget v9, v4, v2

    aget-object v10, v6, v2

    iget v10, v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_52

    .line 732
    const-wide/16 v0, -0x1

    .line 737
    :cond_3c
    cmp-long v9, v0, v7

    if-nez v9, :cond_55

    .line 740
    .end local v2           #i:I
    .end local v5           #mcsum:I
    :cond_40
    cmp-long v9, v0, v7

    if-eqz v9, :cond_71

    .line 741
    const-wide/16 v7, 0x0

    .line 742
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    array-length v9, v6

    if-ge v2, v9, :cond_58

    .line 743
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 729
    .restart local v5       #mcsum:I
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 720
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 744
    .end local v5           #mcsum:I
    :cond_58
    const/4 v2, 0x0

    :goto_59
    array-length v9, v6

    if-ge v2, v9, :cond_65

    .line 745
    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 746
    :cond_65
    const/4 v2, 0x0

    :goto_66
    array-length v9, v6

    if-ge v2, v9, :cond_71

    .line 747
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 749
    .end local v2           #i:I
    :cond_71
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-lez v9, :cond_7c

    .line 750
    const v9, 0x7fffffff

    .line 752
    :goto_7b
    return v9

    :cond_7c
    long-to-int v9, v7

    goto :goto_7b
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 1010
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Values;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$Values;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_5
.end method
