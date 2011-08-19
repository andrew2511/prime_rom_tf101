.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildCursorWrapper"
.end annotation


# instance fields
.field mGenreId:J

.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;Landroid/database/Cursor;J)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "genreId"

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 1035
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1036
    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->mGenreId:J

    .line 1037
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1050
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1051
    return-void
.end method
