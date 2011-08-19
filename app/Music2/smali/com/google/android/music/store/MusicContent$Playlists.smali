.class public final Lcom/google/android/music/store/MusicContent$Playlists;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/music/store/MusicContent$AudioSetColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicContent$Playlists$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.music.playlist"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.music.playlist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LEGACY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/playlist"

.field public static final NAME:Ljava/lang/String; = "name"

.field static final PARAM_PLAYLIST_ITEM_MOVE_BEFORE:Ljava/lang/String; = "moveBefore"

.field static final PARAM_PLAYLIST_NAME:Ljava/lang/String; = "name"

.field static final PARAM_PLAYLIST_UPDATE_ACTION:Ljava/lang/String; = "action"

.field static final PARAM_PLAYLIST_UPDATE_ACTION_VALUE_ADD_ALBUM:Ljava/lang/String; = "album"

.field static final PARAM_PLAYLIST_UPDATE_ACTION_VALUE_ADD_ARTIST:Ljava/lang/String; = "artist"

.field static final PARAM_PLAYLIST_UPDATE_ACTION_VALUE_ADD_GENRE:Ljava/lang/String; = "genre"

.field static final PARAM_PLAYLIST_UPDATE_ACTION_VALUE_ADD_PLAYLIST:Ljava/lang/String; = "playlist"

.field static final PARAM_PLAYLIST_UPDATE_ACTION_VALUE_ADD_TRACK_ARTIST:Ljava/lang/String; = "trackartist"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "playlists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    return-void
.end method

.method public static appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 365
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 368
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "album"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendArtistToPlayList(Landroid/content/ContentResolver;JJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    const/4 v4, 0x0

    .line 383
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 384
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "AlbumArtistId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 386
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "artist"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendGenreToPlayList(Landroid/content/ContentResolver;JJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    const/4 v4, 0x0

    .line 401
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 402
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "GenreId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 404
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "genre"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendGenreToPlayList(Landroid/content/ContentResolver;JJJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "genreId"
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 412
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 413
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "GenreId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    const-string v2, "album_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 416
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "genre"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 418
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static appendItemToPlayList(Landroid/content/ContentResolver;JJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "musicId"

    .prologue
    const/4 v4, 0x1

    .line 349
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 350
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "audio_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, newItemUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/high16 v2, -0x8000

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public static appendPlaylistToPlayList(Landroid/content/ContentResolver;JJ)I
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    const/4 v4, 0x0

    .line 431
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 432
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "playlist_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 434
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "playlist"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 436
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static createPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 331
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 332
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 4
    .parameter "playlisId"

    .prologue
    .line 304
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 305
    :cond_0
    sget-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 308
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "name"

    .prologue
    .line 320
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Empty playlist name"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    sget-object v0, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static movePlaylistItem(Landroid/content/ContentResolver;JJJ)V
    .locals 5
    .parameter "resolver"
    .parameter "playlistId"
    .parameter "itemToMove"
    .parameter "desiredPreviousItem"

    .prologue
    const/4 v4, 0x0

    .line 450
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 451
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 452
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "moveBefore"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 455
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    return-void
.end method
