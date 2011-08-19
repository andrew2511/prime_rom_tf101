.class Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
.super Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAlbumSetItem"
.end annotation


# instance fields
.field public cacheFlag:I

.field public cacheStatus:I

.field public setPath:Lcom/android/gallery3d/data/Path;

.field public sourceType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;-><init>()V

    return-void
.end method
