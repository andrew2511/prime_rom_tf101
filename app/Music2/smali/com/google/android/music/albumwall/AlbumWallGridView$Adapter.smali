.class public interface abstract Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
.super Ljava/lang/Object;
.source "AlbumWallGridView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GridView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adapter"
.end annotation


# virtual methods
.method public abstract getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
.end method

.method public abstract getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
.end method

.method public abstract getPileIndexAt(I)I
.end method

.method public abstract isPileList()Z
.end method
