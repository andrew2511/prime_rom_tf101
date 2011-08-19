.class public interface abstract Lcom/amazon/kcp/store/models/IBookDetails;
.super Ljava/lang/Object;
.source "IBookDetails.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IImageSetter;
.implements Lcom/amazon/kcp/store/models/IBookInfo;


# virtual methods
.method public abstract getChangedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getCover()Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getCoverImageBase64Encoded()Ljava/lang/String;
.end method

.method public abstract getCoverState()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEditorialReviewCount()Ljava/lang/String;
.end method

.method public abstract getHistogramCounts()[I
.end method

.method public abstract getLicenseCount()Ljava/lang/Integer;
.end method

.method public abstract getListPrice()Ljava/lang/String;
.end method

.method public abstract getListPriceValue()F
.end method

.method public abstract getMerchantName()Ljava/lang/String;
.end method

.method public abstract getNumPages()Ljava/lang/String;
.end method

.method public abstract getPriceValue()F
.end method

.method public abstract getPrintListPrice()Ljava/lang/String;
.end method

.method public abstract getPrintListPriceValue()F
.end method

.method public abstract getProcessedCoverImage(Lcom/amazon/system/drawing/Image;Lcom/amazon/system/drawing/Image;)Lcom/amazon/system/drawing/Image;
.end method

.method public abstract getPublicationDate()Ljava/lang/String;
.end method

.method public abstract getPublisher()Ljava/lang/String;
.end method

.method public abstract getReleaseDate()Ljava/lang/String;
.end method

.method public abstract getSalesRank()Ljava/lang/String;
.end method

.method public abstract getSampleCustomerReview(I)Lcom/amazon/kcp/store/models/internal/ReviewInfo;
.end method

.method public abstract getSampleCustomerReviewCount()I
.end method

.method public abstract getSavings()Ljava/lang/String;
.end method

.method public abstract getSim(I)Lcom/amazon/kcp/store/models/IBookInfo;
.end method

.method public abstract getSimCount()I
.end method

.method public abstract getTotalCustomerReviewCount()I
.end method

.method public abstract hasCover()Z
.end method

.method public abstract hasSample()Z
.end method

.method public abstract isAgencyOffer()Z
.end method

.method public abstract isOptimizedForDX()Z
.end method

.method public abstract isTTSEnabled()Z
.end method
