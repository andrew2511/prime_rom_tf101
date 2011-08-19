.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;
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
.field private static final BASE_HEADER:Ljava/lang/Object; = null

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final LT:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

.field private static final seedGenerator:Ljava/util/Random; = null

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

.field private transient randomSeed:I

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 299
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    .line 3056
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    .line 3057
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1333
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1335
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1336
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1346
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1347
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1348
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1349
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
    .line 1362
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1364
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1365
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    .line 1366
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, m:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1378
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 1379
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1380
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1381
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    return-object v0
.end method

.method private addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V
    .registers 13
    .parameter
    .parameter
    .parameter "indexLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move v1, p3

    .line 924
    .local v1, insertionLevel:I
    iget-object v8, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 925
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    if-nez v3, :cond_11

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 930
    :cond_11
    iget v2, p2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 931
    .local v2, j:I
    move-object v5, p2

    .line 932
    .local v5, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 933
    .local v6, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v7, p1

    .line 935
    .local v7, t:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_17
    if-eqz v6, :cond_34

    .line 936
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 938
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 939
    .local v0, c:I
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v8, :cond_2e

    .line 940
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 942
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 943
    goto :goto_17

    .line 945
    :cond_2e
    if-lez v0, :cond_34

    .line 946
    move-object v5, v6

    .line 947
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 948
    goto :goto_17

    .line 952
    .end local v0           #c:I
    .end local v4           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_34
    if-ne v2, v1, :cond_54

    .line 954
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_40

    .line 955
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 964
    :cond_3f
    :goto_3f
    return-void

    .line 958
    :cond_40
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 960
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_54

    .line 962
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 963
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_3f

    .line 968
    :cond_54
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_5c

    if-ge v2, p3, :cond_5c

    .line 969
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 970
    :cond_5c
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 971
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_17
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .registers 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p1, :cond_8

    .line 1409
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 1411
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    move-object v7, v0

    .line 1412
    .local v7, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v5, v7, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1416
    .local v5, basepred:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v15, preds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_15
    move-object v0, v7

    iget v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-gt v0, v1, :cond_2a

    .line 1420
    const/16 v19, 0x0

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 1421
    :cond_2a
    move-object/from16 v16, v7

    .line 1422
    .local v16, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v9, v7, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_2e
    if-lez v9, :cond_40

    .line 1423
    move-object v0, v15

    move v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1424
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object/from16 v16, v0

    .line 1422
    add-int/lit8 v9, v9, -0x1

    goto :goto_2e

    .line 1427
    :cond_40
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1429
    .end local p1           #map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    .local v12, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_48
    :goto_48
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_df

    .line 1430
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1431
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v13

    .line 1432
    .local v13, j:I
    move-object v0, v7

    iget v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v19, v0

    move v0, v13

    move/from16 v1, v19

    if-le v0, v1, :cond_69

    move-object v0, v7

    iget v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    .line 1433
    :cond_69
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 1434
    .local v14, k:Ljava/lang/Object;,"TK;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 1435
    .local v17, v:Ljava/lang/Object;,"TV;"
    if-eqz v14, :cond_75

    if-nez v17, :cond_7b

    .line 1436
    :cond_75
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 1437
    :cond_7b
    new-instance v18, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1438
    .local v18, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    move-object/from16 v0, v18

    move-object v1, v5

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1439
    move-object/from16 v5, v18

    .line 1440
    if-lez v13, :cond_48

    .line 1441
    const/4 v10, 0x0

    .line 1442
    .local v10, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v9, 0x1

    move-object v11, v10

    .end local v10           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v11, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v8, v7

    .end local v7           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v8, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_96
    if-gt v9, v13, :cond_e7

    .line 1443
    new-instance v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v19, 0x0

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1444
    .end local v11           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v10       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v0, v8

    iget v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_e5

    .line 1445
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    move-object v0, v8

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v8

    move-object v3, v10

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1447
    .end local v8           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v7       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_bf
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_db

    .line 1448
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v0, v10

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1449
    invoke-virtual {v15, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :goto_d6
    add-int/lit8 v9, v9, 0x1

    move-object v11, v10

    .end local v10           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v11       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v8, v7

    .end local v7           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v8       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_96

    .line 1451
    .end local v8           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v11           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v7       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v10       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_db
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 1455
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v10           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v13           #j:I
    .end local v14           #k:Ljava/lang/Object;,"TK;"
    .end local v17           #v:Ljava/lang/Object;,"TV;"
    .end local v18           #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_df
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1456
    return-void

    .end local v7           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v8       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v10       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v13       #j:I
    .restart local v14       #k:Ljava/lang/Object;,"TK;"
    .restart local v17       #v:Ljava/lang/Object;,"TV;"
    .restart local v18       #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_e5
    move-object v7, v8

    .end local v8           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v7       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_bf

    .end local v7           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v10           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v11       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_e7
    move-object v7, v8

    .end local v8           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v7       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto/16 :goto_48
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private clearIndexToFirst()V
    .registers 4

    .prologue
    .line 1124
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1126
    .local v0, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_2
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1127
    .local v1, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    :cond_12
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v0, :cond_2

    .line 1130
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v2, :cond_1f

    .line 1131
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    .line 1132
    :cond_1f
    return-void
.end method

.method private comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 611
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_14

    .line 612
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;-><init>(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 614
    .end local p1
    :goto_13
    return-object v0

    .restart local p1
    :cond_14
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    move-object v0, p1

    goto :goto_13
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "okey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 779
    .local v0, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 780
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_c

    .line 781
    const/4 v3, 0x0

    .line 784
    :goto_b
    return-object v3

    .line 782
    :cond_c
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 783
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_4

    move-object v3, v2

    .line 784
    goto :goto_b
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, kkey:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 801
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_4
    :goto_4
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 802
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 804
    .local v5, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_a
    if-eqz v5, :cond_37

    .line 805
    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 806
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v5, v8, :cond_4

    .line 808
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 809
    .local v6, v:Ljava/lang/Object;
    if-nez v6, :cond_1a

    .line 810
    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_4

    .line 813
    :cond_1a
    if-eq v6, v5, :cond_4

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 815
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 816
    .local v1, c:I
    if-lez v1, :cond_2b

    .line 817
    move-object v0, v5

    .line 818
    move-object v5, v2

    .line 819
    goto :goto_a

    .line 821
    :cond_2b
    if-nez v1, :cond_37

    .line 822
    if-nez p3, :cond_35

    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_35
    move-object v8, v6

    .line 836
    .end local v1           #c:I
    .end local v2           #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v6           #v:Ljava/lang/Object;
    :goto_36
    return-object v8

    .line 830
    :cond_37
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v7, p1, p2, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 831
    .local v7, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {v0, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 833
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v4

    .line 834
    .local v4, level:I
    if-lez v4, :cond_4b

    .line 835
    invoke-direct {p0, v7, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V

    .line 836
    :cond_4b
    const/4 v8, 0x0

    goto :goto_36
.end method

.method private findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    const/4 v6, 0x0

    .line 740
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 741
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 743
    .local v3, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_7
    if-nez v3, :cond_b

    move-object v5, v6

    .line 759
    :goto_a
    return-object v5

    .line 745
    :cond_b
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 746
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v3, v5, :cond_1

    .line 748
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 749
    .local v4, v:Ljava/lang/Object;
    if-nez v4, :cond_19

    .line 750
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_1

    .line 753
    :cond_19
    if-eq v4, v3, :cond_1

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 755
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 756
    .local v1, c:I
    if-nez v1, :cond_29

    move-object v5, v3

    .line 757
    goto :goto_a

    .line 758
    :cond_29
    if-gez v1, :cond_2d

    move-object v5, v6

    .line 759
    goto :goto_a

    .line 760
    :cond_2d
    move-object v0, v3

    .line 761
    move-object v3, v2

    .line 762
    goto :goto_7
.end method

.method private findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    if-nez p1, :cond_8

    .line 664
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 666
    :cond_8
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 667
    .local v3, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 669
    .local v4, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_c
    if-eqz v4, :cond_29

    .line 670
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 671
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 672
    .local v1, k:Ljava/lang/Object;,"TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v5, :cond_1f

    .line 673
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 675
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 676
    goto :goto_c

    .line 678
    :cond_1f
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_29

    .line 679
    move-object v3, v4

    .line 680
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 681
    goto :goto_c

    .line 684
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    .end local v2           #n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_29
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 685
    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_31

    .line 686
    move-object v3, v0

    .line 687
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_c

    .line 689
    :cond_31
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v5
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1196
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1199
    .local v1, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v2, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_18

    .line 1200
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1201
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    goto :goto_0

    .line 1205
    :cond_10
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v3, :cond_18

    .line 1206
    move-object v1, v2

    .line 1207
    goto :goto_2

    .line 1210
    :cond_18
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 1211
    move-object v1, v0

    goto :goto_2

    .line 1213
    :cond_1e
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    return-object v3
.end method

.method private insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V
    .registers 22
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    move-object v5, v0

    .line 869
    .local v5, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v12, v5, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    .line 871
    .local v12, max:I
    move/from16 v0, p2

    move v1, v12

    if-gt v0, v1, :cond_2f

    .line 872
    const/4 v7, 0x0

    .line 873
    .local v7, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v6, 0x1

    .local v6, i:I
    move-object v8, v7

    .end local v7           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v8, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_f
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_25

    .line 874
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 873
    .end local v8           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v7       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    .end local v7           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_f

    .line 875
    :cond_25
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    .line 912
    :goto_2e
    return-void

    .line 886
    .end local v6           #i:I
    .end local v8           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_2f
    add-int/lit8 p2, v12, 0x1

    .line 887
    add-int/lit8 v18, p2, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v0

    check-cast v9, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 888
    .local v9, idxs:[Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v7, 0x0

    .line 889
    .restart local v7       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v6, 0x1

    .restart local v6       #i:I
    move-object v8, v7

    .end local v7           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_3d
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_55

    .line 890
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .end local v8           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v7       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v7, v9, v6

    .line 889
    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    .end local v7           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_3d

    .line 895
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    move-object/from16 v17, v0

    .line 896
    .local v17, oldh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    move v15, v0

    .line 897
    .local v15, oldLevel:I
    move/from16 v0, p2

    move v1, v15

    if-gt v0, v1, :cond_74

    .line 898
    move/from16 v11, p2

    .line 910
    .local v11, k:I
    :goto_67
    aget-object v18, v9, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    goto :goto_2e

    .line 901
    .end local v11           #k:I
    :cond_74
    move-object/from16 v13, v17

    .line 902
    .local v13, newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object/from16 v16, v0

    .line 903
    .local v16, oldbase:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    add-int/lit8 v10, v15, 0x1

    .local v10, j:I
    move-object v14, v13

    .end local v13           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v14, newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_7f
    move v0, v10

    move/from16 v1, p2

    if-gt v0, v1, :cond_96

    .line 904
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    aget-object v18, v9, v10

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, v18

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 903
    .end local v14           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v13       #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    add-int/lit8 v10, v10, 0x1

    move-object v14, v13

    .end local v13           #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v14       #newh:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_7f

    .line 905
    :cond_96
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 906
    move v11, v15

    .line 907
    .restart local v11       #k:I
    goto :goto_67
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .registers 7
    .parameter "UNSAFE"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 3063
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 3064
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 3066
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 3067
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3068
    throw v1
.end method

.method private randomLevel()I
    .registers 4

    .prologue
    .line 851
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 852
    .local v1, x:I
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 853
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 854
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 855
    const v2, -0x7fffffff

    and-int/2addr v2, v1

    if-eqz v2, :cond_15

    .line 856
    const/4 v2, 0x0

    .line 859
    :goto_14
    return v2

    .line 857
    :cond_15
    const/4 v0, 0x1

    .line 858
    .local v0, level:I
    :goto_16
    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1f
    move v2, v0

    .line 859
    goto :goto_14
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 17
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1493
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1503
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1504
    .local v1, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1505
    .local v0, basepred:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v9, preds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-gt v3, v14, :cond_1b

    .line 1507
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1508
    :cond_1b
    move-object v10, v1

    .line 1509
    .local v10, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    :goto_1e
    if-lez v3, :cond_29

    .line 1510
    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1511
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1509
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v5, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, j:I
    .local v7, k:Ljava/lang/Object;
    .local v8, key:Ljava/lang/Object;,"TK;"
    .local v11, v:Ljava/lang/Object;
    .local v12, val:Ljava/lang/Object;,"TV;"
    .local v13, z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_28
    move-object v1, v2

    .line 1515
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6           #j:I
    .end local v7           #k:Ljava/lang/Object;
    .end local v8           #key:Ljava/lang/Object;,"TK;"
    .end local v11           #v:Ljava/lang/Object;
    .end local v12           #val:Ljava/lang/Object;,"TV;"
    .end local v13           #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_29
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 1516
    .restart local v7       #k:Ljava/lang/Object;
    if-nez v7, :cond_32

    .line 1543
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1544
    return-void

    .line 1518
    :cond_32
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 1519
    .restart local v11       #v:Ljava/lang/Object;
    if-nez v11, :cond_3e

    .line 1520
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1521
    :cond_3e
    move-object v8, v7

    .line 1522
    .restart local v8       #key:Ljava/lang/Object;,"TK;"
    move-object v12, v11

    .line 1523
    .restart local v12       #val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    move-result v6

    .line 1524
    .restart local v6       #j:I
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v6, v14, :cond_4c

    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    add-int/lit8 v6, v14, 0x1

    .line 1525
    :cond_4c
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    .line 1526
    .restart local v13       #z:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1527
    move-object v0, v13

    .line 1528
    if-lez v6, :cond_29

    .line 1529
    const/4 v4, 0x0

    .line 1530
    .local v4, idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x1

    move-object v5, v4

    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_5b
    if-gt v3, v6, :cond_28

    .line 1531
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    const/4 v14, 0x0

    invoke-direct {v4, v13, v5, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    .line 1532
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    if-le v3, v14, :cond_88

    .line 1533
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-direct {v1, v14, v2, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    .line 1535
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_6e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_84

    .line 1536
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 1537
    invoke-virtual {v9, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_5b

    .line 1539
    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5           #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v4       #idx:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_84
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .end local v1           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_88
    move-object v1, v2

    .end local v2           #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_6e
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2248
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2249
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2250
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2251
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_17
    return-object v2
.end method

.method private tryReduceLevel()V
    .registers 6

    .prologue
    .line 1060
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1063
    .local v2, h:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_2c

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v0, d:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v0, :cond_2c

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .local v1, e:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v1, :cond_2c

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_2c

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_2c

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v3, :cond_2c

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v3, :cond_2c

    .line 1071
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    .line 1072
    .end local v0           #d:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v1           #e:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,"Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_2c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1472
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1475
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_1a

    .line 1476
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1477
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_17

    .line 1478
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1479
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1475
    :cond_17
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_7

    .line 1482
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1483
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
    .line 2048
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

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
    .line 2056
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2057
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_8
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 1671
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1672
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1392
    .local v0, clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_e

    .line 1397
    .restart local v0       #clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    .line 1398
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    .line 1399
    return-object v0

    .line 1393
    .end local v0           #clone:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_e
    move-exception v2

    move-object v1, v2

    .line 1394
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1899
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 622
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, k1:Ljava/lang/Object;,"TK;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 623
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-eqz v0, :cond_9

    .line 624
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 626
    .end local p1           #k1:Ljava/lang/Object;,"TK;"
    :goto_8
    return v1

    .restart local p1       #k1:Ljava/lang/Object;,"TK;"
    :cond_9
    check-cast p1, Ljava/lang/Comparable;

    .end local p1           #k1:Ljava/lang/Object;,"TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_8
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 1559
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .registers 5
    .parameter "value"

    .prologue
    .line 1624
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 1625
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1626
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_c
    if-eqz v0, :cond_1f

    .line 1627
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v1

    .line 1628
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1c

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1629
    const/4 v2, 0x1

    .line 1631
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :goto_1b
    return v2

    .line 1626
    .restart local v1       #v:Ljava/lang/Object;,"TV;"
    :cond_1c
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_c

    .line 1631
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
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
    .line 1775
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1769
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1770
    .local v7, dm:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v7, :cond_8

    move-object v0, v7

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    goto :goto_7
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter "okey"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 998
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1000
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_5
    :goto_5
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1001
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1003
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_b
    if-nez v4, :cond_f

    move-object v6, v7

    .line 1034
    :goto_e
    return-object v6

    .line 1005
    :cond_f
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1006
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v6, :cond_5

    .line 1008
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1009
    .local v5, v:Ljava/lang/Object;
    if-nez v5, :cond_1d

    .line 1010
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_5

    .line 1013
    :cond_1d
    if-eq v5, v4, :cond_5

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 1015
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1016
    .local v1, c:I
    if-gez v1, :cond_2d

    move-object v6, v7

    .line 1017
    goto :goto_e

    .line 1018
    :cond_2d
    if-lez v1, :cond_32

    .line 1019
    move-object v0, v4

    .line 1020
    move-object v4, v2

    .line 1021
    goto :goto_b

    .line 1023
    :cond_32
    if-eqz p2, :cond_3c

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    move-object v6, v7

    .line 1024
    goto :goto_e

    .line 1025
    :cond_3c
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1027
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 1028
    :cond_4e
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    :cond_51
    :goto_51
    move-object v6, v5

    .line 1034
    goto :goto_e

    .line 1030
    :cond_53
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1031
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_51

    .line 1032
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_51
.end method

.method doRemoveFirstEntry()Ljava/util/Map$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 1098
    :cond_1
    :goto_1
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1099
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1100
    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_b

    move-object v4, v5

    .line 1115
    :goto_a
    return-object v4

    .line 1102
    :cond_b
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1103
    .local v1, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v2, v4, :cond_1

    .line 1105
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1106
    .local v3, v:Ljava/lang/Object;
    if-nez v3, :cond_19

    .line 1107
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_1

    .line 1110
    :cond_19
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1112
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1113
    :cond_2b
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1114
    :cond_2e
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    .line 1115
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method doRemoveLastEntry()Ljava/util/Map$Entry;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 1225
    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1226
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1227
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v4, :cond_15

    .line 1228
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v7

    .line 1260
    :goto_10
    return-object v6

    .line 1244
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v5, v:Ljava/lang/Object;
    :cond_11
    if-eqz v2, :cond_2a

    .line 1245
    move-object v0, v4

    .line 1246
    move-object v4, v2

    .line 1234
    .end local v2           #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5           #v:Ljava/lang/Object;
    :cond_15
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1235
    .restart local v2       #f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v6, :cond_1

    .line 1237
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1238
    .restart local v5       #v:Ljava/lang/Object;
    if-nez v5, :cond_23

    .line 1239
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_1

    .line 1242
    :cond_23
    if-eq v5, v4, :cond_1

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v6, :cond_11

    goto :goto_1

    .line 1249
    :cond_2a
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1251
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 1252
    .local v3, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1253
    .local v1, ck:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1254
    :cond_42
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1260
    :cond_45
    :goto_45
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 1256
    :cond_4b
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1257
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-nez v6, :cond_45

    .line 1258
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    goto :goto_45
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
    .line 2235
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1764
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 1765
    .local v0, es:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1793
    if-ne p1, p0, :cond_6

    move v8, v11

    .line 1812
    :goto_5
    return v8

    .line 1795
    :cond_6
    instance-of v8, p1, Ljava/util/Map;

    if-nez v8, :cond_c

    move v8, v10

    .line 1796
    goto :goto_5

    .line 1797
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 1799
    .local v5, m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_10
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1800
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    move v8, v10

    .line 1801
    goto :goto_5

    .line 1802
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_38
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1803
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 1804
    .local v4, k:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 1805
    .local v7, v:Ljava/lang/Object;
    if-eqz v4, :cond_62

    if-eqz v7, :cond_62

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_5f} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_5f} :catch_6a

    move-result v8

    if-nez v8, :cond_40

    :cond_62
    move v8, v10

    .line 1806
    goto :goto_5

    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v4           #k:Ljava/lang/Object;
    .end local v7           #v:Ljava/lang/Object;
    :cond_64
    move v8, v11

    .line 1808
    goto :goto_5

    .line 1809
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_66
    move-exception v8

    move-object v6, v8

    .local v6, unused:Ljava/lang/ClassCastException;
    move v8, v10

    .line 1810
    goto :goto_5

    .line 1811
    .end local v6           #unused:Ljava/lang/ClassCastException;
    :catch_6a
    move-exception v8

    move-object v6, v8

    .local v6, unused:Ljava/lang/NullPointerException;
    move v8, v10

    .line 1812
    goto :goto_5
.end method

.method findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1083
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1084
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_a

    .line 1085
    const/4 v2, 0x0

    .line 1087
    :goto_9
    return-object v2

    .line 1086
    :cond_a
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_10

    move-object v2, v1

    .line 1087
    goto :goto_9

    .line 1088
    :cond_10
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_0
.end method

.method findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 1154
    .local v4, q:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v5, r:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v5, :cond_14

    .line 1155
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1156
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    .line 1157
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_2

    .line 1160
    :cond_12
    move-object v4, v5

    goto :goto_2

    .line 1161
    :cond_14
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v1, d:Ljava/util/concurrent/ConcurrentSkipListMap$Index;,"Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_1a

    .line 1162
    move-object v4, v1

    goto :goto_2

    .line 1164
    :cond_1a
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1165
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1167
    .local v3, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1e
    if-nez v3, :cond_2a

    .line 1168
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v7

    if-eqz v7, :cond_28

    const/4 v7, 0x0

    :goto_27
    return-object v7

    :cond_28
    move-object v7, v0

    goto :goto_27

    .line 1169
    :cond_2a
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1170
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v3, v7, :cond_33

    .line 1182
    :cond_30
    :goto_30
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    goto :goto_2

    .line 1172
    :cond_33
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1173
    .local v6, v:Ljava/lang/Object;
    if-nez v6, :cond_3b

    .line 1174
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_30

    .line 1177
    :cond_3b
    if-eq v6, v3, :cond_30

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v7, :cond_30

    .line 1179
    move-object v0, v3

    .line 1180
    move-object v3, v2

    .line 1181
    goto :goto_1e
.end method

.method findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 11
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, kkey:Ljava/lang/Object;,"TK;"
    const/4 v7, 0x0

    .line 1280
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    .line 1282
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_5
    :goto_5
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1283
    .local v0, b:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1285
    .local v4, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_b
    if-nez v4, :cond_1b

    .line 1286
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_17
    move-object v6, v7

    .line 1302
    :goto_18
    return-object v6

    :cond_19
    move-object v6, v0

    .line 1286
    goto :goto_18

    .line 1287
    :cond_1b
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 1288
    .local v2, f:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-ne v4, v6, :cond_5

    .line 1290
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1291
    .local v5, v:Ljava/lang/Object;
    if-nez v5, :cond_29

    .line 1292
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    goto :goto_5

    .line 1295
    :cond_29
    if-eq v5, v4, :cond_5

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 1297
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 1298
    .local v1, c:I
    if-nez v1, :cond_3b

    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_41

    :cond_3b
    if-gez v1, :cond_43

    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_43

    :cond_41
    move-object v6, v4

    .line 1300
    goto :goto_18

    .line 1301
    :cond_43
    if-gtz v1, :cond_53

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_53

    .line 1302
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    move-result v6

    if-eqz v6, :cond_51

    move-object v6, v7

    goto :goto_18

    :cond_51
    move-object v6, v0

    goto :goto_18

    .line 1303
    :cond_53
    move-object v0, v4

    .line 1304
    move-object v4, v2

    .line 1305
    goto :goto_b
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2092
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2093
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_8

    .line 2094
    const/4 v2, 0x0

    .line 2097
    :goto_7
    return-object v2

    .line 2095
    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2096
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2097
    goto :goto_7
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1906
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1907
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_c

    .line 1908
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1909
    :cond_c
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
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
    .line 2025
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

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
    .line 2034
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2035
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_8
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1577
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 6
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1318
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_8

    .line 1319
    const/4 v2, 0x0

    .line 1322
    :goto_7
    return-object v2

    .line 1320
    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 1321
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1322
    goto :goto_7
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1978
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 10
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x0

    .line 1944
    if-nez p1, :cond_9

    .line 1945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1946
    :cond_9
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

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
    .line 2071
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

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
    .line 2080
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2081
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_8
.end method

.method inHalfOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, least:Ljava/lang/Object;,"TK;"
    .local p3, fence:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_8

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 637
    :cond_8
    if-eqz p2, :cond_10

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1a

    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method inOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, least:Ljava/lang/Object;,"TK;"
    .local p3, fence:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_8

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 648
    :cond_8
    if-eqz p2, :cond_10

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1a

    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method final initialize()V
    .registers 5

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 339
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 340
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .line 341
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 342
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 343
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->seedGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    .line 344
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    .line 346
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1664
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 2227
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1707
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1708
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_5
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2109
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2110
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_8

    .line 2111
    const/4 v2, 0x0

    .line 2114
    :goto_7
    return-object v2

    .line 2112
    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 2113
    .local v0, e:Ljava/util/AbstractMap$SimpleImmutableEntry;,"Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2114
    goto :goto_7
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1916
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 1917
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_c

    .line 1918
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1919
    :cond_c
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v1
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
    .line 2002
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

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
    .line 2010
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    .line 2011
    .local v0, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    goto :goto_8
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
    .line 1712
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 1713
    .local v0, ks:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

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
    .line 2125
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

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
    .line 2135
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

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
    .line 1594
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1596
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

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
    .line 1828
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 1829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1830
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1610
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1841
    if-nez p1, :cond_9

    .line 1842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1843
    :cond_9
    if-nez p2, :cond_d

    move v0, v1

    .line 1845
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    move v0, v1

    goto :goto_c
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 1884
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1885
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1887
    .local v0, k:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1888
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_14

    .line 1889
    const/4 v3, 0x0

    .line 1892
    :goto_13
    return-object v3

    .line 1890
    :cond_14
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1891
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_c

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    .line 1892
    goto :goto_13
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    const/4 v4, 0x0

    .line 1856
    if-eqz p2, :cond_5

    if-nez p3, :cond_b

    .line 1857
    :cond_5
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1858
    :cond_b
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1860
    .local v0, k:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TK;>;"
    :cond_f
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 1861
    .local v1, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_17

    move v3, v4

    .line 1868
    :goto_16
    return v3

    .line 1863
    :cond_17
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 1864
    .local v2, v:Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 1865
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    .line 1866
    goto :goto_16

    .line 1867
    :cond_23
    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1868
    const/4 v3, 0x1

    goto :goto_16
.end method

.method public size()I
    .registers 6

    .prologue
    .line 1651
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1652
    .local v0, count:J
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .local v2, n:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_6
    if-eqz v2, :cond_14

    .line 1653
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1654
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 1652
    :cond_11
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_6

    .line 1656
    :cond_14
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1f

    const v3, 0x7fffffff

    :goto_1e
    return v3

    :cond_1f
    long-to-int v3, v0

    goto :goto_1e
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1969
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 12
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1931
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p3, toKey:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_4

    if-nez p3, :cond_a

    .line 1932
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1933
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1987
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 10
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    const/4 v5, 0x0

    .line 1957
    if-nez p1, :cond_9

    .line 1958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1959
    :cond_9
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

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
    .line 2231
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1735
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap;,"Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .line 1736
    .local v0, vs:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    if-eqz v0, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    goto :goto_5
.end method
