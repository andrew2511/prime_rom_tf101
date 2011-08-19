.class public interface abstract Lcom/amazon/kcp/store/models/IDetailsModel;
.super Ljava/lang/Object;
.source "IDetailsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IAsyncModel;


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getBookDetail()Lcom/amazon/kcp/store/models/IBookDetails;
.end method

.method public abstract getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract listModified()V
.end method
