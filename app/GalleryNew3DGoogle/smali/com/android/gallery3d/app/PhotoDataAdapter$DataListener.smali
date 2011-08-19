.class public interface abstract Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onDataAvailable()V
.end method

.method public abstract onDataEmpty()V
.end method

.method public abstract onPhotoChanged(ILcom/android/gallery3d/data/Path;)V
.end method
