.class Ljava/util/EnumMap$EnumMapEntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    .local p1, em:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 316
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    .line 317
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 321
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 322
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .line 326
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    const/4 v3, 0x0

    .line 327
    .local v3, isEqual:Z
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_27

    .line 328
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, enumKey:Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 330
    .local v2, enumValue:Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v5, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 331
    iget-object v5, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v5, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 332
    .local v4, value:Ljava/lang/Object;,"TVT;"
    if-nez v4, :cond_2b

    .line 333
    if-nez v2, :cond_28

    const/4 v5, 0x1

    move v3, v5

    .line 339
    .end local v1           #enumKey:Ljava/lang/Object;
    .end local v2           #enumValue:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;,"TVT;"
    :cond_27
    :goto_27
    return v3

    .line 333
    .restart local v1       #enumKey:Ljava/lang/Object;
    .restart local v2       #enumValue:Ljava/lang/Object;
    .restart local v4       #value:Ljava/lang/Object;,"TVT;"
    :cond_28
    const/4 v5, 0x0

    move v3, v5

    goto :goto_27

    .line 335
    :cond_2b
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_27
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapEntryIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapEntrySet$1;-><init>(Ljava/util/EnumMap$EnumMapEntrySet;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapEntryIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 354
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 355
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_12
    return v0

    .restart local p1
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public size()I
    .registers 2

    .prologue
    .line 363
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 368
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 369
    .local v0, entryArray:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap$EnumMapEntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .parameter "array"

    .prologue
    .line 375
    .local p0, this:Ljava/util/EnumMap$EnumMapEntrySet;,"Ljava/util/EnumMap$EnumMapEntrySet<TKT;TVT;>;"
    iget-object v7, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v7}, Ljava/util/EnumMap;->size()I

    move-result v6

    .line 376
    .local v6, size:I
    const/4 v4, 0x0

    .line 377
    .local v4, index:I
    move-object v3, p1

    .line 378
    .local v3, entryArray:[Ljava/lang/Object;
    array-length v7, p1

    if-le v6, v7, :cond_1d

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 380
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 382
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 383
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TKT;TVT;>;>;"
    :goto_21
    if-ge v4, v6, :cond_3b

    .line 384
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 385
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKT;TVT;>;"
    new-instance v7, Ljava/util/MapEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v4

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 388
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TKT;TVT;>;"
    :cond_3b
    array-length v7, p1

    if-ge v4, v7, :cond_41

    .line 389
    const/4 v7, 0x0

    aput-object v7, v3, v4

    .line 391
    :cond_41
    return-object v3
.end method
