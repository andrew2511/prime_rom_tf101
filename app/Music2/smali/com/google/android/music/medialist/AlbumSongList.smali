.class public Lcom/google/android/music/medialist/AlbumSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "AlbumSongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/AlbumSongList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlbumSongList"


# instance fields
.field mAlbumId:J

.field mAlbumName:Ljava/lang/String;

.field mArtistName:Ljava/lang/String;

.field mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AlbumSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/AlbumSongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid album id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-wide p1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    .line 50
    return-void
.end method

.method private getNames(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 75
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v7

    const-string v0, "artist"

    aput-object v0, v2, v8

    .line 79
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 87
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const v0, 0x7f0c0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 98
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I

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

    .line 139
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v7

    .line 142
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown album id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 152
    :goto_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v7

    .line 149
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 129
    :goto_0
    return-wide v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    :try_start_0
    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 116
    .local v1, albumid:J
    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    .end local v1           #albumid:J
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 250
    const v0, 0x7f040031

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

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
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMetaData()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->isAlbumSelectedAsKeepOn(JZ)Z

    move-result v0

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z
    .locals 8
    .parameter "context"
    .parameter "offlineMusicManager"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, result:Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "artist_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 177
    :goto_0
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 179
    if-nez v7, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->isSelectedForOfflineCaching(Landroid/content/Context;)Z

    move-result v0

    .line 184
    :goto_1
    return v0

    .line 174
    :cond_0
    :try_start_1
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the artistid for album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 184
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .locals 7
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 190
    if-eqz p3, :cond_0

    .line 191
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(J)V

    .line 206
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "artist_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 200
    :cond_1
    :try_start_1
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the artistid for album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 237
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 244
    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for AlbumSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsOfflineCaching()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    return-void
.end method
