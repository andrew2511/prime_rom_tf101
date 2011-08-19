.class public interface abstract Lcom/amazon/kcp/library/models/ICatalogView;
.super Ljava/lang/Object;
.source "ICatalogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/ICatalogView$Filter;
    }
.end annotation


# virtual methods
.method public abstract items()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parentView()Lcom/amazon/kcp/library/models/ICatalogView;
.end method

.method public abstract registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V
.end method

.method public abstract unregisterListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V
.end method
