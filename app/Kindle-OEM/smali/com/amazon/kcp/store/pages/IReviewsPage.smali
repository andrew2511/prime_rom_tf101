.class public interface abstract Lcom/amazon/kcp/store/pages/IReviewsPage;
.super Ljava/lang/Object;
.source "IReviewsPage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IAsyncPage;


# virtual methods
.method public abstract canLoadMore()Z
.end method

.method public abstract getBookDetail()Lcom/amazon/kcp/store/models/IBookDetails;
.end method

.method public abstract getModel()Lcom/amazon/kcp/store/models/IReviewsModel;
.end method

.method public abstract loadMore()V
.end method

.method public abstract openDetailedReview(Lcom/amazon/kcp/store/models/IReviewInfo;)V
.end method
