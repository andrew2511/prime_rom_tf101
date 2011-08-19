.class public interface abstract Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;
.super Ljava/lang/Object;
.source "GroupedCatalogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/GroupedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICatalogItemGroupFunction"
.end annotation


# virtual methods
.method public abstract canonicalItemForItemGroup(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
.end method

.method public abstract isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
.end method

.method public abstract onGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
.end method

.method public abstract onGroupedItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
.end method
