.class public Lcom/android/gallery3d/data/PicasaImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "PicasaImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PicasaImage$1;,
        Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;,
        Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;,
        Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_DIR:Ljava/io/File;

.field public static final ITEM_PATH:Lcom/android/gallery3d/data/Path;


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mData:Lcom/android/gallery3d/picasa/PhotoEntry;

.field private mIsVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/PicasaImage;->DOWNLOAD_DIR:Ljava/io/File;

    .line 51
    const-string v0, "/picasa/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/picasa/PhotoEntry;)V
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "entry"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/gallery3d/data/PicasaImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 59
    iput-object p2, p0, Lcom/android/gallery3d/data/PicasaImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 60
    iput-object p3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mIsVideo:Z

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/PicasaImage;)Lcom/android/gallery3d/picasa/PhotoEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/PicasaImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/PicasaImage;I)Ljava/net/URL;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/PicasaImage;->getPhotoUrl(I)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;J)Lcom/android/gallery3d/data/PicasaImage;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "id"

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/gallery3d/data/PicasaAlbum;->getPhotoEntry(Landroid/content/ContentResolver;J)Lcom/android/gallery3d/picasa/PhotoEntry;

    move-result-object v0

    .line 66
    .local v0, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/PicasaImage;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/gallery3d/data/PicasaImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/picasa/PhotoEntry;)V

    goto :goto_0
.end method

.method private getPhotoUrl(I)Ljava/net/URL;
    .locals 3
    .parameter "type"

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, url:Ljava/net/URL;
    packed-switch p1, :pswitch_data_0

    .line 162
    :try_start_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 165
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #url:Ljava/net/URL;
    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/net/URL;

    .end local v1           #url:Ljava/net/URL;
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 159
    :pswitch_1
    new-instance v1, Ljava/net/URL;

    .end local v1           #url:Ljava/net/URL;
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    .restart local v1       #url:Ljava/net/URL;
    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    return-wide v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 285
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 286
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 287
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 288
    .local v1, formater:Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 290
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 291
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 292
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 293
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 294
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    if-ne v2, v5, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    invoke-virtual {v0, v9, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v4, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    const/4 v2, 0x4

    new-array v3, v9, [D

    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v4, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    aput-wide v4, v3, v8

    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v4, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    aput-wide v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 308
    const/16 v2, 0x64

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 310
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 311
    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 313
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    if-eqz v2, :cond_5

    .line 314
    const/16 v2, 0x66

    new-instance v3, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v4, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    if-ne v4, v6, :cond_a

    move v4, v6

    :goto_0
    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 318
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 319
    const/16 v2, 0x67

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 321
    const/16 v2, 0x67

    const v3, 0x7f080051

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V

    .line 323
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    .line 324
    const/16 v2, 0x69

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 327
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 328
    const/16 v2, 0x6b

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 331
    :cond_8
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    if-lez v2, :cond_9

    .line 332
    const/16 v2, 0x6c

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 336
    :cond_9
    return-object v0

    :cond_a
    move v4, v8

    .line 314
    goto :goto_0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 215
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    aput-wide v1, p1, v0

    .line 216
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    aput-wide v1, p1, v0

    .line 217
    return-void
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoEntry()Lcom/android/gallery3d/picasa/PhotoEntry;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 269
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 247
    iget-boolean v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mIsVideo:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    :goto_0
    or-int/lit16 v0, v1, 0x42c

    .line 249
    .local v0, operation:I
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/util/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    and-int/lit8 v0, v0, -0x41

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-wide v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    or-int/lit8 v0, v0, 0x10

    .line 255
    :cond_1
    return v0

    .line 247
    .end local v0           #operation:I
    :cond_2
    const/16 v1, 0x240

    goto :goto_0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v1, v4, Lcom/android/gallery3d/picasa/PhotoEntry;->keywords:Ljava/lang/String;

    .line 222
    .local v1, content:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 230
    .end local p0
    :goto_0
    return-object v4

    .line 224
    .restart local p0
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 230
    .local v0, array:[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    goto :goto_0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/PicasaImage;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;-><init>(Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/data/Path;I)V

    .line 96
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    if-ne v0, v1, :cond_3

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mIsVideo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v0, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    if-ne v0, v1, :cond_2

    .line 83
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    new-instance v0, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;-><init>(Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/data/PicasaImage$1;)V

    goto :goto_0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 197
    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v3, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;-><init>(Lcom/android/gallery3d/data/PicasaImage;Ljava/net/URL;)V

    .line 204
    :goto_0
    return-object v1

    .line 199
    :cond_1
    new-instance v1, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    iget-object v2, v2, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PicasaImage"

    invoke-static {v1, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateContent(Lcom/android/gallery3d/picasa/PhotoEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasa/PhotoEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaImage;->mData:Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 236
    invoke-static {}, Lcom/android/gallery3d/data/PicasaImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/PicasaImage;->mDataVersion:J

    .line 238
    :cond_0
    return-void
.end method
