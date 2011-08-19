.class public interface abstract Lcom/amazon/kcp/store/pages/IDetailsPage;
.super Ljava/lang/Object;
.source "IDetailsPage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IAsyncPage;


# virtual methods
.method public abstract buy()V
.end method

.method public abstract downloadCovers(Lcom/amazon/system/drawing/Dimension;)V
.end method

.method public abstract getBuyFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getModel()Lcom/amazon/kcp/store/models/IDetailsModel;
.end method

.method public abstract getStoreInfo()Lcom/amazon/kcp/store/models/IStoreInfoModel;
.end method

.method public abstract openCustomerReview(Lcom/amazon/kcp/store/models/IReviewInfo;)V
.end method

.method public abstract openDetailPage(Lcom/amazon/kcp/store/models/IBookInfo;)V
.end method

.method public abstract search(Ljava/lang/String;)V
.end method

.method public abstract showCustomerReviews()V
.end method

.method public abstract showDescription()V
.end method

.method public abstract showSecondaryTop()V
.end method

.method public abstract showSims()V
.end method

.method public abstract trySample()V
.end method
