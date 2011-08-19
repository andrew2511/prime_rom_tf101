.class Ljava/util/Collections$SetFromMap;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFromMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2210b25045f21fc4L


# instance fields
.field private transient backingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2721
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2722
    iput-object p1, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    .line 2723
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    .line 2724
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2799
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2800
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    .line 2801
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
    .line 2738
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2743
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2744
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 2753
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2758
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 2728
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2733
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2763
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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
    .line 2788
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 2768
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2773
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2793
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2778
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2783
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2748
    .local p0, this:Ljava/util/Collections$SetFromMap;,"Ljava/util/Collections$SetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->backingSet:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
