.class Ljava/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .registers 2
    .parameter

    .prologue
    .line 916
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 947
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 948
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 930
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/TreeMap$EntrySet$1;

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$EntrySet$1;-><init>(Ljava/util/TreeMap$EntrySet;Ljava/util/TreeMap$Node;)V

    return-object v0

    :cond_d
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v1

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 934
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_7

    move v1, v2

    .line 943
    .end local p1
    :goto_6
    return v1

    .line 938
    .restart local p1
    :cond_7
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 939
    .local v0, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    if-nez v0, :cond_13

    move v1, v2

    .line 940
    goto :goto_6

    .line 942
    :cond_13
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 943
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 918
    .local p0, this:Ljava/util/TreeMap$EntrySet;,"Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->size:I

    return v0
.end method
