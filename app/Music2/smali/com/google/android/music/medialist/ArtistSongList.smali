.class public Lcom/google/android/music/medialist/ArtistSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "ArtistSongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/ArtistSongList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ArtistSongList"


# instance fields
.field mId:J

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/ArtistSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/ArtistSongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 3
    .parameter "artistid"
    .parameter "name"
    .parameter "sortOrder"

    .prologue
    .line 37
    invoke-direct {p0, p4}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid artist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-wide p1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    .line 42
    iput-object p3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendArtistToPlayList(Landroid/content/ContentResolver;JJ)I

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

    .line 165
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v7

    .line 168
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "ArtistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown artist id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 178
    :goto_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v7

    .line 175
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAlbumCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 208
    iget-wide v4, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v4, v5}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, albumsOfArtistUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v7

    .line 211
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, sortParam:Ljava/lang/String;
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistUri(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    iget-object v7, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f040033

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 70
    .local v0, musicPrefs:Lcom/google/android/music/jumper/MusicPreferences;
    iget-object v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    return-object v1
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .locals 2
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
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method

.method public hasMetaData()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 148
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->isArtistSelectedAsKeepOn(J)Z

    move-result v0

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z
    .locals 3
    .parameter "context"
    .parameter "offlineMusicManager"

    .prologue
    .line 154
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    .local v0, result:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/ArtistSongList;->isSelectedForOfflineCaching(Landroid/content/Context;)Z

    move-result v1

    .line 160
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
    .line 185
    if-eqz p3, :cond_0

    .line 186
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_0
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 118
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v7

    .line 121
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 137
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setArtistSongsSortOrder(I)V

    .line 55
    return-void
.end method

.method public supportsOfflineCaching()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mSortOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method
