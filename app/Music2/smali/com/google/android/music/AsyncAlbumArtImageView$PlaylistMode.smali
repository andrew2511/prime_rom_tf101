.class Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
.super Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistMode"
.end annotation


# instance fields
.field public id:J

.field public mainLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$Mode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;-><init>()V

    return-void
.end method
