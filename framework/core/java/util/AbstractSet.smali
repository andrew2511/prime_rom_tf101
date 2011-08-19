.class public abstract Ljava/util/AbstractSet;
.super Ljava/util/AbstractCollection;
.source "AbstractSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 34
    .local p0, this:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 64
    :goto_5
    return v3

    .line 53
    :cond_6
    instance-of v3, p1, Ljava/util/Set;

    if-eqz v3, :cond_2a

    .line 54
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v2, v0

    .line 57
    .local v2, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :try_start_e
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_20

    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1b} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_1b} :catch_26

    move-result v3

    if-eqz v3, :cond_20

    move v3, v6

    goto :goto_5

    :cond_20
    move v3, v5

    goto :goto_5

    .line 58
    :catch_22
    move-exception v3

    move-object v1, v3

    .local v1, ignored:Ljava/lang/NullPointerException;
    move v3, v5

    .line 59
    goto :goto_5

    .line 60
    .end local v1           #ignored:Ljava/lang/NullPointerException;
    :catch_26
    move-exception v3

    move-object v1, v3

    .local v1, ignored:Ljava/lang/ClassCastException;
    move v3, v5

    .line 61
    goto :goto_5

    .end local v1           #ignored:Ljava/lang/ClassCastException;
    .end local v2           #s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_2a
    move v3, v5

    .line 64
    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 77
    .local p0, this:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, result:I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, next:Ljava/lang/Object;
    if-nez v1, :cond_14

    const/4 v3, 0x0

    :goto_12
    add-int/2addr v2, v3

    .line 82
    goto :goto_5

    .line 81
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_12

    .line 83
    .end local v1           #next:Ljava/lang/Object;
    :cond_19
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 100
    .local v1, result:Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-gt v2, v3, :cond_24

    .line 101
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 105
    const/4 v1, 0x1

    goto :goto_f

    .line 109
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    if-eqz v1, :cond_3d

    :cond_3a
    const/4 v2, 0x1

    move v1, v2

    :goto_3c
    goto :goto_28

    :cond_3d
    const/4 v2, 0x0

    move v1, v2

    goto :goto_3c

    .line 114
    :cond_40
    return v1
.end method
