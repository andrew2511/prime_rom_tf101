.class public interface abstract Lcom/amazon/kcp/store/IWebStoreController;
.super Ljava/lang/Object;
.source "IWebStoreController.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISubAppController;


# virtual methods
.method public abstract clearStoreCredentials()V
.end method

.method public abstract populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
.end method

.method public abstract showBuyPage(Ljava/lang/String;)V
.end method

.method public abstract showDetailPage(Ljava/lang/String;)V
.end method

.method public abstract showStorefront()V
.end method

.method public abstract updateStoreCookies()V
.end method
