.class public interface abstract Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImagesLoadedListener"
.end annotation


# virtual methods
.method public abstract onImageLoadFailure(Lcom/android/vending/model/Asset;Ljava/lang/Throwable;)V
.end method

.method public abstract onImageLoadSuccess(Lcom/android/vending/model/Asset;)V
.end method
