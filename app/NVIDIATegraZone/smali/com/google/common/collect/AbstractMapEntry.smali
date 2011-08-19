.class abstract Lcom/google/common/collect/AbstractMapEntry;
.super Ljava/lang/Object;
.source "AbstractMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, this:Lcom/google/common/collect/AbstractMapEntry;,"Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapEntry;,"Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 36
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 38
    .local v1, that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 41
    .end local v1           #that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :goto_0
    return v2

    .restart local v1       #that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_0
    move v2, v4

    .line 38
    goto :goto_0

    .end local v1           #that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_1
    move v2, v4

    .line 41
    goto :goto_0
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapEntry;,"Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, k:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    xor-int/2addr v2, v3

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/AbstractMapEntry;,"Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/AbstractMapEntry;,"Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
