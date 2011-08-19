.class public Lgov/nist/core/MultiValueMapImpl;
.super Ljava/lang/Object;
.source "MultiValueMapImpl.java"

# interfaces
.implements Lgov/nist/core/MultiValueMap;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgov/nist/core/MultiValueMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b55a57dcb730ffdL


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    .line 72
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v5, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 73
    .local v3, pairs:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 74
    .local v4, pairsIterator:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v0, v5

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 76
    .local v1, keyValuePair:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 77
    .local v2, list:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_a

    .line 79
    .end local v1           #keyValuePair:Ljava/util/Map$Entry;
    .end local v2           #list:Ljava/util/ArrayList;
    :cond_28
    iget-object v5, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 80
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 100
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    .line 101
    .local v0, obj:Lgov/nist/core/MultiValueMapImpl;
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p0, Ljava/util/HashMap;

    iput-object p0, v0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 102
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 110
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 9
    .parameter "value"

    .prologue
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    const/4 v6, 0x0

    .line 56
    iget-object v5, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 58
    .local v3, pairs:Ljava/util/Set;
    if-nez v3, :cond_b

    move v5, v6

    .line 68
    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    :goto_a
    return v5

    .line 61
    .restart local p0       #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    :cond_b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 62
    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local v4, pairsIterator:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 64
    .local v1, keyValuePair:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 65
    .local v2, list:Ljava/util/ArrayList;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 66
    const/4 v5, 0x1

    goto :goto_a

    .end local v1           #keyValuePair:Ljava/util/Map$Entry;
    .end local v2           #list:Ljava/util/ArrayList;
    :cond_31
    move v5, v6

    .line 68
    goto :goto_a
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 114
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 118
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .local v0, keyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_16

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #keyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .restart local v0       #keyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, value:Ljava/util/List;,"Ljava/util/List<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2           #value:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p1, mapToPut:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, k:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v3, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 152
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    .end local v2           #k:Ljava/lang/String;
    :cond_28
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, item:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 127
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_c

    .line 128
    const/4 v1, 0x0

    .line 130
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_b
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 106
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 10

    .prologue
    .line 83
    .local p0, this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v6, returnList:Ljava/util/ArrayList;
    iget-object v8, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 86
    .local v4, pairs:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 87
    .end local p0           #this:Lgov/nist/core/MultiValueMapImpl;,"Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local v5, pairsIterator:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 89
    .local v2, keyValuePair:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 91
    .local v3, list:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 92
    .local v7, values:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_34
    array-length v8, v7

    if-ge v1, v8, :cond_15

    .line 93
    aget-object v8, v7, v1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 96
    .end local v1           #ii:I
    .end local v2           #keyValuePair:Ljava/util/Map$Entry;
    .end local v3           #list:Ljava/util/ArrayList;
    .end local v7           #values:[Ljava/lang/Object;
    :cond_3f
    return-object v6
.end method
