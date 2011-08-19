.class public Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.super Ljava/util/AbstractMap;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;,
        Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_SIZE:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f


# instance fields
.field private arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private arrSize:I

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private modCount:I

.field private size:I

.field threshold:I

.field private values:Ljava/util/Collection;
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
    .line 56
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(IF)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 65
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(IF)V

    .line 66
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5
    .parameter "initialCapacity"
    .parameter "initialLoadFactor"

    .prologue
    .line 75
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 76
    if-gez p1, :cond_10

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_10
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1d

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialLoadFactor should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1d
    iput p2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    .line 84
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_26

    .line 85
    add-int/lit8 p1, p1, -0x1

    .line 87
    :cond_26
    if-lez p1, :cond_3d

    move v0, p1

    :goto_29
    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 88
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 89
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 90
    return-void

    .line 87
    :cond_3d
    const/4 v0, 0x1

    goto :goto_29
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    return v0
.end method

.method static synthetic access$010(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/luni/util/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$308(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method private final findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 8
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 467
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    aget-object v3, v3, v4

    .line 481
    :goto_a
    return-object v3

    .line 470
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 471
    .local v1, hash:I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v2, v3, v4

    .line 472
    .local v2, index:I
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v3, v2

    .line 474
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_21
    if-eqz v0, :cond_40

    .line 475
    iget v3, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v3, :cond_3d

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move-object v3, v0

    .line 477
    goto :goto_a

    .line 479
    :cond_3d
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_21

    .line 481
    :cond_40
    const/4 v3, 0x0

    goto :goto_a
.end method

.method private final removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 12
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 486
    if-nez p1, :cond_25

    if-nez p2, :cond_25

    .line 487
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 488
    .local v2, index:I
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v5, v5, v2

    if-eqz v5, :cond_23

    .line 489
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v4, v5, v2

    .line 490
    .local v4, ret:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v7, v5, v2

    .line 491
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    sub-int/2addr v5, v8

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 492
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    move-object v5, v4

    .line 519
    .end local v4           #ret:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_22
    return-object v5

    :cond_23
    move-object v5, v7

    .line 495
    goto :goto_22

    .line 498
    .end local v2           #index:I
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v1, v5, v6

    .line 499
    .local v1, hash:I
    const v5, 0x7fffffff

    and-int/2addr v5, v1

    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v2, v5, v6

    .line 501
    .restart local v2       #index:I
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v5, v2

    .line 502
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    move-object v3, v0

    .line 503
    .local v3, prev:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_3c
    if-eqz v0, :cond_74

    .line 504
    iget v5, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v5, :cond_70

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 506
    if-ne v3, v0, :cond_6b

    .line 507
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v6, v5, v2

    .line 511
    :goto_5e
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    sub-int/2addr v5, v8

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 512
    iget v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    move-object v5, v0

    .line 513
    goto :goto_22

    .line 509
    :cond_6b
    iget-object v5, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v5, v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_5e

    .line 516
    :cond_70
    move-object v3, v0

    .line 517
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_3c

    :cond_74
    move-object v5, v7

    .line 519
    goto :goto_22
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v3, 0x0

    .line 116
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 117
    iput v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 118
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 220
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .registers 12
    .parameter "hashCode"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TK;TV;",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;)",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    .local p2, key1:Ljava/lang/Object;,"TE;"
    .local p3, key2:Ljava/lang/Object;,"TK;"
    .local p4, value:Ljava/lang/Object;,"TV;"
    .local p5, next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)V

    return-object v0
.end method

.method createEntrySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    return-object v0
.end method

.method createValueCollectionIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntrySetImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    .line 109
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    .line 232
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v0, :cond_9

    .line 233
    iget-object v1, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 235
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 242
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    .local p1, key1:Ljava/lang/Object;,"TE;"
    .local p2, key2:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    .line 142
    if-nez p1, :cond_36

    if-nez p2, :cond_36

    .line 143
    iget v10, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 144
    .local v10, index:I
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    if-nez v0, :cond_28

    .line 145
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    aput-object v0, v6, v10

    .line 146
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 147
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    move-object v0, v2

    .line 177
    :goto_27
    return-object v0

    .line 150
    :cond_28
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iget-object v11, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 151
    .local v11, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iput-object p3, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v0, v11

    .line 152
    goto :goto_27

    .line 156
    .end local v10           #index:I
    .end local v11           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v4, v0, v1

    .line 157
    .local v4, hash:I
    const v0, 0x7fffffff

    and-int/2addr v0, v4

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    rem-int v10, v0, v1

    .line 158
    .restart local v10       #index:I
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v9, v0, v10

    .line 160
    .local v9, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_4c
    if-eqz v9, :cond_6f

    .line 161
    iget v0, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_6c

    invoke-virtual {v9}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v9}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 163
    iget-object v11, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 164
    .restart local v11       #oldValue:Ljava/lang/Object;,"TV;"
    iput-object p3, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v0, v11

    .line 165
    goto :goto_27

    .line 167
    .end local v11           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_6c
    iget-object v9, v9, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_4c

    .line 170
    :cond_6f
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v8, v1, v10

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    aput-object v1, v0, v10

    .line 171
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    .line 172
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I

    .line 174
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    if-le v0, v1, :cond_94

    .line 175
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->rehash()V

    :cond_94
    move-object v0, v2

    .line 177
    goto :goto_27
.end method

.method rehash()V
    .registers 10

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    const v8, 0x7fffffff

    .line 186
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 187
    .local v3, newArrSize:I
    if-gez v3, :cond_10

    .line 188
    const v3, 0x7ffffffe

    .line 190
    :cond_10
    add-int/lit8 v6, v3, 0x1

    new-array v2, v6, [Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 192
    .local v2, newArr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_34

    .line 193
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aget-object v0, v6, v1

    .line 194
    .local v0, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_20
    if-eqz v0, :cond_31

    .line 195
    iget-object v5, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 197
    .local v5, next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    and-int/2addr v6, v8

    rem-int v4, v6, v3

    .line 198
    .local v4, newIndex:I
    aget-object v6, v2, v4

    iput-object v6, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 199
    aput-object v0, v2, v4

    .line 201
    move-object v0, v5

    .line 202
    goto :goto_20

    .line 192
    .end local v4           #newIndex:I
    .end local v5           #next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 204
    .end local v0           #entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :cond_34
    iget-object v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget v7, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 205
    iput v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    .line 209
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    if-ne v6, v8, :cond_49

    .line 210
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    iput v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    .line 212
    :cond_49
    iget v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arrSize:I

    int-to-float v6, v6

    iget v7, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->threshold:I

    .line 213
    iput-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 214
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key1"
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    .line 130
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 249
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->size:I

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
    .line 96
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValuesCollectionImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    .line 99
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method
