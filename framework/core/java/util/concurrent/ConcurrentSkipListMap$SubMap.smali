.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final hiInclusive:Z

.field private final isDescending:Z

.field private transient keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final loInclusive:Z

.field private final m:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .parameter "isDescending"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;TK;ZTK;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2452
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, map:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, fromKey:Ljava/lang/Object;,"TK;"
    .local p4, toKey:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2453
    if-eqz p2, :cond_15

    if-eqz p4, :cond_15

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_15

    .line 2455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2456
    :cond_15
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2457
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2458
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2459
    iput-boolean p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2460
    iput-boolean p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2461
    iput-boolean p6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    .line 2462
    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2423
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    return v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2423
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2423
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2423
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkKeyBounds(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2489
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_8

    .line 2490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2491
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_16
    return-void
.end method

.method private getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .registers 8
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v4, 0x0

    .line 2616
    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v3, :cond_b

    .line 2617
    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_17

    .line 2618
    or-int/lit8 p2, p2, 0x2

    .line 2622
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2623
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1d

    move-object v3, v4

    .line 2633
    :goto_16
    return-object v3

    .line 2620
    :cond_17
    const/4 v3, 0x2

    xor-int/lit8 v3, v3, -0x1

    and-int/lit8 p2, p2, -0x3

    goto :goto_b

    .line 2623
    :cond_1d
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_16

    .line 2624
    :cond_22
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2625
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_31

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v3

    goto :goto_16

    :cond_31
    move-object v3, v4

    goto :goto_16

    .line 2627
    :cond_33
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2628
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_43

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    :cond_43
    move-object v3, v4

    .line 2629
    goto :goto_16

    .line 2630
    :cond_45
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2631
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    .line 2632
    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_33

    .line 2633
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16
.end method

.method private getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TK;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v5, 0x0

    .line 2639
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v4, :cond_b

    .line 2640
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_22

    .line 2641
    or-int/lit8 p2, p2, 0x2

    .line 2645
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2646
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_28

    .line 2647
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2648
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2649
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2671
    .end local v2           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_21
    return-object v4

    .line 2643
    :cond_22
    const/4 v4, 0x2

    xor-int/lit8 v4, v4, -0x1

    and-int/lit8 p2, p2, -0x3

    goto :goto_b

    :cond_28
    move-object v4, v5

    .line 2651
    goto :goto_21

    .line 2653
    :cond_2a
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2654
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_44

    .line 2655
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2656
    .restart local v2       #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_44

    .line 2657
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2658
    .local v1, last:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    move-object v4, v1

    .line 2659
    goto :goto_21

    .end local v1           #last:Ljava/lang/Object;,"TK;"
    .end local v2           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_44
    move-object v4, v5

    .line 2662
    goto :goto_21

    .line 2665
    :cond_46
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2666
    .restart local v2       #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_56

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    :cond_56
    move-object v4, v5

    .line 2667
    goto :goto_21

    .line 2668
    :cond_58
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2669
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    .line 2670
    .local v3, v:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_46

    move-object v4, v0

    .line 2671
    goto :goto_21
.end method

.method private hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v2, 0x2

    .line 2530
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 2531
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2535
    :goto_b
    return-object v0

    .line 2532
    :cond_c
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v0, :cond_1b

    .line 2533
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_b

    .line 2535
    :cond_1b
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_b
.end method

.method private highestEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2575
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2576
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_e

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2577
    :cond_e
    const/4 v2, 0x0

    .line 2580
    :goto_f
    return-object v2

    .line 2578
    :cond_10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2579
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2580
    goto :goto_f
.end method

.method private highestKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2553
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2554
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_f

    .line 2555
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2556
    .local v0, last:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2557
    return-object v0

    .line 2559
    .end local v0           #last:Ljava/lang/Object;,"TK;"
    :cond_f
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private inBounds(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2485
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2499
    if-nez p1, :cond_6

    move v2, v5

    .line 2509
    :goto_5
    return v2

    .line 2501
    :cond_6
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v2, :cond_c

    move v2, v4

    .line 2502
    goto :goto_5

    .line 2503
    :cond_c
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2504
    .local v1, k:Ljava/lang/Object;,"TK;"
    if-nez v1, :cond_12

    move v2, v4

    .line 2505
    goto :goto_5

    .line 2506
    :cond_12
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2507
    .local v0, c:I
    if-gtz v0, :cond_22

    if-nez v0, :cond_24

    iget-boolean v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v2, :cond_24

    :cond_22
    move v2, v5

    .line 2508
    goto :goto_5

    :cond_24
    move v2, v4

    .line 2509
    goto :goto_5
.end method

.method private loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 2517
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 2518
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2522
    :goto_b
    return-object v0

    .line 2519
    :cond_c
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-eqz v0, :cond_1b

    .line 2520
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_b

    .line 2522
    :cond_1b
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    goto :goto_b
.end method

.method private lowestEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2564
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2565
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2566
    const/4 v2, 0x0

    .line 2569
    :goto_b
    return-object v2

    .line 2567
    :cond_c
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2568
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2569
    goto :goto_b
.end method

.method private lowestKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2542
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2543
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2544
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1

    .line 2546
    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 15
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2776
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p3, toKey:Ljava/lang/Object;,"TK;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_a

    .line 2777
    move-object v9, p1

    .line 2778
    .local v9, tk:Ljava/lang/Object;,"TK;"
    move-object p1, p3

    .line 2779
    move-object p3, v9

    .line 2780
    move v8, p2

    .line 2781
    .local v8, ti:Z
    move p2, p4

    .line 2782
    move p4, v8

    .line 2784
    .end local v8           #ti:Z
    .end local v9           #tk:Ljava/lang/Object;,"TK;"
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 2785
    if-nez p1, :cond_2c

    .line 2786
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2787
    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2795
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 2796
    if-nez p3, :cond_46

    .line 2797
    iget-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2798
    iget-boolean p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2806
    :cond_1e
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 2790
    :cond_2c
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2791
    .local v7, c:I
    if-ltz v7, :cond_3e

    if-nez v7, :cond_14

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 2792
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2801
    .end local v7           #c:I
    :cond_46
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2802
    .restart local v7       #c:I
    if-gtz v7, :cond_58

    if-nez v7, :cond_1e

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v0, :cond_1e

    if-eqz p4, :cond_1e

    .line 2803
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeHighest()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 2600
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2601
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_9

    move-object v3, v4

    .line 2608
    :goto_8
    return-object v3

    .line 2603
    :cond_9
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2604
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object v3, v4

    .line 2605
    goto :goto_8

    .line 2606
    :cond_13
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2607
    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_1

    .line 2608
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private removeLowest()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 2586
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2587
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_9

    move-object v3, v4

    .line 2594
    :goto_8
    return-object v3

    .line 2589
    :cond_9
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2590
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object v3, v4

    .line 2591
    goto :goto_8

    .line 2592
    :cond_13
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2593
    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_1

    .line 2594
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2476
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 2477
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2478
    .local v0, c:I
    if-gtz v0, :cond_14

    if-nez v0, :cond_16

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v1, :cond_16

    .line 2479
    :cond_14
    const/4 v1, 0x1

    .line 2481
    .end local v0           #c:I
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2467
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 2468
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2469
    .local v0, c:I
    if-ltz v0, :cond_14

    if-nez v0, :cond_16

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v1, :cond_16

    .line 2470
    :cond_14
    const/4 v1, 0x1

    .line 2472
    .end local v0           #c:I
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2853
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2857
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 2728
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2729
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2731
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2732
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    :cond_17
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_4

    .line 2734
    :cond_1a
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2761
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2762
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_f

    .line 2763
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 2765
    :goto_e
    return-object v1

    :cond_f
    move-object v1, v0

    goto :goto_e
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 2678
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2679
    :cond_8
    move-object v0, p1

    .line 2680
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter "value"

    .prologue
    .line 2715
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 2716
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2717
    :cond_8
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2718
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2720
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 2721
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2722
    const/4 v2, 0x1

    .line 2724
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :goto_1f
    return v2

    .line 2719
    .restart local v1       #v:Ljava/lang/Object;,"TV;"
    :cond_20
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_c

    .line 2724
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2931
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 2

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2846
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-nez v6, :cond_15

    const/4 v6, 0x1

    :goto_11
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    :cond_15
    const/4 v6, 0x0

    goto :goto_11
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2943
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

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
    .line 2926
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    .line 2927
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    goto :goto_5
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2893
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_8
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2885
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2869
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2873
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 2684
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2685
    :cond_8
    move-object v0, p1

    .line 2686
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2838
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2821
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_8

    .line 2822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2823
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2877
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2881
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2711
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2935
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2911
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2912
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_5
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2897
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_8
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2889
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2861
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2865
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2916
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 2917
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_5
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2901
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_8
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2905
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_8
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2690
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2691
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2739
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2740
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 2695
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 2696
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2744
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 2745
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2754
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2755
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2749
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2750
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 6

    .prologue
    .line 2700
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 2701
    .local v0, count:J
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2702
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_6
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2704
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 2705
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 2703
    :cond_15
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_6

    .line 2707
    :cond_18
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-ltz v3, :cond_23

    const v3, 0x7fffffff

    :goto_22
    return v3

    :cond_23
    long-to-int v3, v0

    goto :goto_22
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2834
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 6
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2814
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p3, toKey:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_4

    if-nez p3, :cond_a

    .line 2815
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2816
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2423
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2842
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2828
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_8

    .line 2829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2830
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2939
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-object v0
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
    .line 2921
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    .line 2922
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    goto :goto_5
.end method
