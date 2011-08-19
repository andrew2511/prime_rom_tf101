.class public interface abstract Lcom/amazon/kcp/store/pages/IBrowsePage;
.super Ljava/lang/Object;
.source "IBrowsePage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IAsyncPage;


# virtual methods
.method public abstract getModel()Lcom/amazon/kcp/store/models/IBrowseModel;
.end method

.method public abstract openBrowseNode(Lcom/amazon/kcp/store/models/IBrowseNode;)V
.end method

.method public abstract search(Ljava/lang/String;)V
.end method
