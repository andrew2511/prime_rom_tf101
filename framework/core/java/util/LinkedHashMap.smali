.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$1;,
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$ValueIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field transient header:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 86
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 87
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 102
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(IFZ)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "accessOrder"

    .prologue
    .line 124
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 125
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    .line 126
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 127
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
    .line 137
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/LinkedHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 138
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method private makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 281
    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 284
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 285
    .local v0, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 286
    .local v1, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 287
    iput-object v1, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 288
    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object p1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 289
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 290
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 13
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
    .line 190
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 193
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 194
    .local v7, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_11

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 195
    iget-object v1, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_11
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 200
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 202
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    aput-object v0, v1, p4

    .line 203
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .line 206
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 209
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 210
    .local v7, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    if-eq v7, v5, :cond_12

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 211
    iget-object v2, v7, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_12
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 216
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 218
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 219
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 331
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 334
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 335
    .local v1, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v0, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_7
    if-eq v0, v1, :cond_12

    .line 336
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 337
    .local v2, nxt:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 338
    move-object v0, v2

    .line 339
    goto :goto_7

    .line 341
    .end local v2           #nxt:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_12
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 342
    return-void
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .registers 12
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
    .line 226
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 227
    .local v5, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 228
    .local v6, oldTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 230
    .local v0, newTail:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    if-nez p1, :cond_15

    .line 311
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .local v1, header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 312
    .local v0, e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_8
    if-eq v0, v1, :cond_13

    .line 313
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    move v2, v4

    .line 327
    :goto_f
    return v2

    .line 312
    :cond_10
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_8

    :cond_13
    move v2, v3

    .line 317
    goto :goto_f

    .line 321
    .end local v0           #e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    .end local v1           #header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :cond_15
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .restart local v1       #header:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 322
    .restart local v0       #e:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    :goto_19
    if-eq v0, v1, :cond_28

    .line 323
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    .line 324
    goto :goto_f

    .line 322
    :cond_25
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_19

    :cond_28
    move v2, v3

    .line 327
    goto :goto_f
.end method

.method public eldest()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 173
    .local v0, eldest:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v0, v1, :cond_a

    move-object v1, v0

    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 246
    if-nez p1, :cond_17

    .line 247
    iget-object v1, p0, Ljava/util/LinkedHashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 248
    .local v1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_9

    move-object v5, v7

    .line 270
    :goto_8
    return-object v5

    .line 250
    :cond_9
    iget-boolean v5, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v5, :cond_14

    .line 251
    move-object v0, v1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v5, v0

    invoke-direct {p0, v5}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 252
    :cond_14
    iget-object v5, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_8

    .line 256
    .end local v1           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 257
    .local v3, hash:I
    ushr-int/lit8 v5, v3, 0x14

    ushr-int/lit8 v6, v3, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v3, v5

    .line 258
    ushr-int/lit8 v5, v3, 0x7

    ushr-int/lit8 v6, v3, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v3, v5

    .line 260
    iget-object v4, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 261
    .local v4, tab:[Ljava/util/HashMap$HashMapEntry;,"[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/2addr v5, v3

    aget-object v1, v4, v5

    .line 262
    .restart local v1       #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2f
    if-eqz v1, :cond_50

    .line 263
    iget-object v2, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 264
    .local v2, eKey:Ljava/lang/Object;,"TK;"
    if-eq v2, p1, :cond_3f

    iget v5, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v3, :cond_4d

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 265
    :cond_3f
    iget-boolean v5, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v5, :cond_4a

    .line 266
    move-object v0, v1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v5, v0

    invoke-direct {p0, v5}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 267
    :cond_4a
    iget-object v5, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_8

    .line 262
    :cond_4d
    iget-object v1, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2f

    .end local v2           #eKey:Ljava/lang/Object;,"TK;"
    :cond_50
    move-object v5, v7

    .line 270
    goto :goto_8
.end method

.method init()V
    .registers 2

    .prologue
    .line 142
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {v0}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 143
    return-void
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
    .line 395
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

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
    .line 389
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

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
    .line 392
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v1, v0

    .line 300
    .local v1, le:Ljava/util/LinkedHashMap$LinkedEntry;,"Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 301
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 302
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    .line 303
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_9

    .line 294
    check-cast p1, Ljava/util/LinkedHashMap$LinkedEntry;

    .end local p1           #e:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    .line 296
    :cond_9
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
