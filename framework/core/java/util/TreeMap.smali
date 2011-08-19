.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$2;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$BoundedMap;,
        Ljava/util/TreeMap$Bound;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$MapIterator;,
        Ljava/util/TreeMap$Node;,
        Ljava/util/TreeMap$Relation;
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
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NATURAL_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/TreeMap;->$assertionsDisabled:Z

    .line 70
    new-instance v0, Ljava/util/TreeMap$1;

    invoke-direct {v0}, Ljava/util/TreeMap$1;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 66
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 87
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 121
    if-eqz p1, :cond_d

    .line 122
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 126
    :goto_c
    return-void

    .line 124
    :cond_d
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/util/Map;)V
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
    .line 106
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, copyFrom:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 110
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_23
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, copyFrom:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v3, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    .line 144
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 145
    .local v2, sourceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_30

    .line 146
    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 150
    :goto_10
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 148
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_30
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_10

    .line 153
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_35
    return-void
.end method

.method static synthetic access$000(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method static count(Ljava/util/Iterator;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1653
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 1654
    .local v0, count:I
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1655
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1658
    :cond_d
    return v0
.end method

.method private immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_3
.end method

.method private internalPollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_6

    .line 593
    const/4 v1, 0x0

    .line 597
    :goto_5
    return-object v1

    .line 595
    :cond_6
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 596
    .local v0, result:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    move-object v1, v0

    .line 597
    goto :goto_5
.end method

.method private internalPollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_6

    .line 617
    const/4 v1, 0x0

    .line 621
    :goto_5
    return-object v1

    .line 619
    :cond_6
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 620
    .local v0, result:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    move-object v1, v0

    .line 621
    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1679
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1680
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "comparator"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 1681
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v3, :cond_17

    .line 1682
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 1684
    :cond_17
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1685
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v2, :cond_2c

    .line 1686
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1688
    :cond_2c
    return-void
.end method

.method private rebalance(Ljava/util/TreeMap$Node;Z)V
    .registers 22
    .parameter
    .parameter "insert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, unbalanced:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object/from16 v10, p1

    .local v10, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_2
    if-eqz v10, :cond_52

    .line 461
    iget-object v3, v10, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 462
    .local v3, left:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v11, v10, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 463
    .local v11, right:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v3, :cond_53

    move-object v0, v3

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v5, v18

    .line 464
    .local v5, leftHeight:I
    :goto_11
    if-eqz v11, :cond_58

    move-object v0, v11

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v13, v18

    .line 466
    .local v13, rightHeight:I
    :goto_1a
    sub-int v2, v5, v13

    .line 467
    .local v2, delta:I
    const/16 v18, -0x2

    move v0, v2

    move/from16 v1, v18

    if-ne v0, v1, :cond_85

    .line 468
    iget-object v14, v11, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 469
    .local v14, rightLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object v0, v11

    iget-object v0, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    move-object/from16 v16, v0

    .line 470
    .local v16, rightRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v16, :cond_5d

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v17, v18

    .line 471
    .local v17, rightRightHeight:I
    :goto_34
    if-eqz v14, :cond_62

    move-object v0, v14

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v15, v18

    .line 473
    .local v15, rightLeftHeight:I
    :goto_3d
    sub-int v12, v15, v17

    .line 474
    .local v12, rightDelta:I
    const/16 v18, -0x1

    move v0, v12

    move/from16 v1, v18

    if-eq v0, v1, :cond_4a

    if-nez v12, :cond_67

    if-nez p2, :cond_67

    .line 475
    :cond_4a
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    .line 481
    :goto_50
    if-eqz p2, :cond_b7

    .line 517
    .end local v2           #delta:I
    .end local v3           #left:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v5           #leftHeight:I
    .end local v11           #right:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v12           #rightDelta:I
    .end local v13           #rightHeight:I
    .end local v14           #rightLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v15           #rightLeftHeight:I
    .end local v16           #rightRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v17           #rightRightHeight:I
    :cond_52
    :goto_52
    return-void

    .line 463
    .restart local v3       #left:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v11       #right:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_53
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_11

    .line 464
    .restart local v5       #leftHeight:I
    :cond_58
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_1a

    .line 470
    .restart local v2       #delta:I
    .restart local v13       #rightHeight:I
    .restart local v14       #rightLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v16       #rightRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_5d
    const/16 v18, 0x0

    move/from16 v17, v18

    goto :goto_34

    .line 471
    .restart local v17       #rightRightHeight:I
    :cond_62
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_3d

    .line 477
    .restart local v12       #rightDelta:I
    .restart local v15       #rightLeftHeight:I
    :cond_67
    sget-boolean v18, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_78

    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-eq v0, v1, :cond_78

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 478
    :cond_78
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    .line 479
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    goto :goto_50

    .line 485
    .end local v12           #rightDelta:I
    .end local v14           #rightLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v15           #rightLeftHeight:I
    .end local v16           #rightRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v17           #rightRightHeight:I
    :cond_85
    const/16 v18, 0x2

    move v0, v2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e3

    .line 486
    iget-object v6, v3, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 487
    .local v6, leftLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v8, v3, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 488
    .local v8, leftRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v8, :cond_bb

    move-object v0, v8

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v9, v18

    .line 489
    .local v9, leftRightHeight:I
    :goto_99
    if-eqz v6, :cond_c0

    move-object v0, v6

    iget v0, v0, Ljava/util/TreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v7, v18

    .line 491
    .local v7, leftLeftHeight:I
    :goto_a2
    sub-int v4, v7, v9

    .line 492
    .local v4, leftDelta:I
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-eq v0, v1, :cond_af

    if-nez v4, :cond_c5

    if-nez p2, :cond_c5

    .line 493
    :cond_af
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    .line 499
    :goto_b5
    if-nez p2, :cond_52

    .line 460
    .end local v4           #leftDelta:I
    .end local v6           #leftLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v7           #leftLeftHeight:I
    .end local v8           #leftRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v9           #leftRightHeight:I
    :cond_b7
    iget-object v10, v10, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto/16 :goto_2

    .line 488
    .restart local v6       #leftLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v8       #leftRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_bb
    const/16 v18, 0x0

    move/from16 v9, v18

    goto :goto_99

    .line 489
    .restart local v9       #leftRightHeight:I
    :cond_c0
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_a2

    .line 495
    .restart local v4       #leftDelta:I
    .restart local v7       #leftLeftHeight:I
    :cond_c5
    sget-boolean v18, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_d6

    const/16 v18, -0x1

    move v0, v4

    move/from16 v1, v18

    if-eq v0, v1, :cond_d6

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 496
    :cond_d6
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    .line 497
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    goto :goto_b5

    .line 503
    .end local v4           #leftDelta:I
    .end local v6           #leftLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v7           #leftLeftHeight:I
    .end local v8           #leftRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v9           #leftRightHeight:I
    :cond_e3
    if-nez v2, :cond_f0

    .line 504
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Ljava/util/TreeMap$Node;->height:I

    .line 505
    if-eqz p2, :cond_b7

    goto/16 :goto_52

    .line 510
    :cond_f0
    sget-boolean v18, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_108

    const/16 v18, -0x1

    move v0, v2

    move/from16 v1, v18

    if-eq v0, v1, :cond_108

    const/16 v18, 0x1

    move v0, v2

    move/from16 v1, v18

    if-eq v0, v1, :cond_108

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 511
    :cond_108
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Ljava/util/TreeMap$Node;->height:I

    .line 512
    if-nez p2, :cond_b7

    goto/16 :goto_52
.end method

.method private replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p2, replacement:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 435
    .local v0, parent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 436
    if-eqz p2, :cond_9

    .line 437
    iput-object v0, p2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 440
    :cond_9
    if-eqz v0, :cond_23

    .line 441
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 442
    iput-object p2, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 450
    :goto_11
    return-void

    .line 444
    :cond_12
    sget-boolean v1, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eq v1, p1, :cond_20

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 445
    :cond_20
    iput-object p2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_11

    .line 448
    :cond_23
    iput-object p2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    goto :goto_11
.end method

.method private rotateLeft(Ljava/util/TreeMap$Node;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, root:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v6, 0x0

    .line 523
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 524
    .local v0, left:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 525
    .local v1, pivot:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 526
    .local v2, pivotLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 529
    .local v3, pivotRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 530
    if-eqz v2, :cond_f

    .line 531
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 534
    :cond_f
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 537
    iput-object p1, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 538
    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 541
    if-eqz v0, :cond_35

    iget v4, v0, Ljava/util/TreeMap$Node;->height:I

    :goto_1a
    if-eqz v2, :cond_37

    iget v5, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1e
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    .line 543
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v3, :cond_39

    iget v5, v3, Ljava/util/TreeMap$Node;->height:I

    :goto_2c
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Ljava/util/TreeMap$Node;->height:I

    .line 545
    return-void

    :cond_35
    move v4, v6

    .line 541
    goto :goto_1a

    :cond_37
    move v5, v6

    goto :goto_1e

    :cond_39
    move v5, v6

    .line 543
    goto :goto_2c
.end method

.method private rotateRight(Ljava/util/TreeMap$Node;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, root:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v6, 0x0

    .line 551
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 552
    .local v0, pivot:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 553
    .local v3, right:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 554
    .local v1, pivotLeft:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 557
    .local v2, pivotRight:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 558
    if-eqz v2, :cond_f

    .line 559
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 562
    :cond_f
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 565
    iput-object p1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 566
    iput-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 569
    if-eqz v3, :cond_35

    iget v4, v3, Ljava/util/TreeMap$Node;->height:I

    :goto_1a
    if-eqz v2, :cond_37

    iget v5, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1e
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    .line 571
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v1, :cond_39

    iget v5, v1, Ljava/util/TreeMap$Node;->height:I

    :goto_2c
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ljava/util/TreeMap$Node;->height:I

    .line 573
    return-void

    :cond_35
    move v4, v6

    .line 569
    goto :goto_1a

    :cond_37
    move v5, v6

    goto :goto_1e

    :cond_39
    move v5, v6

    .line 571
    goto :goto_2c
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1668
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v2

    const-string v3, "comparator"

    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v5, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v4, v5, :cond_3c

    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_e
    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1669
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1670
    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1671
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1672
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1673
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_21

    .line 1668
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3c
    const/4 v4, 0x0

    goto :goto_e

    .line 1675
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3e
    return-void
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
    .line 654
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 659
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 190
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 192
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 193
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 158
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 159
    .local v1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v2

    :goto_12
    iput-object v2, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 160
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 161
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1a} :catch_1d

    .line 162
    return-object v1

    :cond_1b
    move-object v2, v3

    .line 159
    goto :goto_12

    .line 163
    .end local v1           #map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
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
    .line 672
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v1, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 182
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 730
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 726
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

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
    .line 683
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 684
    .local v0, result:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/TreeMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    goto :goto_5
.end method

.method find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;
    .registers 13
    .parameter
    .parameter "relation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    iget-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v6, :cond_49

    .line 253
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v6, v7, :cond_31

    instance-of v6, p1, Ljava/lang/Comparable;

    if-nez v6, :cond_31

    .line 254
    new-instance v6, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not Comparable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    :cond_31
    sget-object v6, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    if-ne p2, v6, :cond_47

    .line 257
    new-instance v6, Ljava/util/TreeMap$Node;

    invoke-direct {v6, v8, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iput-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 258
    iput v9, p0, Ljava/util/TreeMap;->size:I

    .line 259
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    .line 260
    iget-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 343
    :goto_46
    return-object v6

    :cond_47
    move-object v6, v8

    .line 262
    goto :goto_46

    .line 271
    :cond_49
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v6, v7, :cond_75

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v6, v0

    move-object v2, v6

    .line 275
    .local v2, comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_54
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 277
    .local v5, nearest:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_56
    if-eqz v2, :cond_77

    iget-object v6, v5, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 284
    .local v3, comparison:I
    :goto_5f
    if-nez v3, :cond_6c

    .line 285
    sget-object v6, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f2

    .line 298
    :cond_6c
    if-gez v3, :cond_8d

    iget-object v6, v5, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    move-object v1, v6

    .line 299
    .local v1, child:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_71
    if-eqz v1, :cond_91

    .line 300
    move-object v5, v1

    .line 301
    goto :goto_56

    .end local v1           #child:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v2           #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v3           #comparison:I
    .end local v5           #nearest:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_75
    move-object v2, v8

    .line 271
    goto :goto_54

    .line 277
    .restart local v2       #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v5       #nearest:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_77
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v7, v5, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    goto :goto_5f

    .line 287
    .restart local v3       #comparison:I
    :pswitch_81
    invoke-virtual {v5}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    :pswitch_86
    move-object v6, v5

    .line 292
    goto :goto_46

    .line 294
    :pswitch_88
    invoke-virtual {v5}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    .line 298
    :cond_8d
    iget-object v6, v5, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    move-object v1, v6

    goto :goto_71

    .line 309
    .restart local v1       #child:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_91
    if-gez v3, :cond_c0

    .line 310
    sget-object v6, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_102

    goto :goto_56

    .line 313
    :pswitch_9f
    invoke-virtual {v5}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    :pswitch_a4
    move-object v6, v5

    .line 316
    goto :goto_46

    :pswitch_a6
    move-object v6, v8

    .line 318
    goto :goto_46

    .line 320
    :pswitch_a8
    new-instance v4, Ljava/util/TreeMap$Node;

    invoke-direct {v4, v5, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    .line 321
    .local v4, created:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v4, v5, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 322
    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 323
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    .line 324
    invoke-direct {p0, v5, v9}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v4

    .line 325
    goto :goto_46

    .line 328
    .end local v4           #created:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_c0
    sget-object v6, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_112

    goto :goto_56

    :pswitch_cc
    move-object v6, v5

    .line 331
    goto/16 :goto_46

    .line 334
    :pswitch_cf
    invoke-virtual {v5}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto/16 :goto_46

    :pswitch_d5
    move-object v6, v8

    .line 336
    goto/16 :goto_46

    .line 338
    :pswitch_d8
    new-instance v4, Ljava/util/TreeMap$Node;

    invoke-direct {v4, v5, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    .line 339
    .restart local v4       #created:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v4, v5, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 340
    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 341
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    .line 342
    invoke-direct {p0, v5, v9}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v4

    .line 343
    goto/16 :goto_46

    .line 285
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_81
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_88
        :pswitch_86
    .end packed-switch

    .line 310
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9f
        :pswitch_a6
        :pswitch_a4
        :pswitch_a4
        :pswitch_a8
    .end packed-switch

    .line 328
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_cc
        :pswitch_d5
        :pswitch_cf
        :pswitch_cf
        :pswitch_d8
    .end packed-switch
.end method

.method findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 365
    .local v0, mine:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1c

    iget-object v2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    move v1, v2

    .line 366
    .local v1, valuesEqual:Z
    :goto_18
    if-eqz v1, :cond_1f

    move-object v2, v0

    :goto_1b
    return-object v2

    .line 365
    .end local v1           #valuesEqual:Z
    :cond_1c
    const/4 v2, 0x0

    move v1, v2

    goto :goto_18

    .line 366
    .restart local v1       #valuesEqual:Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    sget-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
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
    .line 588
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_5
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    .line 606
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 608
    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 645
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 650
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
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
    .line 177
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 178
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 10
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, to:Ljava/lang/Object;,"TK;"
    if-eqz p2, :cond_11

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    .line 709
    .local v6, toBound:Ljava/util/TreeMap$Bound;
    :goto_5
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 708
    .end local v6           #toBound:Ljava/util/TreeMap$Bound;
    :cond_11
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    goto :goto_5
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, toExclusive:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

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
    .line 663
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 668
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 173
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
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
    .line 688
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    .line 689
    .local v0, result:Ljava/util/TreeMap$KeySet;,"Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/TreeMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    goto :goto_5
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
    .line 612
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_5
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    .line 630
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 632
    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 636
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 641
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
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
    .line 693
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    .line 694
    .local v0, result:Ljava/util/TreeMap$KeySet;,"Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/TreeMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

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
    .line 601
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
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
    .line 625
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
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
    .line 186
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    sget-object v2, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 241
    .local v0, created:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 242
    .local v1, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 243
    return-object v1
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
    .line 196
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 197
    .local v0, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method removeInternal(Ljava/util/TreeMap$Node;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    .line 374
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 375
    .local v1, left:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 376
    .local v4, right:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 377
    .local v3, originalParent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_45

    if-eqz v4, :cond_45

    .line 388
    iget v6, v1, Ljava/util/TreeMap$Node;->height:I

    iget v7, v4, Ljava/util/TreeMap$Node;->height:I

    if-le v6, v7, :cond_3f

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v6

    move-object v0, v6

    .line 389
    .local v0, adjacent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_16
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, leftHeight:I
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 393
    if-eqz v1, :cond_26

    .line 394
    iget v2, v1, Ljava/util/TreeMap$Node;->height:I

    .line 395
    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 396
    iput-object v0, v1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 397
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 399
    :cond_26
    const/4 v5, 0x0

    .line 400
    .local v5, rightHeight:I
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 401
    if-eqz v4, :cond_33

    .line 402
    iget v5, v4, Ljava/util/TreeMap$Node;->height:I

    .line 403
    iput-object v4, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 404
    iput-object v0, v4, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 405
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 407
    :cond_33
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ljava/util/TreeMap$Node;->height:I

    .line 408
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 423
    .end local v0           #adjacent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v2           #leftHeight:I
    .end local v5           #rightHeight:I
    :goto_3e
    return-void

    .line 388
    :cond_3f
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_16

    .line 410
    :cond_45
    if-eqz v1, :cond_5d

    .line 411
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 412
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 420
    :goto_4c
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    .line 421
    iget v6, p0, Ljava/util/TreeMap;->size:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 422
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    goto :goto_3e

    .line 413
    :cond_5d
    if-eqz v4, :cond_65

    .line 414
    invoke-direct {p0, p1, v4}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 415
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_4c

    .line 417
    :cond_65
    invoke-direct {p0, p1, v8}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    goto :goto_4c
.end method

.method removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 427
    .local v0, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 428
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 430
    :cond_9
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 169
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 12
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, from:Ljava/lang/Object;,"TK;"
    .local p3, to:Ljava/lang/Object;,"TK;"
    if-eqz p2, :cond_14

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    .line 699
    .local v4, fromBound:Ljava/util/TreeMap$Bound;
    :goto_5
    if-eqz p4, :cond_18

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    .line 700
    .local v6, toBound:Ljava/util/TreeMap$Bound;
    :goto_a
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 698
    .end local v4           #fromBound:Ljava/util/TreeMap$Bound;
    .end local v6           #toBound:Ljava/util/TreeMap$Bound;
    :cond_14
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    goto :goto_5

    .line 699
    .restart local v4       #fromBound:Ljava/util/TreeMap$Bound;
    :cond_18
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v6, v0

    goto :goto_a
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, fromInclusive:Ljava/lang/Object;,"TK;"
    .local p2, toExclusive:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 10
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, from:Ljava/lang/Object;,"TK;"
    if-eqz p2, :cond_11

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    .line 718
    .local v4, fromBound:Ljava/util/TreeMap$Bound;
    :goto_5
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 717
    .end local v4           #fromBound:Ljava/util/TreeMap$Bound;
    :cond_11
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v4, v0

    goto :goto_5
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, fromInclusive:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method
