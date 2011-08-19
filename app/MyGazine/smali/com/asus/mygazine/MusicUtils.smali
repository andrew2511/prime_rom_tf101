.class public Lcom/asus/mygazine/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final ALBUM_URI:Landroid/net/Uri;

.field private static final BITMAP_OPTIONS:Landroid/graphics/BitmapFactory$Options;

.field private static final DBG:Z

.field private static final MEDIA_URI:Landroid/net/Uri;

.field public static sAlbumId:J

.field public static sBitmap:Landroid/graphics/Bitmap;

.field public static sIsGoogleMusic:Z

.field public static sMusicUtils:Lcom/asus/mygazine/MusicUtils;

.field public static sUri:Landroid/net/Uri;


# instance fields
.field private mMusicObserver:Landroid/database/ContentObserver;

.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/MusicUtils;->DBG:Z

    .line 33
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/MusicUtils;->ALBUM_URI:Landroid/net/Uri;

    .line 34
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/asus/mygazine/MusicUtils;->MEDIA_URI:Landroid/net/Uri;

    .line 35
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/asus/mygazine/MusicUtils;->BITMAP_OPTIONS:Landroid/graphics/BitmapFactory$Options;

    .line 40
    sput-object v3, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    .line 41
    sput-object v3, Lcom/asus/mygazine/MusicUtils;->sUri:Landroid/net/Uri;

    .line 43
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/asus/mygazine/MusicUtils;->sAlbumId:J

    .line 44
    sput-boolean v2, Lcom/asus/mygazine/MusicUtils;->sIsGoogleMusic:Z

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/mygazine/MusicUtils;->mResolver:Landroid/content/ContentResolver;

    .line 65
    new-instance v0, Lcom/asus/mygazine/MusicUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/MusicUtils$1;-><init>(Lcom/asus/mygazine/MusicUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/MusicUtils;->mMusicObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "context"
    .parameter "songName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 213
    invoke-static {p0, p1, p2, p3}, Lcom/asus/mygazine/MusicUtils;->queryAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 214
    .local v0, albumId:J
    sget-boolean v2, Lcom/asus/mygazine/MusicUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIdIfFileExist - return albumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,songName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,albumName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,artistName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    return-wide v0
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, bm:Landroid/graphics/Bitmap;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 278
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_0
    cmp-long v5, p3, v6

    if-gez v5, :cond_2

    .line 283
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/external/audio/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/albumart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 284
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 285
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 287
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v2           #fd:Ljava/io/FileDescriptor;
    :cond_1
    :goto_0
    move-object v5, v0

    .line 299
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    return-object v5

    .line 291
    :cond_2
    sget-object v5, Lcom/asus/mygazine/MusicUtils;->ALBUM_URI:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 292
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 293
    .restart local v3       #pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 295
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, ex:Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 304
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/asus/mygazine/MusicUtils;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/asus/mygazine/MusicUtils;->sMusicUtils:Lcom/asus/mygazine/MusicUtils;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/asus/mygazine/MusicUtils;

    invoke-direct {v0}, Lcom/asus/mygazine/MusicUtils;-><init>()V

    sput-object v0, Lcom/asus/mygazine/MusicUtils;->sMusicUtils:Lcom/asus/mygazine/MusicUtils;

    .line 61
    :cond_0
    sget-object v0, Lcom/asus/mygazine/MusicUtils;->sMusicUtils:Lcom/asus/mygazine/MusicUtils;

    return-object v0
.end method

.method public static isAlbumURI(Landroid/content/Context;JJ)Z
    .locals 9
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 237
    cmp-long v4, p3, v7

    if-gez v4, :cond_1

    .line 241
    cmp-long v4, p1, v7

    if-ltz v4, :cond_0

    .line 243
    const-wide/16 v4, -0x1

    invoke-static {p0, p1, p2, v4, v5}, Lcom/asus/mygazine/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    .line 244
    sget-object v4, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 245
    invoke-static {p0}, Lcom/asus/mygazine/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    :cond_0
    move v4, v6

    .line 269
    :goto_0
    return v4

    .line 252
    :cond_1
    :try_start_0
    sget-object v4, Lcom/asus/mygazine/MusicUtils;->ALBUM_URI:Landroid/net/Uri;

    invoke-static {v4, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/asus/mygazine/MusicUtils;->sUri:Landroid/net/Uri;

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 255
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v4, Lcom/asus/mygazine/MusicUtils;->sUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 256
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 259
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #res:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 261
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-static {p0}, Lcom/asus/mygazine/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    move v4, v6

    .line 262
    goto :goto_0

    .line 264
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 266
    .local v2, io:Ljava/io/IOException;
    invoke-static {p0}, Lcom/asus/mygazine/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/asus/mygazine/MusicUtils;->sBitmap:Landroid/graphics/Bitmap;

    move v4, v6

    .line 267
    goto :goto_0
.end method

.method public static isMusicPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 223
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 224
    const/4 v3, 0x1

    .line 231
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 227
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 228
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/asus/mygazine/MusicUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "MusicUtils"

    const-string v4, "isMusicPackage CreatePackageContext error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v5

    .line 229
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v5

    .line 231
    goto :goto_0
.end method

.method public static queryAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "songName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 140
    sget-boolean v0, Lcom/asus/mygazine/MusicUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MusicUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAlbumId songName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,albumName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,artistName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 143
    const/4 p0, -0x1

    .line 207
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :cond_1
    :goto_0
    return p0

    .line 146
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v3, selection:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, fieldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, srcList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string p1, "title=?"

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    if-eqz p2, :cond_4

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 155
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string p1, "album=?"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    if-eqz p3, :cond_5

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 159
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string p1, "artist=?"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_5
    const/4 p1, 0x0

    .end local p2
    .end local p3
    .local p1, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 164
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ge p1, p2, :cond_6

    .line 166
    const-string p2, " AND "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 170
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 171
    .local p1, array:[Ljava/lang/Object;
    array-length p2, p1

    new-array v4, p2, [Ljava/lang/String;

    .line 173
    .local v4, selectArgs:[Ljava/lang/String;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_2
    array-length p3, p1

    if-ge p2, p3, :cond_8

    .line 176
    aget-object p3, p1, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, p2

    .line 173
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 179
    :cond_8
    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    .end local p1           #array:[Ljava/lang/Object;
    const/4 p1, 0x0

    const-string p2, "album_id"

    .end local p2           #i:I
    aput-object p2, v2, p1

    .line 180
    .local v2, MUSIC_DATA_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .end local v0           #fieldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/asus/mygazine/MusicUtils;->MEDIA_URI:Landroid/net/Uri;

    .end local v1           #srcList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #selection:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 184
    .local p1, cur:Landroid/database/Cursor;
    if-nez p1, :cond_a

    .line 186
    :try_start_0
    const-string p0, "MusicUtils"

    .end local p0
    const-string p2, "queryAlbumId no music found"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz p1, :cond_9

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_9
    const/4 p0, -0x1

    goto/16 :goto_0

    .line 191
    .restart local p0
    :cond_a
    const/4 p0, -0x1

    .line 192
    .local p0, albumId:I
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 195
    :cond_b
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #albumId:I
    move-result p0

    .line 196
    .restart local p0       #albumId:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    if-nez p2, :cond_b

    .line 203
    :cond_c
    if-eqz p1, :cond_1

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 203
    .end local p0           #albumId:I
    :catchall_0
    move-exception p0

    if-eqz p1, :cond_d

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw p0
.end method

.method public static sendToMediaService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    sget-boolean v1, Lcom/asus/mygazine/MusicUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "MusicUtils"

    const-string v2, "sendToMediaService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "update_mygazine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public registerCallback(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/asus/mygazine/MusicUtils;->mResolver:Landroid/content/ContentResolver;

    .line 79
    sget-object v0, Lcom/asus/mygazine/MusicUtils;->MEDIA_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/mygazine/MusicUtils;->mMusicObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public unregisterCallback(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/asus/mygazine/MusicUtils;->mMusicObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    return-void
.end method
