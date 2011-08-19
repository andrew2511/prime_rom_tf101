.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$1;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Values;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueEnumeration;,
        Ljava/util/Hashtable$KeyEnumeration;,
        Ljava/util/Hashtable$EntryIterator;,
        Ljava/util/Hashtable$ValueIterator;,
        Ljava/util/Hashtable$KeyIterator;,
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$HashtableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CHARS_PER_ENTRY:I = 0xf

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
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

.field private transient modCount:I

.field private transient size:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
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
    const/4 v1, 0x2

    .line 60
    new-array v0, v1, [Ljava/util/Hashtable$HashtableEntry;

    sput-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 1105
    new-array v0, v1, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "threshold"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Hashtable;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 110
    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .parameter "capacity"

    .prologue
    .line 121
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 122
    if-gez p1, :cond_1e

    .line 123
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

    .line 126
    :cond_1e
    if-nez p1, :cond_2e

    .line 128
    sget-object v2, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v2, [Ljava/util/Hashtable$HashtableEntry;

    move-object v0, v2

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    move-object v1, v0

    .line 129
    .local v1, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 130
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/Hashtable;->threshold:I

    .line 142
    .end local v1           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2d
    return-void

    .line 134
    :cond_2e
    const/4 v2, 0x4

    if-ge p1, v2, :cond_36

    .line 135
    const/4 p1, 0x4

    .line 141
    :goto_32
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2d

    .line 136
    :cond_36
    const/high16 v2, 0x4000

    if-le p1, v2, :cond_3d

    .line 137
    const/high16 p1, 0x4000

    goto :goto_32

    .line 139
    :cond_3d
    invoke-static {p1}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_32
.end method

.method public constructor <init>(IF)V
    .registers 6
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 154
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable;-><init>(I)V

    .line 156
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 157
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

    .line 165
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
    .line 175
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 176
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V

    .line 177
    return-void
.end method

.method static synthetic access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Hashtable;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljava/util/Hashtable;->size:I

    return v0
.end method

.method private static capacityForInitSize(I)I
    .registers 3
    .parameter "size"

    .prologue
    .line 196
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 199
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
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 403
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 405
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    .line 406
    .local v2, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 407
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int v3, v2, v5

    .line 408
    .local v3, index:I
    aget-object v1, v4, v3

    .line 409
    .local v1, first:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1a
    if-eqz v0, :cond_2e

    .line 410
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v2, :cond_2b

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 411
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 419
    :goto_2a
    return-void

    .line 409
    :cond_2b
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1a

    .line 417
    :cond_2e
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v5, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v5, v4, v3

    .line 418
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    goto :goto_2a
.end method

.method private constructorPutAll(Ljava/util/Map;)V
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
    .line 185
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
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

    .line 186
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 188
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method private declared-synchronized containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 802
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 803
    .local v1, hash:I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 804
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int v2, v1, v4

    .line 805
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v0, :cond_2b

    .line 806
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_28

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 807
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    move-result v4

    .line 810
    :goto_26
    monitor-exit p0

    return v4

    .line 805
    :cond_28
    :try_start_28
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2d

    goto :goto_12

    .line 810
    :cond_2b
    const/4 v4, 0x0

    goto :goto_26

    .line 802
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 507
    .local v9, oldTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v8, v9

    .line 508
    .local v8, oldCapacity:I
    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_9

    move-object v10, v9

    .line 543
    :goto_8
    return-object v10

    .line 511
    :cond_9
    mul-int/lit8 v5, v8, 0x2

    .line 512
    .local v5, newCapacity:I
    invoke-direct {p0, v5}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 513
    .local v6, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-nez v10, :cond_15

    move-object v10, v6

    .line 514
    goto :goto_8

    .line 517
    :cond_15
    const/4 v3, 0x0

    .local v3, j:I
    :goto_16
    if-ge v3, v8, :cond_47

    .line 522
    aget-object v1, v9, v3

    .line 523
    .local v1, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    if-nez v1, :cond_1f

    .line 517
    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 526
    :cond_1f
    iget v10, v1, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v2, v10, v8

    .line 527
    .local v2, highBit:I
    const/4 v0, 0x0

    .line 528
    .local v0, broken:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 529
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .local v4, n:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2a
    if-eqz v4, :cond_41

    .line 530
    iget v10, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v7, v10, v8

    .line 531
    .local v7, nextHighBit:I
    if-eq v7, v2, :cond_3a

    .line 532
    if-nez v0, :cond_3e

    .line 533
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 536
    :goto_38
    move-object v0, v1

    .line 537
    move v2, v7

    .line 529
    :cond_3a
    move-object v1, v4

    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2a

    .line 535
    :cond_3e
    iput-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_38

    .line 540
    .end local v7           #nextHighBit:I
    :cond_41
    if-eqz v0, :cond_1c

    .line 541
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1c

    .end local v0           #broken:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2           #highBit:I
    .end local v4           #n:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_47
    move-object v10, v6

    .line 543
    goto :goto_8
.end method

.method private ensureCapacity(I)V
    .registers 13
    .parameter "numMappings"

    .prologue
    .line 445
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 446
    .local v2, newCapacity:I
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 447
    .local v9, oldTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v7, v9

    .line 448
    .local v7, oldCapacity:I
    if-gt v2, v7, :cond_e

    .line 474
    :cond_d
    :goto_d
    return-void

    .line 452
    :cond_e
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 454
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_19

    .line 455
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_d

    .line 460
    :cond_19
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 461
    .local v6, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_d

    .line 462
    const/4 v10, 0x1

    sub-int v4, v2, v10

    .line 463
    .local v4, newMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v7, :cond_d

    .line 464
    aget-object v0, v9, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_29
    if-eqz v0, :cond_39

    .line 465
    iget-object v8, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 466
    .local v8, oldNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v3, v10, v4

    .line 467
    .local v3, newIndex:I
    aget-object v5, v6, v3

    .line 468
    .local v5, newNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 469
    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 470
    move-object v0, v8

    .line 471
    goto :goto_29

    .line 463
    .end local v3           #newIndex:I
    .end local v5           #newNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v8           #oldNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_25
.end method

.method private makeTable(I)[Ljava/util/Hashtable$HashtableEntry;
    .registers 5
    .parameter "newCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    .line 494
    .local v0, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 495
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    .line 496
    return-object v0
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
    .line 1128
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1130
    .local v0, capacity:I
    if-gez v0, :cond_22

    .line 1131
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

    .line 1133
    :cond_22
    const/4 v5, 0x4

    if-ge v0, v5, :cond_48

    .line 1134
    const/4 v0, 0x4

    .line 1140
    :goto_26
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 1142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1143
    .local v3, size:I
    if-gez v3, :cond_54

    .line 1144
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

    .line 1135
    .end local v3           #size:I
    :cond_48
    const/high16 v5, 0x4000

    if-le v0, v5, :cond_4f

    .line 1136
    const/high16 v0, 0x4000

    goto :goto_26

    .line 1138
    :cond_4f
    invoke-static {v0}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_26

    .line 1147
    .restart local v3       #size:I
    :cond_54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    if-ge v1, v3, :cond_65

    .line 1148
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1149
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1150
    .local v4, val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1152
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #val:Ljava/lang/Object;,"TV;"
    :cond_65
    return-void
.end method

.method private declared-synchronized removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 818
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 819
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 820
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    sub-int/2addr v5, v6

    and-int v2, v1, v5

    .line 821
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 822
    .local v3, prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_4c

    .line 823
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_48

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 824
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_45

    move-result v5

    if-nez v5, :cond_2d

    move v5, v7

    .line 837
    :goto_2b
    monitor-exit p0

    return v5

    .line 827
    :cond_2d
    if-nez v3, :cond_40

    .line 828
    :try_start_2f
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 832
    :goto_33
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 833
    iget v5, p0, Ljava/util/Hashtable;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->size:I

    move v5, v6

    .line 834
    goto :goto_2b

    .line 830
    :cond_40
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_45

    goto :goto_33

    .line 818
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5

    .line 822
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #index:I
    .restart local v3       #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4       #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_48
    move-object v3, v0

    :try_start_49
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_45

    goto :goto_14

    :cond_4c
    move v5, v7

    .line 837
    goto :goto_2b
.end method

.method private static roundUpToPowerOfTwo(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 1085
    add-int/lit8 p0, p0, -0x1

    .line 1088
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1089
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1090
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1091
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1092
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1094
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .registers 3
    .parameter "h"

    .prologue
    .line 1073
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 1074
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v5, 0x3f40

    .line 1113
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1114
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "threshold"

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1115
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 1116
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1118
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1119
    iget v3, p0, Ljava/util/Hashtable;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1120
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1121
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4a

    goto :goto_2f

    .line 1113
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1           #fields:Ljava/io/ObjectOutputStream$PutField;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_4a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1124
    .restart local v1       #fields:Ljava/io/ObjectOutputStream$PutField;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4d
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 585
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I

    if-eqz v0, :cond_14

    .line 586
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 590
    :cond_14
    monitor-exit p0

    return-void

    .line 585
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 217
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_26
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1e

    .line 223
    .local v1, result:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    :try_start_7
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 224
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Hashtable;->size:I

    .line 225
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 226
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 227
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 229
    invoke-direct {v1, p0}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 230
    monitor-exit p0

    return-object v1

    .line 218
    .end local v1           #result:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 219
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    :try_start_20
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 217
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 348
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 9
    .parameter "key"

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x1

    .line 295
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 296
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 297
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 299
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 300
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v6

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 301
    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_2f

    .line 302
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 303
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_29

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_31

    move-result v4

    if-eqz v4, :cond_2c

    :cond_29
    move v4, v6

    .line 307
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :goto_2a
    monitor-exit p0

    return v4

    .line 301
    .restart local v1       #eKey:Ljava/lang/Object;,"TK;"
    :cond_2c
    :try_start_2c
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_31

    goto :goto_19

    .line 307
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2a

    .line 295
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2           #hash:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_31
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .line 319
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    if-nez p1, :cond_c

    .line 320
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 319
    :catchall_9
    move-exception v4

    monitor-exit p0

    throw v4

    .line 323
    :cond_c
    :try_start_c
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 324
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;
    array-length v2, v3

    .line 326
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 327
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;
    :goto_14
    if-eqz v0, :cond_24

    .line 328
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_9

    move-result v4

    if-eqz v4, :cond_21

    .line 329
    const/4 v4, 0x1

    .line 333
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;
    :goto_1f
    monitor-exit p0

    return v4

    .line 327
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;
    :cond_21
    :try_start_21
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_9

    goto :goto_14

    .line 326
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 333
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;
    :cond_27
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable$ValueEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
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
    .line 625
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    .line 626
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_8

    move-object v1, v0

    :goto_6
    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_8
    new-instance v1, Ljava/util/Hashtable$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v1, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 625
    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 852
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 268
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 269
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 271
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 272
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 273
    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_30

    .line 274
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 275
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_29

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 276
    :cond_29
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 279
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :goto_2b
    monitor-exit p0

    return-object v4

    .line 273
    .restart local v1       #eKey:Ljava/lang/Object;,"TK;"
    :cond_2d
    :try_start_2d
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_32

    goto :goto_19

    .line 279
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    .line 267
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2           #hash:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_32
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized hashCode()I
    .registers 9

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v7, 0x0

    .line 857
    monitor-enter p0

    const/4 v3, 0x0

    .line 858
    .local v3, result:I
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 859
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 860
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 861
    .local v4, value:Ljava/lang/Object;,"TV;"
    if-eq v2, p0, :cond_b

    if-eq v4, p0, :cond_b

    .line 864
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_29
    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_38

    move-result v6

    :goto_2f
    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 866
    goto :goto_b

    :cond_32
    move v5, v7

    .line 864
    goto :goto_29

    :cond_34
    move v6, v7

    goto :goto_2f

    .line 867
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_36
    monitor-exit p0

    return v3

    .line 857
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 241
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    .line 601
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_8

    move-object v1, v0

    :goto_6
    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_8
    new-instance v1, Ljava/util/Hashtable$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v1, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 600
    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable$KeyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v8, 0x1

    .line 368
    monitor-enter p0

    if-nez p2, :cond_d

    .line 369
    :try_start_4
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a

    .line 368
    :catchall_a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 371
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    .line 372
    .local v2, hash:I
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 373
    .local v5, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v5

    sub-int/2addr v6, v8

    and-int v3, v2, v6

    .line 374
    .local v3, index:I
    aget-object v1, v5, v3

    .line 375
    .local v1, first:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1e
    if-eqz v0, :cond_36

    .line 376
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_33

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 377
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 378
    .local v4, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_a

    move-object v6, v4

    .line 392
    .end local v4           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_31
    monitor-exit p0

    return-object v6

    .line 375
    :cond_33
    :try_start_33
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1e

    .line 384
    :cond_36
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 385
    iget v6, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/Hashtable;->size:I

    iget v7, p0, Ljava/util/Hashtable;->threshold:I

    if-le v6, v7, :cond_53

    .line 386
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 387
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    .line 388
    array-length v6, v5

    sub-int/2addr v6, v8

    and-int v3, v2, v6

    .line 389
    aget-object v1, v5, v3

    .line 391
    :cond_53
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v6, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v6, v5, v3
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_a

    .line 392
    const/4 v6, 0x0

    goto :goto_31
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
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
    .line 428
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/Hashtable;->ensureCapacity(I)V

    .line 429
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 428
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 432
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2b
    monitor-exit p0

    return-void
.end method

.method protected rehash()V
    .registers 1

    .prologue
    .line 485
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x1

    .line 558
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 559
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 560
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    sub-int/2addr v5, v6

    and-int v2, v1, v5

    .line 561
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 562
    .local v3, prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_42

    .line 563
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_3e

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 564
    if-nez v3, :cond_36

    .line 565
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 569
    :goto_27
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 570
    iget v5, p0, Ljava/util/Hashtable;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->size:I

    .line 571
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_3b

    .line 574
    :goto_34
    monitor-exit p0

    return-object v5

    .line 567
    :cond_36
    :try_start_36
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3b

    goto :goto_27

    .line 558
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_3b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 562
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #index:I
    .restart local v3       #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4       #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3e
    move-object v3, v0

    :try_start_3f
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_3b

    goto :goto_13

    .line 574
    :cond_42
    const/4 v5, 0x0

    goto :goto_34
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 252
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 882
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/util/Hashtable;->size:I

    mul-int/lit8 v6, v6, 0xf

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 883
    .local v4, result:Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 885
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 886
    .local v1, hasMore:Z
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_57

    .line 887
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 889
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 890
    .local v3, key:Ljava/lang/Object;,"TK;"
    if-ne v3, p0, :cond_4d

    const-string v6, "(this Map)"

    :goto_2b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 895
    .local v5, value:Ljava/lang/Object;,"TV;"
    if-ne v5, p0, :cond_52

    const-string v6, "(this Map)"

    :goto_3b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 898
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_1b

    .line 882
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1           #hasMore:Z
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :catchall_4a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 890
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v1       #hasMore:Z
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v3       #key:Ljava/lang/Object;,"TK;"
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2b

    .line 895
    .restart local v5       #value:Ljava/lang/Object;,"TV;"
    :cond_52
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3b

    .line 902
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_57
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_4a

    move-result-object v6

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    .line 613
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_8

    move-object v1, v0

    :goto_6
    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_8
    new-instance v1, Ljava/util/Hashtable$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v1, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 612
    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method
