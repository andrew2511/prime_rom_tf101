.class public interface abstract Lcom/android/gallery3d/ui/AlbumSetView$Model;
.super Ljava/lang/Object;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getCoverItems(I)[Lcom/android/gallery3d/data/MediaItem;
.end method

.method public abstract getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
.end method

.method public abstract setActiveWindow(II)V
.end method

.method public abstract setModelListener(Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;)V
.end method

.method public abstract size()I
.end method
