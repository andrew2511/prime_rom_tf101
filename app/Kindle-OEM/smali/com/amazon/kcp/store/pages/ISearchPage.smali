.class public interface abstract Lcom/amazon/kcp/store/pages/ISearchPage;
.super Ljava/lang/Object;
.source "ISearchPage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IAsyncPage;


# virtual methods
.method public abstract browseSubcategory()V
.end method

.method public abstract canLoadMore()Z
.end method

.method public abstract downloadCovers(Lcom/amazon/system/drawing/Dimension;)V
.end method

.method public abstract getModel()Lcom/amazon/kcp/store/models/internal/CSearchModel;
.end method

.method public abstract hasSubcategory()Z
.end method

.method public abstract loadMore()V
.end method

.method public abstract openDetailPage(Lcom/amazon/kcp/store/models/IBookInfo;Lcom/amazon/system/drawing/Image;)V
.end method

.method public abstract search(Ljava/lang/String;)V
.end method
