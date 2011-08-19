.class public interface abstract Lcom/google/android/music/albumwall/AlbumWallCallback;
.super Ljava/lang/Object;
.source "AlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_COUNT:I = 0x5

.field public static final PILE_TYPE_COUNT:I = 0x3

.field public static final TYPE_BACKGROUND:I = 0x4

.field public static final TYPE_ICON:I = 0x3

.field public static final TYPE_LABEL:I = 0x0

.field public static final TYPE_MARK:I = 0x2

.field public static final TYPE_SCROLL_OVERLAY:I = 0x1


# virtual methods
.method public abstract onItemLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end method

.method public abstract onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end method

.method public abstract onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end method

.method public abstract onPileLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
.end method

.method public abstract onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
.end method

.method public abstract onRecycleItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onRecyclePileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
.end method

.method public abstract onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
.end method

.method public abstract onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V
.end method

.method public abstract onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
.end method

.method public abstract onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V
.end method

.method public abstract onRequestPileCount(Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
.end method

.method public abstract onRequestPileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
.end method
