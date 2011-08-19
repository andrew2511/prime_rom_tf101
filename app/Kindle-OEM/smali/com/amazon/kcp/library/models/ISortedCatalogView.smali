.class public interface abstract Lcom/amazon/kcp/library/models/ISortedCatalogView;
.super Ljava/lang/Object;
.source "ISortedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView;


# virtual methods
.method public abstract sortedItems()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end method
