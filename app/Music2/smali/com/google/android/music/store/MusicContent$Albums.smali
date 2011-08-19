.class public final Lcom/google/android/music/store/MusicContent$Albums;
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
    name = "Albums"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ALBUM_ART:Ljava/lang/String; = "album_art"

.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ALBUM_SORT:Ljava/lang/String; = "CanonicalAlbum"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final ARTIST_SORT:Ljava/lang/String; = "artistSort"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.music.album"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.music.album"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SONG_COUNT:Ljava/lang/String; = "SongCount"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 616
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumsGroupedByArtistsUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 684
    sget-object v0, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "artists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumsSortedByAlbumUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 692
    sget-object v1, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 693
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "order"

    const-string v2, "album"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 695
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getAlbumsSortedByArtistUri()Landroid/net/Uri;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    sget-object v1, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 669
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "order"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 671
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 4
    .parameter "albumId"

    .prologue
    .line 656
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 657
    sget-object v0, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/music/store/MusicContent$Albums;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getAudioInAlbumCount(Landroid/content/Context;J)I
    .locals 2
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 713
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 714
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public static getAudioInAlbumUri(J)Landroid/net/Uri;
    .locals 3
    .parameter "albumId"

    .prologue
    .line 702
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 703
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid album id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "audio"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
