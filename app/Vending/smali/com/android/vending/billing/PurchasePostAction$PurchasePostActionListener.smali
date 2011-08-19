.class public interface abstract Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;
.super Ljava/lang/Object;
.source "PurchasePostAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/PurchasePostAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchasePostActionListener"
.end annotation


# virtual methods
.method public abstract onAssetLoaded()V
.end method

.method public abstract onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
.end method

.method public abstract onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
.end method

.method public abstract onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V
.end method

.method public abstract onPurchasePostError()V
.end method

.method public abstract onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
.end method
