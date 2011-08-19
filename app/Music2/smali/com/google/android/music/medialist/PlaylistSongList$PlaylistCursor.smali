.class Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
.super Lcom/google/android/music/medialist/MediaList$MediaCursor;
.source "PlaylistSongList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/PlaylistSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistCursor"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mId:J

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;J)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    .line 102
    iput-wide p3, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    .line 103
    iput-object p2, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    .line 105
    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 8
    .parameter "from"
    .parameter "to"

    .prologue
    .line 110
    if-eq p1, p2, :cond_2

    .line 111
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 113
    .local v7, colidx:I
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 116
    .local v3, itemToMoveId:J
    const-wide/16 v5, 0x0

    .line 117
    .local v5, desiredPreviousItemId:J
    if-lez p2, :cond_1

    .line 118
    if-le p1, p2, :cond_0

    .line 119
    add-int/lit8 p2, p2, -0x1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 122
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/MusicContent$Playlists;->movePlaylistItem(Landroid/content/ContentResolver;JJJ)V

    .line 127
    .end local v3           #itemToMoveId:J
    .end local v5           #desiredPreviousItemId:J
    .end local v7           #colidx:I
    :cond_2
    return-void
.end method

.method public removeItem(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, colidx:I
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 133
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 134
    .local v1, itemId:J
    iget-wide v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 135
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    return-void
.end method
