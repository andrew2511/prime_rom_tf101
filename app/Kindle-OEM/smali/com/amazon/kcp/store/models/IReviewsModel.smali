.class public interface abstract Lcom/amazon/kcp/store/models/IReviewsModel;
.super Ljava/lang/Object;
.source "IReviewsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IAsyncModel;


# static fields
.field public static final REVIEWS_PAGE_SIZE:I = 0xa


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getPageNumber()I
.end method

.method public abstract getPageSize()I
.end method

.method public abstract getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getTotalItems()I
.end method

.method public abstract getTotalPages()I
.end method

.method public abstract getTotalReceived()I
.end method

.method public abstract listModified()V
.end method
