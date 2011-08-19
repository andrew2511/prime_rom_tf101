.class public Ljava/util/concurrent/ConcurrentSkipListSet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final mapOffset:J = 0x0L

.field private static final serialVersionUID:J = -0x2267af8642300ea5L

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 444
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentSkipListSet;->unsafe:Lsun/misc/Unsafe;

    .line 448
    :try_start_6
    sget-object v1, Ljava/util/concurrent/ConcurrentSkipListSet;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListSet;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ConcurrentSkipListSet;->mapOffset:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 451
    return-void

    .line 450
    :catch_17
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, s:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 113
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->addAll(Ljava/util/Collection;)Z

    .line 114
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, m:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 120
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 121
    return-void
.end method

.method private setMap(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, map:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListSet;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ConcurrentSkipListSet;->mapOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 454
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 226
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 227
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
    .line 54
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clone()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, clone:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v1, v0

    .line 133
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/SortedMap;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->setMap(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_13} :catch_14

    .line 138
    return-object v1

    .line 134
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 135
    .local v2, e:Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 183
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    if-ne p1, p0, :cond_6

    move v3, v5

    .line 274
    :goto_5
    return v3

    .line 266
    :cond_6
    instance-of v3, p1, Ljava/util/Set;

    if-nez v3, :cond_c

    move v3, v4

    .line 267
    goto :goto_5

    .line 268
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 270
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_10
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_19} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_19} :catch_24

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v5

    goto :goto_5

    :cond_1e
    move v3, v4

    goto :goto_5

    .line 271
    :catch_20
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/ClassCastException;
    move v3, v4

    .line 272
    goto :goto_5

    .line 273
    .end local v2           #unused:Ljava/lang/ClassCastException;
    :catch_24
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/NullPointerException;
    move v3, v4

    .line 274
    goto :goto_5
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 168
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 336
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 341
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 219
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 294
    .local v1, modified:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    const/4 v1, 0x1

    goto :goto_5

    .line 297
    :cond_17
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 160
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p3, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListSet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListSet;,"Ljava/util/concurrent/ConcurrentSkipListSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
