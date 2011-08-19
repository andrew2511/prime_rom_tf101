.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSetMultimap$Builder;,
        Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TK;Lcom/google/common/collect/ImmutableSet<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 287
    return-void
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v9

    .line 282
    :goto_0
    return-object v9

    .line 261
    :cond_0
    instance-of v9, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v9, :cond_1

    .line 263
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableSetMultimap;

    move-object v5, v0

    .local v5, kvMultimap:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    move-object v9, v5

    .line 265
    goto :goto_0

    .line 268
    .end local v5           #kvMultimap:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 269
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TK;Lcom/google/common/collect/ImmutableSet<TV;>;>;"
    const/4 v7, 0x0

    .line 272
    .local v7, size:I
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 274
    .local v4, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 275
    .local v8, values:Ljava/util/Collection;,"Ljava/util/Collection<+TV;>;"
    invoke-static {v8}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    .line 276
    .local v6, set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 277
    invoke-virtual {v1, v4, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 278
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1

    .line 282
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    .end local v4           #key:Ljava/lang/Object;,"TK;"
    .end local v6           #set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    .end local v8           #values:Ljava/util/Collection;,"Ljava/util/Collection<+TV;>;"
    :cond_3
    new-instance v9, Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 71
    .local v0, builder:Lcom/google/common/collect/ImmutableSetMultimap$Builder;,"Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 72
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 82
    .local v0, builder:Lcom/google/common/collect/ImmutableSetMultimap$Builder;,"Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 83
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 84
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 95
    .local v0, builder:Lcom/google/common/collect/ImmutableSetMultimap$Builder;,"Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 96
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 97
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 98
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 109
    .local v0, builder:Lcom/google/common/collect/ImmutableSetMultimap$Builder;,"Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 110
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 111
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 112
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    .local p8, k5:Ljava/lang/Object;,"TK;"
    .local p9, v5:Ljava/lang/Object;,"TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 124
    .local v0, builder:Lcom/google/common/collect/ImmutableSetMultimap$Builder;,"Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 125
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 126
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 127
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 128
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 129
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 14
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 350
    .local v6, keyCount:I
    if-gez v6, :cond_0

    .line 351
    new-instance v11, Ljava/io/InvalidObjectException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid key count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 353
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 355
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .line 357
    .local v8, tmpSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 359
    .local v5, key:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 360
    .local v9, valueCount:I
    if-gtz v9, :cond_1

    .line 361
    new-instance v11, Ljava/io/InvalidObjectException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid value count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 364
    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    .line 365
    .local v0, array:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 366
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v10

    .line 369
    .local v10, valueSet:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v11

    array-length v12, v0

    if-eq v11, v12, :cond_3

    .line 370
    new-instance v11, Ljava/io/InvalidObjectException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate key-value pairs exist for key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 373
    :cond_3
    invoke-virtual {v1, v5, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 374
    add-int/2addr v8, v9

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v0           #array:[Ljava/lang/Object;
    .end local v4           #j:I
    .end local v5           #key:Ljava/lang/Object;
    .end local v9           #valueCount:I
    .end local v10           #valueSet:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 385
    .local v7, tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    sget-object v11, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v11, p0, v7}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    sget-object v11, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v11, p0, v8}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 387
    return-void

    .line 380
    .end local v7           #tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v2

    .line 381
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/io/InvalidObjectException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    check-cast p0, Ljava/io/InvalidObjectException;

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 343
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 344
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    .line 332
    .local v0, result:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 300
    .local v0, set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TV;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
