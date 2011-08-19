.class Ljava/util/WeakHashMap$1;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    iput-object p1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 302
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 303
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .line 317
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_23

    .line 318
    iget-object v4, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    .line 320
    .local v1, entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<**>;"
    if-eqz v1, :cond_23

    .line 321
    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 322
    .local v2, key:Ljava/lang/Object;
    if-nez v2, :cond_1e

    iget-boolean v3, v1, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_23

    .line 323
    :cond_1e
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 327
    .end local v1           #entry:Ljava/util/WeakHashMap$Entry;,"Ljava/util/WeakHashMap$Entry<**>;"
    .end local v2           #key:Ljava/lang/Object;
    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
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
    .line 332
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    new-instance v0, Ljava/util/WeakHashMap$HashIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/WeakHashMap$1$1;

    invoke-direct {v2, p0}, Ljava/util/WeakHashMap$1$1;-><init>(Ljava/util/WeakHashMap$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 307
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 308
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    .line 312
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
    .line 297
    .local p0, this:Ljava/util/WeakHashMap$1;,"Ljava/util/WeakHashMap.1;"
    iget-object v0, p0, Ljava/util/WeakHashMap$1;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
