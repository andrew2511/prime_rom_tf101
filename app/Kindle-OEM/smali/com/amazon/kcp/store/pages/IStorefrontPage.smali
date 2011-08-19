.class public interface abstract Lcom/amazon/kcp/store/pages/IStorefrontPage;
.super Ljava/lang/Object;
.source "IStorefrontPage.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBasePage;


# virtual methods
.method public abstract bestSellers()V
.end method

.method public abstract browsePage()V
.end method

.method public abstract editorsPicks()V
.end method

.method public abstract getStoreInfo()Lcom/amazon/kcp/store/models/IStoreInfoModel;
.end method

.method public abstract getUpdateModelEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract newNoteworthies()V
.end method

.method public abstract recommendedForYou()V
.end method

.method public abstract search(Ljava/lang/String;)V
.end method

.method public abstract topSellers()V
.end method
