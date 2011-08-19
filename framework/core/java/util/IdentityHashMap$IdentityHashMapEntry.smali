.class Ljava/util/IdentityHashMap$IdentityHashMapEntry;
.super Ljava/util/MapEntry;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    .local p1, map:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p2, theKey:Ljava/lang/Object;,"TK;"
    .local p3, theValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p2, p3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 95
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 107
    :goto_5
    return v2

    .line 103
    :cond_6
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_22

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 105
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_5

    :cond_20
    move v2, v4

    goto :goto_5

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_22
    move v2, v4

    .line 107
    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 112
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    .local p1, object:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1}, Ljava/util/MapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, result:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
