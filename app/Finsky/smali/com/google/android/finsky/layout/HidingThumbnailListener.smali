.class public Lcom/google/android/finsky/layout/HidingThumbnailListener;
.super Lcom/google/android/finsky/layout/ThumbnailListener;
.source "HidingThumbnailListener.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "imageView"
    .parameter "fadeIn"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public onImageFailed()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/layout/HidingThumbnailListener;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    return-void
.end method
