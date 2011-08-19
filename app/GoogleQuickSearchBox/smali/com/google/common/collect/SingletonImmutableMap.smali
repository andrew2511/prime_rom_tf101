.class final Lcom/google/common/collect/SingletonImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SingletonImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SingletonImmutableMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient values:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private entry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 54
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
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
    .line 81
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 82
    .local v0, es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/SingletonImmutableMap;->entry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    if-ne p1, p0, :cond_0

    move v3, v6

    .line 137
    :goto_0
    return v3

    .line 128
    :cond_0
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 130
    .local v2, that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v3, v6, :cond_1

    move v3, v5

    .line 131
    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_3
    move v3, v5

    .line 137
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 141
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    .line 89
    .local v0, ks:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 96
    .local v0, v:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/SingletonImmutableMap$Values;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/google/common/collect/SingletonImmutableMap$Values;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/SingletonImmutableMap;,"Lcom/google/common/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
