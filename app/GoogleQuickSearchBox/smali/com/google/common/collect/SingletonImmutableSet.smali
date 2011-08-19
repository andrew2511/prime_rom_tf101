.class final Lcom/google/common/collect/SingletonImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:Ljava/lang/Integer;

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter "hashCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:Ljava/lang/Integer;

    .line 50
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 61
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 86
    if-ne p1, p0, :cond_0

    move v2, v4

    .line 93
    :goto_0
    return v2

    .line 89
    :cond_0
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    .line 91
    .local v1, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_0

    .end local v1           #that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_2
    move v2, v5

    .line 93
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:Ljava/lang/Integer;

    .line 98
    .local v0, code:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x1

    .line 74
    array-length v1, p1

    if-nez v1, :cond_1

    .line 75
    invoke-static {p1, v2}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 80
    :cond_0
    :goto_0
    move-object v0, p1

    .line 81
    .local v0, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 82
    return-object p1

    .line 76
    .end local v0           #objectArray:[Ljava/lang/Object;
    :cond_1
    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 77
    const/4 v1, 0x0

    aput-object v1, p1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/collect/SingletonImmutableSet;,"Lcom/google/common/collect/SingletonImmutableSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, elementToString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
