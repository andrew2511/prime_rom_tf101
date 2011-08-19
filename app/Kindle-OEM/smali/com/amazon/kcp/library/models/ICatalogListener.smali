.class public interface abstract Lcom/amazon/kcp/library/models/ICatalogListener;
.super Ljava/lang/Object;
.source "ICatalogListener.java"


# virtual methods
.method public abstract onBulkUpdateBegin()V
.end method

.method public abstract onBulkUpdateEnd()V
.end method

.method public abstract onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
.end method

.method public abstract onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
.end method

.method public abstract onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
.end method
