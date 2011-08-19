.class public Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;
.super Ljava/lang/Object;
.source "CatalogChangeEventProvider.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;


# instance fields
.field protected final listeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public notifyBulkUpdateBegin()V
    .locals 3

    .prologue
    .line 49
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 51
    .local v1, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogListener;->onBulkUpdateBegin()V

    goto :goto_0

    .line 53
    .end local v1           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method

.method public notifyBulkUpdateEnd()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 59
    .local v1, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogListener;->onBulkUpdateEnd()V

    goto :goto_0

    .line 61
    .end local v1           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method

.method public notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 27
    .local v1, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/ICatalogListener;->onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 29
    .end local v1           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method

.method public notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 3
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 33
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 35
    .local v1, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/library/models/ICatalogListener;->onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 37
    .end local v1           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method

.method public notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 43
    .local v1, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/ICatalogListener;->onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 45
    .end local v1           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method

.method public register(Lcom/amazon/kcp/library/models/ICatalogListener;)V
    .locals 2
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public unregister(Lcom/amazon/kcp/library/models/ICatalogListener;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_0
.end method
