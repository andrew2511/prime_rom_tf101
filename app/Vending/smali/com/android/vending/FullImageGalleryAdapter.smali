.class public interface abstract Lcom/android/vending/FullImageGalleryAdapter;
.super Ljava/lang/Object;
.source "FullImageGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/FullImageGalleryAdapter$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/vending/FullImageGalleryAdapter$Listener;)V
.end method

.method public abstract clearImageLoadErrors(I)V
.end method

.method public abstract getImageAt(I)Landroid/graphics/drawable/BitmapDrawable;
.end method

.method public abstract getNumImages()I
.end method
