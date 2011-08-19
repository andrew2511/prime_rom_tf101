.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$1;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 1009
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/HashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 130
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .parameter "capacity"

    .prologue
    .line 142
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 143
    if-gez p1, :cond_1e

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_1e
    if-nez p1, :cond_2e

    .line 149
    sget-object v2, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v2, [Ljava/util/HashMap$HashMapEntry;

    move-object v0, v2

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    move-object v1, v0

    .line 150
    .local v1, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 151
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/HashMap;->threshold:I

    .line 163
    .end local v1           #tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2d
    return-void

    .line 155
    :cond_2e
    const/4 v2, 0x4

    if-ge p1, v2, :cond_36

    .line 156
    const/4 p1, 0x4

    .line 162
    :goto_32
    invoke-direct {p0, p1}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    goto :goto_2d

    .line 157
    :cond_36
    const/high16 v2, 0x4000

    if-le p1, v2, :cond_3d

    .line 158
    const/high16 p1, 0x4000

    goto :goto_32

    .line 160
    :cond_3d
    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_32
.end method

.method public constructor <init>(IF)V
    .registers 6
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 178
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 180
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 181
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_27
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
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
    .line 199
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method static synthetic access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static capacityForInitSize(I)I
    .registers 3
    .parameter "size"

    .prologue
    .line 220
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 223
    .local v0, result:I
    const/high16 v1, -0x4000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    move v1, v0

    :goto_a
    return v1

    :cond_b
    const/high16 v1, 0x4000

    goto :goto_a
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v7, 0x0

    .line 446
    if-nez p1, :cond_18

    .line 447
    iget-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 448
    .local v1, entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_15

    .line 449
    const/4 v6, 0x0

    invoke-virtual {p0, v7, p2, v6, v7}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 450
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 471
    .end local v1           #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_14
    return-void

    .line 452
    .restart local v1       #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_15
    iput-object p2, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_14

    .line 457
    .end local v1           #entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v3

    .line 458
    .local v3, hash:I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 459
    .local v5, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int v4, v3, v6

    .line 460
    .local v4, index:I
    aget-object v2, v5, v4

    .line 461
    .local v2, first:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2a
    if-eqz v0, :cond_3e

    .line 462
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v3, :cond_3b

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 463
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_14

    .line 461
    :cond_3b
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2a

    .line 469
    :cond_3e
    invoke-virtual {p0, p1, p2, v3, v2}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    aput-object v6, v5, v4

    .line 470
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    goto :goto_14
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 840
    if-nez p1, :cond_14

    .line 841
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 842
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v6

    .line 853
    :goto_11
    return v4

    :cond_12
    move v4, v5

    .line 842
    goto :goto_11

    .line 845
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 846
    .local v1, hash:I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 847
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v6

    and-int v2, v1, v4

    .line 848
    .local v2, index:I
    aget-object v0, v3, v2

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_24
    if-eqz v0, :cond_3c

    .line 849
    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v4, v1, :cond_39

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 850
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_11

    .line 848
    :cond_39
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_24

    :cond_3c
    move v4, v5

    .line 853
    goto :goto_11
.end method

.method private doubleCapacity()[Ljava/util/HashMap$HashMapEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 574
    .local v9, oldTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v8, v9

    .line 575
    .local v8, oldCapacity:I
    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_9

    move-object v10, v9

    .line 610
    :goto_8
    return-object v10

    .line 578
    :cond_9
    mul-int/lit8 v5, v8, 0x2

    .line 579
    .local v5, newCapacity:I
    invoke-direct {p0, v5}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 580
    .local v6, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-nez v10, :cond_15

    move-object v10, v6

    .line 581
    goto :goto_8

    .line 584
    :cond_15
    const/4 v3, 0x0

    .local v3, j:I
    :goto_16
    if-ge v3, v8, :cond_47

    .line 589
    aget-object v1, v9, v3

    .line 590
    .local v1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_1f

    .line 584
    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 593
    :cond_1f
    iget v10, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v2, v10, v8

    .line 594
    .local v2, highBit:I
    const/4 v0, 0x0

    .line 595
    .local v0, broken:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 596
    iget-object v4, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .local v4, n:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2a
    if-eqz v4, :cond_41

    .line 597
    iget v10, v4, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v7, v10, v8

    .line 598
    .local v7, nextHighBit:I
    if-eq v7, v2, :cond_3a

    .line 599
    if-nez v0, :cond_3e

    .line 600
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 603
    :goto_38
    move-object v0, v1

    .line 604
    move v2, v7

    .line 596
    :cond_3a
    move-object v1, v4

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2a

    .line 602
    :cond_3e
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_38

    .line 607
    .end local v7           #nextHighBit:I
    :cond_41
    if-eqz v0, :cond_1c

    .line 608
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1c

    .end local v0           #broken:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v2           #highBit:I
    .end local v4           #n:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_47
    move-object v10, v6

    .line 610
    goto :goto_8
.end method

.method private ensureCapacity(I)V
    .registers 13
    .parameter "numMappings"

    .prologue
    .line 526
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 527
    .local v2, newCapacity:I
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 528
    .local v9, oldTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v9

    .line 529
    .local v7, oldCapacity:I
    if-gt v2, v7, :cond_e

    .line 552
    :cond_d
    :goto_d
    return-void

    .line 532
    :cond_e
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_16

    .line 533
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    goto :goto_d

    .line 538
    :cond_16
    invoke-direct {p0, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 539
    .local v6, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_d

    .line 540
    const/4 v10, 0x1

    sub-int v4, v2, v10

    .line 541
    .local v4, newMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v7, :cond_d

    .line 542
    aget-object v0, v9, v1

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_26
    if-eqz v0, :cond_36

    .line 543
    iget-object v8, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 544
    .local v8, oldNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v3, v10, v4

    .line 545
    .local v3, newIndex:I
    aget-object v5, v6, v3

    .line 546
    .local v5, newNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 547
    iput-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 548
    move-object v0, v8

    .line 549
    goto :goto_26

    .line 541
    .end local v3           #newIndex:I
    .end local v5           #newNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v8           #oldNext:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method private makeTable(I)[Ljava/util/HashMap$HashMapEntry;
    .registers 5
    .parameter "newCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    .line 561
    .local v0, newTable:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 562
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 563
    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 418
    .local v0, entry:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_15

    .line 419
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->addNewEntryForNullKey(Ljava/lang/Object;)V

    .line 420
    iget v2, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->size:I

    .line 421
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 422
    const/4 v2, 0x0

    .line 427
    :goto_14
    return-object v2

    .line 424
    :cond_15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 425
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 426
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    move-object v2, v1

    .line 427
    goto :goto_14
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1030
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1031
    .local v0, capacity:I
    if-gez v0, :cond_22

    .line 1032
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1034
    :cond_22
    const/4 v5, 0x4

    if-ge v0, v5, :cond_48

    .line 1035
    const/4 v0, 0x4

    .line 1041
    :goto_26
    invoke-direct {p0, v0}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 1043
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1044
    .local v3, size:I
    if-gez v3, :cond_54

    .line 1045
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1036
    .end local v3           #size:I
    :cond_48
    const/high16 v5, 0x4000

    if-le v0, v5, :cond_4f

    .line 1037
    const/high16 v0, 0x4000

    goto :goto_26

    .line 1039
    :cond_4f
    invoke-static {v0}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_26

    .line 1048
    .restart local v3       #size:I
    :cond_54
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    .line 1049
    const/4 v1, 0x0

    .local v1, i:I
    :goto_58
    if-ge v1, v3, :cond_68

    .line 1050
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1051
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1052
    .local v4, val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 1054
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #val:Ljava/lang/Object;,"TV;"
    :cond_68
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 861
    if-nez p1, :cond_25

    .line 862
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 863
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_10

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_10
    move v5, v7

    .line 893
    :goto_11
    return v5

    .line 866
    :cond_12
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 867
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 868
    iget v5, p0, Ljava/util/HashMap;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 869
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    move v5, v6

    .line 870
    goto :goto_11

    .line 873
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 874
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 875
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    sub-int/2addr v5, v6

    and-int v2, v1, v5

    .line 876
    .local v2, index:I
    aget-object v0, v4, v2

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 877
    .local v3, prev:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_36
    if-eqz v0, :cond_6d

    .line 878
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_69

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 879
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    move v5, v7

    .line 880
    goto :goto_11

    .line 882
    :cond_4e
    if-nez v3, :cond_64

    .line 883
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v4, v2

    .line 887
    :goto_54
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 888
    iget v5, p0, Ljava/util/HashMap;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 889
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    move v5, v6

    .line 890
    goto :goto_11

    .line 885
    :cond_64
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_54

    .line 877
    :cond_69
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_36

    :cond_6d
    move v5, v7

    .line 893
    goto :goto_11
.end method

.method private removeNullKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 646
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 647
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_6

    .line 654
    :goto_5
    return-object v1

    .line 650
    :cond_6
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 651
    iget v1, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->modCount:I

    .line 652
    iget v1, p0, Ljava/util/HashMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/HashMap;->size:I

    .line 653
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 654
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_5
.end method

.method private static roundUpToPowerOfTwo(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 989
    add-int/lit8 p0, p0, -0x1

    .line 992
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 993
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 994
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 995
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 996
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 998
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .registers 3
    .parameter "h"

    .prologue
    .line 977
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 978
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1016
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 1017
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1019
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1020
    iget v3, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1021
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1022
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1023
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_21

    .line 1025
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3c
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 8
    .parameter
    .parameter
    .parameter "hash"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v1, Ljava/util/HashMap$HashMapEntry;

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v2, v2, p4

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    aput-object v1, v0, p4

    .line 481
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    .line 489
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 490
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 669
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-eqz v0, :cond_15

    .line 670
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 672
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 675
    :cond_15
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 239
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1f

    .line 245
    .local v1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 246
    iput-object v3, v1, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 247
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/HashMap;->size:I

    .line 248
    iput-object v3, v1, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 249
    iput-object v3, v1, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 250
    iput-object v3, v1, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 252
    invoke-virtual {v1}, Ljava/util/HashMap;->init()V

    .line 253
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 254
    return-object v1

    .line 240
    .end local v1           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 241
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .registers 6
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, first:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
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
    .line 209
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
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

    .line 210
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 212
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 10
    .parameter "key"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 326
    if-nez p1, :cond_c

    .line 327
    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v4, :cond_a

    move v4, v6

    .line 343
    :goto_9
    return v4

    :cond_a
    move v4, v7

    .line 327
    goto :goto_9

    .line 331
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 332
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 333
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 335
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 336
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v6

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 337
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_23
    if-eqz v0, :cond_38

    .line 338
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 339
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_33

    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v4, v2, :cond_35

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_33
    move v4, v6

    .line 340
    goto :goto_9

    .line 337
    :cond_35
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_23

    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_38
    move v4, v7

    .line 343
    goto :goto_9
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 9
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 355
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 356
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;
    array-length v2, v3

    .line 357
    .local v2, len:I
    if-nez p1, :cond_28

    .line 358
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 359
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/HashMap$HashMapEntry;
    :goto_c
    if-eqz v0, :cond_17

    .line 360
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_14

    move v4, v5

    .line 376
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :goto_13
    return v4

    .line 359
    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;
    :cond_14
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_c

    .line 358
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 365
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :cond_1a
    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v4, :cond_26

    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_26

    move v4, v5

    goto :goto_13

    :cond_26
    move v4, v6

    goto :goto_13

    .line 369
    .end local v1           #i:I
    :cond_28
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_29
    if-ge v1, v2, :cond_3f

    .line 370
    aget-object v0, v3, v1

    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;
    :goto_2d
    if-eqz v0, :cond_3c

    .line 371
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v5

    .line 372
    goto :goto_13

    .line 370
    :cond_39
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2d

    .line 369
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 376
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;
    :cond_3f
    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    move v4, v5

    goto :goto_13

    :cond_4f
    move v4, v6

    goto :goto_13
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4
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
    .line 723
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 724
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/HashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v1, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 296
    if-nez p1, :cond_c

    .line 297
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 298
    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_9

    move-object v4, v6

    .line 314
    :goto_8
    return-object v4

    .line 298
    :cond_9
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_8

    .line 302
    .end local v0           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 303
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 304
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 306
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 307
    .local v3, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 308
    .restart local v0       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_24
    if-eqz v0, :cond_3a

    .line 309
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 310
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_34

    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v4, v2, :cond_37

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 311
    :cond_34
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_8

    .line 308
    :cond_37
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_24

    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_3a
    move-object v4, v6

    .line 314
    goto :goto_8
.end method

.method init()V
    .registers 1

    .prologue
    .line 265
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 275
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 686
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/HashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v1, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_5
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .registers 3
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
    .line 899
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v7, 0x1

    .line 390
    if-nez p1, :cond_8

    .line 391
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 413
    :goto_7
    return-object v5

    .line 394
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 395
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 396
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    sub-int/2addr v5, v7

    and-int v2, v1, v5

    .line 397
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_32

    .line 398
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2f

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 399
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 400
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 401
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    move-object v5, v3

    .line 402
    goto :goto_7

    .line 397
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2f
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_18

    .line 407
    :cond_32
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 408
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    if-le v5, v6, :cond_4a

    .line 409
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    move-result-object v4

    .line 410
    array-length v5, v4

    sub-int/2addr v5, v7

    and-int v2, v1, v5

    .line 412
    :cond_4a
    invoke-virtual {p0, p1, p2, v1, v2}, Ljava/util/HashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 413
    const/4 v5, 0x0

    goto :goto_7
.end method

.method public putAll(Ljava/util/Map;)V
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
    .line 511
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;->ensureCapacity(I)V

    .line 512
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 513
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x1

    .line 622
    if-nez p1, :cond_8

    .line 623
    invoke-direct {p0}, Ljava/util/HashMap;->removeNullKey()Ljava/lang/Object;

    move-result-object v5

    .line 642
    :goto_7
    return-object v5

    .line 625
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    .line 626
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 627
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    sub-int/2addr v5, v6

    and-int v2, v1, v5

    .line 628
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 629
    .local v3, prev:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_47

    .line 630
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_43

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 631
    if-nez v3, :cond_3e

    .line 632
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v4, v2

    .line 636
    :goto_2d
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 637
    iget v5, p0, Ljava/util/HashMap;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 638
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 639
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_7

    .line 634
    :cond_3e
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2d

    .line 629
    :cond_43
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_19

    .line 642
    :cond_47
    const/4 v5, 0x0

    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 284
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, this:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 712
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/HashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v1, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_5
.end method
