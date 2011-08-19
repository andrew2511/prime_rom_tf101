.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildCursorWrapper"
.end annotation


# instance fields
.field mArtistId:J

.field mArtistIsKeptOn:Z

.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;JZ)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "artistId"
    .parameter "artistIsKeptOn"

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 1167
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1168
    iput-wide p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistId:J

    .line 1169
    iput-boolean p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistIsKeptOn:Z

    .line 1170
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1176
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1183
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1184
    return-void
.end method
