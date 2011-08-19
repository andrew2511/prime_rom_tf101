.class public interface abstract Lcom/amazon/kcp/store/models/IBrowseModel;
.super Ljava/lang/Object;
.source "IBrowseModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IAsyncModel;


# virtual methods
.method public abstract getAncestorCount()I
.end method

.method public abstract getAncestorList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getNodeId()J
.end method

.method public abstract getParentNodeName()Ljava/lang/String;
.end method

.method public abstract getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getRootBrowseNode()Lcom/amazon/kcp/store/models/internal/BrowseNode;
.end method

.method public abstract getTotalBooksCount()I
.end method

.method public abstract hasResults()Z
.end method

.method public abstract isRootBrowseNode()Z
.end method

.method public abstract setParentNodeName(Ljava/lang/String;)V
.end method
