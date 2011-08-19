.class public Lcom/amazon/kcp/library/models/CatalogListener;
.super Ljava/lang/Object;
.source "CatalogListener.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBulkUpdateBegin()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 19
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 24
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 29
    return-void
.end method
