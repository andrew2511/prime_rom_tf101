.class Ljava/util/Collections$CheckedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntrySet;,
        Ljava/util/Collections$CheckedMap$CheckedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3320
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p3, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3321
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_f

    .line 3322
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3324
    :cond_f
    iput-object p1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    .line 3325
    iput-object p2, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 3326
    iput-object p3, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 3327
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3303
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3405
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3406
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 3347
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 3354
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 3426
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 3434
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 3361
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 3442
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3340
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3412
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3368
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-static {p2, v2}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3383
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    .line 3384
    .local v4, size:I
    if-nez v4, :cond_7

    .line 3399
    :cond_6
    return-void

    .line 3387
    :cond_7
    new-array v1, v4, [Ljava/util/Map$Entry;

    .line 3388
    .local v1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3390
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v4, :cond_31

    .line 3391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3392
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 3393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 3394
    aput-object v0, v1, v2

    .line 3390
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3396
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_31
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v4, :cond_6

    .line 3397
    iget-object v5, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    aget-object v6, v1, v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    add-int/lit8 v2, v2, 0x1

    goto :goto_32
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
    .line 3375
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3333
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3450
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 3419
    .local p0, this:Ljava/util/Collections$CheckedMap;,"Ljava/util/Collections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
