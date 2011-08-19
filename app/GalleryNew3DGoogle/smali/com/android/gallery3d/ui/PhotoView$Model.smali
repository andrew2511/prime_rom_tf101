.class public interface abstract Lcom/android/gallery3d/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getImageRotation()I
.end method

.method public abstract getNextImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
.end method

.method public abstract getPreviousImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
.end method

.method public abstract next()V
.end method

.method public abstract previous()V
.end method
