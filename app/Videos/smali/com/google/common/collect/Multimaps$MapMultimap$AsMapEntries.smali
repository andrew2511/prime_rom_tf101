.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$MapMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1125
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v6

    .line 1133
    :goto_0
    return v3

    .line 1128
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1129
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-nez v3, :cond_1

    move v3, v6

    .line 1130
    goto :goto_0

    .line 1132
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1133
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/Multimaps$MapMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1138
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v6

    .line 1146
    :goto_0
    return v3

    .line 1141
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1142
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-nez v3, :cond_1

    move v3, v6

    .line 1143
    goto :goto_0

    .line 1145
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1146
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1097
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
