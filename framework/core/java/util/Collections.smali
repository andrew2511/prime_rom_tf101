.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedListIterator;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$CopiesList;
    }
.end annotation


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 176
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/Collections$EmptySet;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1459
    return-void
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    .prologue
    .line 2636
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 2637
    .local v1, modified:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_f

    .line 2638
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2637
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2640
    :cond_f
    return v1
.end method

.method public static asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2708
    .local p0, deque:Ljava/util/Deque;,"Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    const/4 v6, 0x1

    .line 1481
    if-nez p0, :cond_9

    .line 1482
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1484
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1485
    const/4 v5, -0x1

    .line 1514
    :goto_10
    return v5

    .line 1489
    :cond_11
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_41

    .line 1490
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1491
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_19
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1493
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    .local v4, result:I
    if-gtz v4, :cond_19

    .line 1494
    if-nez v4, :cond_33

    .line 1495
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    goto :goto_10

    .line 1497
    :cond_33
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_10

    .line 1500
    .end local v4           #result:I
    :cond_3a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_10

    .line 1503
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_41
    const/4 v2, 0x0

    .local v2, low:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, mid:I
    sub-int v0, v3, v6

    .local v0, high:I
    const/4 v4, -0x1

    .line 1504
    .restart local v4       #result:I
    :goto_49
    if-gt v2, v0, :cond_66

    .line 1505
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 1506
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_5f

    .line 1507
    add-int/lit8 v2, v3, 0x1

    goto :goto_49

    .line 1508
    :cond_5f
    if-nez v4, :cond_63

    move v5, v3

    .line 1509
    goto :goto_10

    .line 1511
    :cond_63
    sub-int v0, v3, v6

    goto :goto_49

    .line 1514
    :cond_66
    neg-int v5, v3

    if-gez v4, :cond_6b

    :goto_69
    sub-int/2addr v5, v6

    goto :goto_10

    :cond_6b
    const/4 v6, 0x2

    goto :goto_69
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    .line 1543
    if-nez p2, :cond_8

    .line 1544
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    .line 1572
    :goto_7
    return v5

    .line 1547
    :cond_8
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_36

    .line 1548
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1549
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+TT;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1551
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    .local v4, result:I
    if-gtz v4, :cond_10

    .line 1552
    if-nez v4, :cond_28

    .line 1553
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    goto :goto_7

    .line 1555
    :cond_28
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_7

    .line 1558
    .end local v4           #result:I
    :cond_2f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_7

    .line 1561
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+TT;>;"
    :cond_36
    const/4 v2, 0x0

    .local v2, low:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, mid:I
    sub-int v0, v3, v6

    .local v0, high:I
    const/4 v4, -0x1

    .line 1562
    .restart local v4       #result:I
    :goto_3e
    if-gt v2, v0, :cond_59

    .line 1563
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 1564
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    neg-int v4, v5

    if-lez v4, :cond_52

    .line 1565
    add-int/lit8 v2, v3, 0x1

    goto :goto_3e

    .line 1566
    :cond_52
    if-nez v4, :cond_56

    move v5, v3

    .line 1567
    goto :goto_7

    .line 1569
    :cond_56
    sub-int v0, v3, v6

    goto :goto_3e

    .line 1572
    :cond_59
    neg-int v5, v3

    if-gez v4, :cond_5e

    :goto_5c
    sub-int/2addr v5, v6

    goto :goto_7

    :cond_5e
    const/4 v6, 0x2

    goto :goto_5c
.end method

.method static checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2682
    .local p0, obj:Ljava/lang/Object;,"TE;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<+TE;>;"
    if-eqz p0, :cond_2f

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2683
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to insert element of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into collection of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2686
    :cond_2f
    return-object p0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2524
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2559
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2560
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 2562
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2543
    .local p0, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$1;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2578
    .local p0, s:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2597
    .local p0, m:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2614
    .local p0, s:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1592
    .local p0, destination:Ljava/util/List;,"Ljava/util/List<-TT;>;"
    .local p1, source:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 1593
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destination.size() < source.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1596
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1597
    .local v2, srcIt:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1598
    .local v0, destIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<-TT;>;"
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 1600
    :try_start_43
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_46
    .catch Ljava/util/NoSuchElementException; {:try_start_43 .. :try_end_46} :catch_4e

    .line 1606
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3d

    .line 1601
    :catch_4e
    move-exception v1

    .line 1603
    .local v1, e:Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fit into destination"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1608
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_72
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2656
    .local p0, c1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, c2:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_8

    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_12

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_15

    .line 2658
    :cond_12
    move-object v1, p0

    .line 2659
    .local v1, tmp:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    move-object p0, p1

    .line 2660
    move-object p1, v1

    .line 2662
    .end local v1           #tmp:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2663
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2664
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2665
    const/4 v2, 0x0

    .line 2668
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x1

    goto :goto_2a
.end method

.method public static final emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2483
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2507
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2495
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1618
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    move-object v0, p0

    .line 1619
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    new-instance v1, Ljava/util/Collections$1;

    invoke-direct {v1, v0}, Ljava/util/Collections$1;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1643
    .local p0, list:Ljava/util/List;,"Ljava/util/List<-TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1644
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<-TT;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1645
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1646
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 1648
    :cond_11
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2457
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez p0, :cond_8

    .line 2458
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2460
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2461
    const/4 v3, 0x0

    .line 2471
    :goto_f
    return v3

    .line 2463
    :cond_10
    const/4 v2, 0x0

    .line 2464
    .local v2, result:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2465
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2467
    .local v0, e:Ljava/lang/Object;
    if-nez p1, :cond_26

    if-nez v0, :cond_15

    .line 2468
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2467
    :cond_26
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_23

    .end local v0           #e:Ljava/lang/Object;
    :cond_2d
    move v3, v2

    .line 2471
    goto :goto_f
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, sublist:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 2106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2107
    .local v5, size:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2109
    .local v7, sublistSize:I
    if-le v7, v5, :cond_e

    move v8, v9

    .line 2156
    :cond_d
    :goto_d
    return v8

    .line 2113
    :cond_e
    if-eqz v7, :cond_d

    .line 2118
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2119
    .local v2, firstObj:Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2120
    .local v3, index:I
    if-ne v3, v9, :cond_1e

    move v8, v9

    .line 2121
    goto :goto_d

    .line 2154
    .local v4, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 2124
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_1e
    if-ge v3, v5, :cond_6b

    sub-int v8, v5, v3

    if-lt v8, v7, :cond_6b

    .line 2125
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2127
    .restart local v4       #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-nez v2, :cond_48

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 2132
    :goto_30
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2133
    .local v6, sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2134
    .local v0, difFound:Z
    :cond_36
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 2135
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2136
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_53

    move v8, v9

    .line 2137
    goto :goto_d

    .line 2127
    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_48
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_30

    .line 2139
    .restart local v0       #difFound:Z
    .restart local v1       #element:Ljava/lang/Object;
    .restart local v6       #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_53
    if-nez v1, :cond_60

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 2141
    :goto_5b
    const/4 v0, 0x1

    .line 2147
    .end local v1           #element:Ljava/lang/Object;
    :cond_5c
    if-nez v0, :cond_1c

    move v8, v3

    .line 2148
    goto :goto_d

    .line 2139
    .restart local v1       #element:Ljava/lang/Object;
    :cond_60
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_5b

    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_6b
    move v8, v9

    .line 2156
    goto :goto_d
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, sublist:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2174
    .local v7, sublistSize:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2176
    .local v5, size:I
    if-le v7, v5, :cond_e

    move v8, v9

    .line 2220
    :goto_d
    return v8

    .line 2180
    :cond_e
    if-nez v7, :cond_12

    move v8, v5

    .line 2181
    goto :goto_d

    .line 2185
    :cond_12
    sub-int v8, v7, v10

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2186
    .local v3, lastObj:Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2188
    .local v2, index:I
    :goto_1c
    if-le v2, v9, :cond_71

    add-int/lit8 v8, v2, 0x1

    if-lt v8, v7, :cond_71

    .line 2189
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2191
    .local v4, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-nez v3, :cond_49

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_53

    .line 2195
    :cond_30
    sub-int v8, v7, v10

    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2197
    .local v6, sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2198
    .local v0, difFound:Z
    :cond_37
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 2199
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 2200
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-nez v8, :cond_56

    move v8, v9

    .line 2201
    goto :goto_d

    .line 2191
    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_49
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 2218
    :cond_53
    add-int/lit8 v2, v2, -0x1

    .line 2219
    goto :goto_1c

    .line 2203
    .restart local v0       #difFound:Z
    .restart local v1       #element:Ljava/lang/Object;
    .restart local v6       #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_56
    if-nez v1, :cond_66

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_37

    .line 2205
    :goto_5e
    const/4 v0, 0x1

    .line 2211
    .end local v1           #element:Ljava/lang/Object;
    :cond_5f
    if-nez v0, :cond_53

    .line 2212
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    goto :goto_d

    .line 2203
    .restart local v1       #element:Ljava/lang/Object;
    :cond_66
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_5e

    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_71
    move v8, v9

    .line 2220
    goto :goto_d
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2233
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2235
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2237
    :cond_13
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1663
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1664
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1665
    .local v2, max:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1666
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1667
    .local v3, next:Ljava/lang/Object;,"TT;"
    move-object v0, v2

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_8

    .line 1668
    move-object v2, v3

    goto :goto_8

    .line 1671
    .end local v3           #next:Ljava/lang/Object;,"TT;"
    :cond_1e
    return-object v2
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1689
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_8

    .line 1691
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    .local v3, result:Ljava/lang/Object;,"TT;"
    move-object v4, v3

    .line 1703
    .end local v3           #result:Ljava/lang/Object;,"TT;"
    :goto_7
    return-object v4

    .line 1695
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1696
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1697
    .local v1, max:Ljava/lang/Object;,"TT;"
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1698
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1699
    .local v2, next:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_10

    .line 1700
    move-object v1, v2

    goto :goto_10

    .end local v2           #next:Ljava/lang/Object;,"TT;"
    :cond_22
    move-object v4, v1

    .line 1703
    goto :goto_7
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1719
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1720
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1721
    .local v2, min:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1723
    .local v3, next:Ljava/lang/Object;,"TT;"
    move-object v0, v2

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_8

    .line 1724
    move-object v2, v3

    goto :goto_8

    .line 1727
    .end local v3           #next:Ljava/lang/Object;,"TT;"
    :cond_1e
    return-object v2
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1745
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_8

    .line 1747
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    .local v3, result:Ljava/lang/Object;,"TT;"
    move-object v4, v3

    .line 1759
    .end local v3           #result:Ljava/lang/Object;,"TT;"
    :goto_7
    return-object v4

    .line 1751
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1752
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1753
    .local v1, min:Ljava/lang/Object;,"TT;"
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1754
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1755
    .local v2, next:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_10

    .line 1756
    move-object v1, v2

    goto :goto_10

    .end local v2           #next:Ljava/lang/Object;,"TT;"
    :cond_22
    move-object v4, v1

    .line 1759
    goto :goto_7
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "length"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1775
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2696
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2697
    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 2699
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 2025
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    .local p2, obj2:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 2027
    .local v0, found:Z
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    .line 2028
    const/4 v0, 0x1

    .line 2029
    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2031
    :cond_d
    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1790
    .local v5, size:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1791
    .local v2, front:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1793
    .local v0, back:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_22

    .line 1794
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1795
    .local v3, frontNext:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 1796
    .local v1, backPrev:Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1797
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1793
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1799
    .end local v1           #backPrev:Ljava/lang/Object;
    .end local v3           #frontNext:Ljava/lang/Object;
    :cond_22
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1812
    invoke-static {}, Ljava/util/Collections$ReverseComparator;->access$300()Ljava/util/Collections$ReverseComparator;

    move-result-object v0

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1830
    .local p0, c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_7

    .line 1831
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 1836
    .end local p0           #c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    :goto_6
    return-object v0

    .line 1833
    .restart local p0       #c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    :cond_7
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_12

    .line 1834
    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    .end local p0           #c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    #getter for: Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;
    invoke-static {p0}, Ljava/util/Collections$ReverseComparator2;->access$400(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_6

    .line 1836
    .restart local p0       #c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    :cond_12
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    goto :goto_6
.end method

.method public static rotate(Ljava/util/List;I)V
    .registers 14
    .parameter
    .parameter "dist"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, lst:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v11, 0x0

    .line 2049
    move-object v4, p0

    .line 2050
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2053
    .local v6, size:I
    if-nez v6, :cond_9

    .line 2090
    :cond_8
    :goto_8
    return-void

    .line 2059
    :cond_9
    if-lez p1, :cond_32

    .line 2060
    rem-int v5, p1, v6

    .line 2065
    .local v5, normdist:I
    :goto_d
    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_8

    .line 2069
    instance-of v10, v4, Ljava/util/RandomAccess;

    if-eqz v10, :cond_39

    .line 2072
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2073
    .local v9, temp:Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, index:I
    const/4 v0, 0x0

    .line 2074
    .local v0, beginIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v6, :cond_8

    .line 2075
    add-int v10, v3, v5

    rem-int v3, v10, v6

    .line 2076
    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2077
    if-ne v3, v0, :cond_2f

    .line 2078
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 2079
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2074
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2062
    .end local v0           #beginIndex:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #normdist:I
    .end local v9           #temp:Ljava/lang/Object;
    :cond_32
    rem-int v10, p1, v6

    mul-int/lit8 v10, v10, -0x1

    sub-int v5, v6, v10

    .restart local v5       #normdist:I
    goto :goto_d

    .line 2083
    :cond_39
    sub-int v10, v6, v5

    rem-int v1, v10, v6

    .line 2084
    .local v1, divideIndex:I
    invoke-interface {v4, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2085
    .local v7, sublist1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 2086
    .local v8, sublist2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2087
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2088
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_8
.end method

.method public static shuffle(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 1850
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .registers 11
    .parameter
    .parameter "random"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v8, 0x1

    .line 1865
    move-object v5, p0

    .line 1867
    .local v5, objectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v7, p0, Ljava/util/RandomAccess;

    if-eqz v7, :cond_22

    .line 1868
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int v1, v7, v8

    .local v1, i:I
    :goto_c
    if-lez v1, :cond_53

    .line 1869
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1870
    .local v3, index:I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1868
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1873
    .end local v1           #i:I
    .end local v3           #index:I
    :cond_22
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1874
    .local v0, array:[Ljava/lang/Object;
    array-length v7, v0

    sub-int v1, v7, v8

    .restart local v1       #i:I
    :goto_29
    if-lez v1, :cond_3c

    .line 1875
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1876
    .restart local v3       #index:I
    aget-object v6, v0, v1

    .line 1877
    .local v6, temp:Ljava/lang/Object;
    aget-object v7, v0, v3

    aput-object v7, v0, v1

    .line 1878
    aput-object v6, v0, v3

    .line 1874
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 1881
    .end local v3           #index:I
    .end local v6           #temp:Ljava/lang/Object;
    :cond_3c
    const/4 v1, 0x0

    .line 1882
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 1883
    .local v4, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :goto_41
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1884
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1885
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v7, v0, v1

    invoke-interface {v4, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_41

    .line 1888
    .end local v0           #array:[Ljava/lang/Object;
    .end local v4           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :cond_53
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1899
    .local p0, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1925
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1941
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1942
    const/4 v1, 0x0

    .line 1943
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1944
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :goto_c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1945
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1946
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object p0, v0, v1

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v3, p0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_c

    .line 1948
    :cond_20
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1964
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1965
    .local v0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1966
    const/4 v1, 0x0

    .line 1967
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1968
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1969
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1970
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_14

    .line 1972
    :cond_26
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .registers 6
    .parameter
    .parameter "index1"
    .parameter "index2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 1992
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez p0, :cond_8

    .line 1993
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1995
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1996
    .local v1, size:I
    if-ltz p1, :cond_14

    if-ge p1, v1, :cond_14

    if-ltz p2, :cond_14

    if-lt p2, v1, :cond_1a

    .line 1997
    :cond_14
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1999
    :cond_1a
    if-ne p1, p2, :cond_1d

    .line 2004
    :goto_1c
    return-void

    .line 2002
    :cond_1d
    move-object v0, p0

    .line 2003
    .local v0, rawList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2250
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_8

    .line 2251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2253
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2265
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez p0, :cond_8

    .line 2266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2268
    :cond_8
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_12

    .line 2269
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2271
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    goto :goto_11
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2283
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_8

    .line 2284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2286
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2298
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p0, :cond_8

    .line 2299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2301
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2314
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    if-nez p0, :cond_8

    .line 2315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2317
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2329
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_8

    .line 2330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2332
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2347
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-nez p0, :cond_8

    .line 2348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2350
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2364
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    if-nez p0, :cond_8

    .line 2365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2367
    :cond_8
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_12

    .line 2368
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2370
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_11
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2385
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    if-nez p0, :cond_8

    .line 2386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2388
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2402
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    if-nez p0, :cond_8

    .line 2403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2405
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2420
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p0, :cond_8

    .line 2421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2423
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2436
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_8

    .line 2437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2439
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
