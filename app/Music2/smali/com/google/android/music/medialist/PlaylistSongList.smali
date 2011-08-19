.class public Lcom/google/android/music/medialist/PlaylistSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "PlaylistSongList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/PlaylistSongList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PlaylistSongList"


# instance fields
.field mId:J

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/PlaylistSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/PlaylistSongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter "playlistId"
    .parameter "name"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 35
    iput-wide p1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    .line 36
    iput-object p3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendPlaylistToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    return v0
.end method

.method public containsRemoteItems(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 223
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v7

    .line 226
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, "PlaylistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playlist id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 236
    :goto_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v7

    .line 233
    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    return-wide v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    iget-object v7, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move v2, v1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/music/medialist/PlaylistSongList;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04000f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040036

    goto :goto_0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    return-wide v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const v0, 0x7f0c009d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMetaData()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 205
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->isPlaylistSelectedAsKeepOn(J)Z

    move-result v0

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z
    .locals 3
    .parameter "context"
    .parameter "offlineMusicManager"

    .prologue
    .line 211
    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    .local v0, result:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/PlaylistSongList;->isSelectedForOfflineCaching(Landroid/content/Context;)Z

    move-result v1

    .line 217
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .locals 2
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    .line 243
    if-eqz p3, :cond_0

    .line 244
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_0
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 166
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v7

    .line 169
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    .line 176
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 185
    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for PlaylistSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsOfflineCaching()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
