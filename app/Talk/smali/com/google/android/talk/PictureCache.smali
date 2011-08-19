.class public Lcom/google/android/talk/PictureCache;
.super Ljava/lang/Object;
.source "PictureCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/PictureCache$WorkItem;,
        Lcom/google/android/talk/PictureCache$BitmapCache;,
        Lcom/google/android/talk/PictureCache$PictureData;
    }
.end annotation


# static fields
.field private static HEIGHT:I

.field private static WIDTH:I

.field private static sContentResolver:Landroid/content/ContentResolver;

.field private static sContextForHttpClient:Landroid/content/Context;

.field private static volatile sDone:Z

.field private static sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/PictureCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryThread:Ljava/lang/Thread;

.field private static sQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/PictureCache$WorkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

.field private mContact:Ljava/lang/String;

.field private mNoPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/talk/PictureCache;->sDone:Z

    .line 86
    const/16 v0, 0x8e

    sput v0, Lcom/google/android/talk/PictureCache;->WIDTH:I

    .line 87
    const/16 v0, 0x6e

    sput v0, Lcom/google/android/talk/PictureCache;->HEIGHT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/PictureCache$BitmapCache;-><init>(Lcom/google/android/talk/PictureCache;)V

    iput-object v0, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/PictureCache;->mNoPictureList:Ljava/util/ArrayList;

    .line 112
    iput-wide p2, p0, Lcom/google/android/talk/PictureCache;->mAccountId:J

    .line 113
    iput-object p1, p0, Lcom/google/android/talk/PictureCache;->mContact:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/google/android/talk/PictureCache;->sDone:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/google/android/talk/PictureCache;->WIDTH:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/google/android/talk/PictureCache;->HEIGHT:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/google/android/talk/PictureCache;->getFlickrPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/google/android/talk/PictureCache;->getPicasaPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/google/android/talk/PictureCache;->getYouTubeThumbnail(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->getJpgPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static allowScraping(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, scheme:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 354
    :goto_0
    return v2

    :cond_0
    const-string v2, "www.flickr.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gtalk_flickr_photo_info_url"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_1
    const-string v2, "picasaweb.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gtalk_picasa_album_url"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_2
    const-string v2, "www.youtube.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gtalk_youtube_video_url"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string v2, "true"

    sget-object v3, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v4, "gtalk_url_scraping_for_jpg"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_0
.end method

.method public static destroyAll(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 129
    sget-object v2, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/PictureCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/talk/PictureCache;

    invoke-virtual {p0}, Lcom/google/android/talk/PictureCache;->destroy()V

    goto :goto_0

    .line 133
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/PictureCache;>;"
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    .line 134
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/talk/PictureCache;->sDone:Z

    .line 136
    sget-object v2, Lcom/google/android/talk/PictureCache;->sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-eqz v2, :cond_1

    .line 137
    sget-object v2, Lcom/google/android/talk/PictureCache;->sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 139
    :cond_1
    return-void
.end method

.method private findPictureDataInCache(Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 7
    .parameter "url"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "hash"

    .prologue
    .line 384
    const/4 v3, 0x0

    .line 386
    .local v3, pictureData:Lcom/google/android/talk/PictureCache$PictureData;
    iget-object v5, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    monitor-enter v5

    .line 387
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-virtual {v6, p1}, Lcom/google/android/talk/PictureCache$BitmapCache;->get(Ljava/lang/String;)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 389
    if-eqz p4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/talk/PictureCache$PictureData;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    invoke-virtual {v3}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 398
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 399
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 400
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 401
    .local v4, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 409
    .local v2, h:I
    if-eq v4, p2, :cond_1

    if-eq v2, p3, :cond_1

    .line 410
    invoke-virtual {v3}, Lcom/google/android/talk/PictureCache$PictureData;->isSourceBitmap()Z

    move-result v6

    if-nez v6, :cond_0

    if-lt v4, p2, :cond_1

    if-lt v2, p3, :cond_1

    .line 412
    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    .restart local v1       #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v1}, Lcom/google/android/talk/PictureCache$PictureData;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 422
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/talk/PictureCache$PictureData;->setIsSourceBitmap(Z)V

    .line 423
    iget-object v6, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-virtual {v6}, Lcom/google/android/talk/PictureCache$BitmapCache;->recomputeCacheSize()V

    .line 440
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #h:I
    .end local v4           #w:I
    :cond_1
    :goto_0
    monitor-exit v5

    .line 442
    return-object v3

    .line 437
    :cond_2
    iget-object v6, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-virtual {v6, p1}, Lcom/google/android/talk/PictureCache$BitmapCache;->clear(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static getFlickrPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 10
    .parameter "urlString"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1015
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1019
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "www.flickr.com"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v8

    .line 1045
    :goto_0
    return-object v5

    .line 1026
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 1027
    .local v2, pathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    const-string v6, "photos"

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v8

    .line 1032
    goto :goto_0

    .line 1034
    :cond_2
    sget-object v5, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v6, "gtalk_flickr_photo_info_url"

    invoke-static {v5, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, flickrPhotoInfoUrl:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "c5ae0bd91eae2afd648ed0fd91a0589b"

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, flickrUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/PictureCache;->getReaderForUrl(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    .line 1042
    .local v3, responseReader:Ljava/io/Reader;
    if-eqz v3, :cond_3

    .line 1043
    invoke-static {p0, v3, p1, p2}, Lcom/google/android/talk/PictureCache;->parseFlickrResponse(Ljava/lang/String;Ljava/io/Reader;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v8

    .line 1045
    goto :goto_0
.end method

.method private static getHttpContent(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    sget-object v4, Lcom/google/android/talk/PictureCache;->sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v4, :cond_0

    .line 1180
    new-instance v4, Lcom/google/android/common/http/GoogleHttpClient;

    sget-object v5, Lcom/google/android/talk/PictureCache;->sContextForHttpClient:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/talk/PictureCache;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v4, Lcom/google/android/talk/PictureCache;->sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 1183
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    sget-object v4, Lcom/google/android/talk/PictureCache;->sHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v4, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1185
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1186
    .local v3, status:I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 1187
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1188
    .local v0, body:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    .line 1189
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    return-object v4

    .line 1192
    .end local v0           #body:Lorg/apache/http/HttpEntity;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] with status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance(Ljava/lang/String;JZ)Lcom/google/android/talk/PictureCache;
    .locals 3
    .parameter "contact"
    .parameter "accountId"
    .parameter "createIfNotExist"

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 151
    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    .line 154
    :cond_1
    sget-object v1, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PictureCache hasn\'t been initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_2
    sget-object v1, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/PictureCache;

    .line 159
    .local v0, cache:Lcom/google/android/talk/PictureCache;
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 160
    new-instance v0, Lcom/google/android/talk/PictureCache;

    .end local v0           #cache:Lcom/google/android/talk/PictureCache;
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/talk/PictureCache;-><init>(Ljava/lang/String;J)V

    .line 161
    .restart local v0       #cache:Lcom/google/android/talk/PictureCache;
    sget-object v1, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v0

    .line 164
    goto :goto_0
.end method

.method private static getJpgPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "urlStr"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->getHttpContent(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 305
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/google/android/talk/PictureCache;->getStreamData(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 307
    .local v0, data:[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 308
    .restart local v3       #inputStream:Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 315
    .local v5, trialImage:Landroid/graphics/Bitmap;
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v7, v9, :cond_0

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v7, v9, :cond_1

    :cond_0
    move-object v7, v8

    .line 345
    .end local v0           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #trialImage:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 322
    .restart local v0       #data:[B
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #trialImage:Landroid/graphics/Bitmap;
    :cond_1
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v8, Lcom/google/android/talk/PictureCache;->HEIGHT:I

    div-int v1, v7, v8

    .line 323
    .local v1, hscale:I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v8, Lcom/google/android/talk/PictureCache;->WIDTH:I

    div-int v6, v7, v8

    .line 324
    .local v6, wscale:I
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 325
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 333
    .restart local v3       #inputStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 334
    if-nez v2, :cond_2

    .end local v0           #data:[B
    .end local v1           #hscale:I
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #trialImage:Landroid/graphics/Bitmap;
    .end local v6           #wscale:I
    :cond_2
    :goto_1
    move-object v7, v2

    .line 345
    goto :goto_0

    .line 340
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static getPicasaPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 12
    .parameter "urlString"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 865
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 869
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "picasaweb.google.com"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v8

    .line 899
    :goto_0
    return-object v6

    .line 876
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 877
    .local v2, pathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v11, :cond_1

    move-object v6, v8

    .line 881
    goto :goto_0

    .line 883
    :cond_1
    sget-object v6, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "gtalk_picasa_album_url"

    invoke-static {v6, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, albumUrl:Ljava/lang/String;
    new-array v6, v11, [Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, picasaUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/PictureCache;->getReaderForUrl(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v4

    .line 891
    .local v4, responseReader:Ljava/io/Reader;
    if-eqz v4, :cond_3

    .line 892
    invoke-static {p0, v4, p1, p2}, Lcom/google/android/talk/PictureCache;->parseGDataResponse(Ljava/lang/String;Ljava/io/Reader;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v1

    .line 894
    .local v1, data:Lcom/google/android/talk/PictureCache$PictureData;
    if-eqz v1, :cond_2

    .line 895
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/google/android/talk/PictureCache$PictureData;->setType(I)V

    :cond_2
    move-object v6, v1

    .line 897
    goto :goto_0

    .end local v1           #data:Lcom/google/android/talk/PictureCache$PictureData;
    :cond_3
    move-object v6, v8

    .line 899
    goto :goto_0
.end method

.method private static getReaderForUrl(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .parameter "urlString"

    .prologue
    .line 904
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->getHttpContent(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-object v0

    .line 905
    :catch_0
    move-exception v0

    .line 910
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStreamData(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1200
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 1202
    .local v2, readBuffer:[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, nRead:I
    if-ltz v1, :cond_0

    .line 1203
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "AndroidGoogleTalkAppHttp/1.0"

    return-object v0
.end method

.method private static getYouTubeThumbnail(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 9
    .parameter "urlString"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v8, 0x0

    .line 1141
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1145
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "www.youtube.com"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v8

    .line 1175
    :goto_0
    return-object v6

    .line 1152
    :cond_0
    const-string v6, "v"

    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, videoId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v8

    .line 1157
    goto :goto_0

    .line 1159
    :cond_1
    sget-object v6, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "gtalk_youtube_video_url"

    invoke-static {v6, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1161
    .local v4, youTubeGdataUrl:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1166
    .local v5, youtubeUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/PictureCache;->getReaderForUrl(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 1167
    .local v1, responseReader:Ljava/io/Reader;
    if-eqz v1, :cond_3

    .line 1168
    invoke-static {p0, v1, p1, p2}, Lcom/google/android/talk/PictureCache;->parseGDataResponse(Ljava/lang/String;Ljava/io/Reader;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v0

    .line 1170
    .local v0, data:Lcom/google/android/talk/PictureCache$PictureData;
    if-eqz v0, :cond_2

    .line 1171
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/android/talk/PictureCache$PictureData;->setType(I)V

    :cond_2
    move-object v6, v0

    .line 1173
    goto :goto_0

    .end local v0           #data:Lcom/google/android/talk/PictureCache$PictureData;
    :cond_3
    move-object v6, v8

    .line 1175
    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/PictureCache;->sInstances:Ljava/util/HashMap;

    .line 122
    invoke-static {}, Lcom/google/android/talk/PictureCache;->startQueryThread()V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    .line 125
    sput-object p0, Lcom/google/android/talk/PictureCache;->sContextForHttpClient:Landroid/content/Context;

    goto :goto_0
.end method

.method private static parseFlickrResponse(Ljava/lang/String;Ljava/io/Reader;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 7
    .parameter "urlString"
    .parameter "response"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 1072
    sget-object p2, Lcom/google/android/talk/PictureCache;->sContentResolver:Landroid/content/ContentResolver;

    .end local p2
    const-string p3, "gtalk_flickr_photo_url"

    .end local p3
    invoke-static {p2, p3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1075
    .local p3, flickrPhotoUrl:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1076
    const/4 p0, 0x0

    .line 1136
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 1079
    .restart local p0
    .restart local p1
    :cond_0
    new-instance p2, Lcom/google/android/talk/PictureCache$PictureData;

    invoke-direct {p2, p0}, Lcom/google/android/talk/PictureCache$PictureData;-><init>(Ljava/lang/String;)V

    .line 1082
    .local p2, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 1083
    .local p0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1085
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 p0, 0x0

    .line 1086
    .local p0, index:I
    const/4 v0, 0x0

    .line 1087
    .local v0, thisTag:Ljava/lang/String;
    const p0, 0x7fffffff

    .line 1088
    .local p0, diff:I
    const/4 p0, 0x0

    .line 1090
    .local p0, bestThumbnailUrl:Ljava/lang/String;
    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1091
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .local p0, eventType:I
    move p1, p0

    .end local p0           #eventType:I
    .local p1, eventType:I
    move-object p0, v0

    .line 1092
    .end local v0           #thisTag:Ljava/lang/String;
    .local p0, thisTag:Ljava/lang/String;
    :goto_1
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    .line 1093
    .end local p0           #thisTag:Ljava/lang/String;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, thisTag:Ljava/lang/String;
    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    .line 1095
    const-string p0, "photo"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1096
    const/4 p0, 0x0

    const-string v0, "secret"

    invoke-interface {v4, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, secret:Ljava/lang/String;
    const/4 p0, 0x0

    const-string v0, "server"

    invoke-interface {v4, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, server:Ljava/lang/String;
    const/4 p0, 0x0

    const-string v0, "farm"

    invoke-interface {v4, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1099
    .local p0, farm:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v5, "id"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, photoId:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object v2, v5, p0

    .end local p0           #farm:Ljava/lang/String;
    const/4 p0, 0x2

    aput-object v0, v5, p0

    const/4 p0, 0x3

    aput-object v1, v5, p0

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1106
    .local p0, photoUrl:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->getJpgPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1107
    .local p0, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 1108
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #photoId:Ljava/lang/String;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/google/android/talk/PictureCache$PictureData;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_1
    move p0, p1

    .line 1124
    .end local v1           #secret:Ljava/lang/String;
    .end local v2           #server:Ljava/lang/String;
    .end local p1           #eventType:I
    .local p0, eventType:I
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    move p1, p0

    .end local p0           #eventType:I
    .restart local p1       #eventType:I
    move-object p0, v3

    .end local v3           #thisTag:Ljava/lang/String;
    .local p0, thisTag:Ljava/lang/String;
    goto :goto_1

    .line 1110
    .end local p0           #thisTag:Ljava/lang/String;
    .restart local v3       #thisTag:Ljava/lang/String;
    :cond_2
    const-string p0, "description"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1111
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 1112
    .end local p1           #eventType:I
    .local p0, eventType:I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/talk/PictureCache$PictureData;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1126
    .end local v3           #thisTag:Ljava/lang/String;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .end local p0           #eventType:I
    :catch_0
    move-exception p0

    .line 1135
    :cond_3
    :goto_3
    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Lcom/google/android/talk/PictureCache$PictureData;->setType(I)V

    move-object p0, p2

    .line 1136
    goto/16 :goto_0

    .line 1116
    .restart local v3       #thisTag:Ljava/lang/String;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1       #eventType:I
    :cond_4
    :try_start_1
    const-string p0, "title"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1117
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 1118
    .end local p1           #eventType:I
    .restart local p0       #eventType:I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/talk/PictureCache$PictureData;->setTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1130
    .end local v3           #thisTag:Ljava/lang/String;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .end local p0           #eventType:I
    :catch_1
    move-exception p0

    goto :goto_3

    .restart local v3       #thisTag:Ljava/lang/String;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1       #eventType:I
    :cond_5
    move p0, p1

    .end local p1           #eventType:I
    .restart local p0       #eventType:I
    goto :goto_2
.end method

.method private static parseGDataResponse(Ljava/lang/String;Ljava/io/Reader;II)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 10
    .parameter "urlString"
    .parameter "response"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 939
    new-instance v0, Lcom/google/android/talk/PictureCache$PictureData;

    invoke-direct {v0, p0}, Lcom/google/android/talk/PictureCache$PictureData;-><init>(Ljava/lang/String;)V

    .line 942
    .local v0, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 943
    .local p0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 945
    .local v7, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 p0, 0x0

    .line 946
    .local p0, index:I
    const/4 v4, 0x0

    .line 947
    .local v4, thisTag:Ljava/lang/String;
    const v1, 0x7fffffff

    .line 948
    .local v1, diff:I
    const/4 p0, 0x0

    .line 949
    .local p0, bestThumbnailUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 950
    .local v3, gotThumbnail:Z
    const/4 v2, 0x0

    .line 952
    .local v2, gotDescription:Z
    invoke-interface {v7, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 953
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .local p1, eventType:I
    move v9, p1

    .end local p1           #eventType:I
    .local v9, eventType:I
    move-object p1, v4

    .end local v4           #thisTag:Ljava/lang/String;
    .local p1, thisTag:Ljava/lang/String;
    move v4, v3

    .end local v3           #gotThumbnail:Z
    .local v4, gotThumbnail:Z
    move v3, v2

    .end local v2           #gotDescription:Z
    .local v3, gotDescription:Z
    move v2, v9

    .line 954
    .end local v9           #eventType:I
    .local v2, eventType:I
    :goto_0
    const/4 p1, 0x1

    if-eq v2, p1, :cond_5

    .end local p1           #thisTag:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v4, :cond_5

    .line 956
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, thisTag:Ljava/lang/String;
    const/4 p1, 0x2

    if-ne v2, p1, :cond_3

    .line 958
    const-string p1, "media:thumbnail"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 959
    const/4 p1, 0x0

    const-string v6, "height"

    invoke-interface {v7, p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 960
    .local p1, height:I
    const/4 v6, 0x0

    const-string v8, "width"

    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 965
    .local v6, width:I
    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .end local p1           #height:I
    move-result p1

    sub-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .end local v6           #width:I
    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 967
    .local p1, newDiff:I
    if-ge p1, v1, :cond_8

    .line 968
    move p1, p1

    .line 969
    .end local v1           #diff:I
    .local p1, diff:I
    const/4 p0, 0x0

    const-string v1, "url"

    .end local p0           #bestThumbnailUrl:Ljava/lang/String;
    invoke-interface {v7, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #bestThumbnailUrl:Ljava/lang/String;
    :goto_1
    move v1, v2

    .end local v2           #eventType:I
    .local v1, eventType:I
    move v2, v3

    .end local v3           #gotDescription:Z
    .local v2, gotDescription:Z
    move v3, v4

    .end local v4           #gotThumbnail:Z
    .local v3, gotThumbnail:Z
    move-object v4, v5

    .line 999
    .end local v5           #thisTag:Ljava/lang/String;
    .local v4, thisTag:Ljava/lang/String;
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v9, v1

    .end local v1           #eventType:I
    .restart local v9       #eventType:I
    move v1, p1

    .end local p1           #diff:I
    .local v1, diff:I
    move-object p1, v4

    .end local v4           #thisTag:Ljava/lang/String;
    .local p1, thisTag:Ljava/lang/String;
    move v4, v3

    .end local v3           #gotThumbnail:Z
    .local v4, gotThumbnail:Z
    move v3, v2

    .end local v2           #gotDescription:Z
    .local v3, gotDescription:Z
    move v2, v9

    .end local v9           #eventType:I
    .local v2, eventType:I
    goto :goto_0

    .line 971
    .end local p1           #thisTag:Ljava/lang/String;
    .restart local v5       #thisTag:Ljava/lang/String;
    :cond_1
    const-string p1, "media:description"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 972
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    .line 973
    .end local v2           #eventType:I
    .local p1, eventType:I
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/talk/PictureCache$PictureData;->setDescription(Ljava/lang/String;)V

    .line 977
    const/4 v2, 0x1

    .end local v3           #gotDescription:Z
    .local v2, gotDescription:Z
    move v3, v4

    .end local v4           #gotThumbnail:Z
    .local v3, gotThumbnail:Z
    move-object v4, v5

    .end local v5           #thisTag:Ljava/lang/String;
    .local v4, thisTag:Ljava/lang/String;
    move v9, v1

    .end local v1           #diff:I
    .local v9, diff:I
    move v1, p1

    .end local p1           #eventType:I
    .local v1, eventType:I
    move p1, v9

    .end local v9           #diff:I
    .local p1, diff:I
    goto :goto_2

    .line 978
    .end local p1           #diff:I
    .local v1, diff:I
    .local v2, eventType:I
    .local v3, gotDescription:Z
    .local v4, gotThumbnail:Z
    .restart local v5       #thisTag:Ljava/lang/String;
    :cond_2
    const-string p1, "media:title"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 979
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    .line 980
    .end local v2           #eventType:I
    .local p1, eventType:I
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/talk/PictureCache$PictureData;->setTitle(Ljava/lang/String;)V

    move v2, v3

    .end local v3           #gotDescription:Z
    .local v2, gotDescription:Z
    move v3, v4

    .end local v4           #gotThumbnail:Z
    .local v3, gotThumbnail:Z
    move-object v4, v5

    .end local v5           #thisTag:Ljava/lang/String;
    .local v4, thisTag:Ljava/lang/String;
    move v9, v1

    .end local v1           #diff:I
    .restart local v9       #diff:I
    move v1, p1

    .end local p1           #eventType:I
    .local v1, eventType:I
    move p1, v9

    .end local v9           #diff:I
    .local p1, diff:I
    goto :goto_2

    .line 985
    .end local p1           #diff:I
    .local v1, diff:I
    .local v2, eventType:I
    .local v3, gotDescription:Z
    .local v4, gotThumbnail:Z
    .restart local v5       #thisTag:Ljava/lang/String;
    :cond_3
    const/4 p1, 0x3

    if-ne v2, p1, :cond_7

    .line 986
    const-string p1, "media:group"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    .line 987
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->getJpgPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 991
    .local p1, bm:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_4

    .line 992
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #gotThumbnail:Z
    invoke-direct {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Lcom/google/android/talk/PictureCache$PictureData;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_4
    const/4 p1, 0x1

    .line 997
    .local p1, gotThumbnail:Z
    :goto_3
    const/4 v4, 0x0

    .end local v5           #thisTag:Ljava/lang/String;
    .local v4, thisTag:Ljava/lang/String;
    move v9, v2

    .end local v2           #eventType:I
    .local v9, eventType:I
    move v2, v3

    .end local v3           #gotDescription:Z
    .local v2, gotDescription:Z
    move v3, p1

    .end local p1           #gotThumbnail:Z
    .local v3, gotThumbnail:Z
    move p1, v1

    .end local v1           #diff:I
    .local p1, diff:I
    move v1, v9

    .end local v9           #eventType:I
    .local v1, eventType:I
    goto :goto_2

    .line 1005
    .end local v1           #eventType:I
    .end local v2           #gotDescription:Z
    .end local v3           #gotThumbnail:Z
    .end local v4           #thisTag:Ljava/lang/String;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .end local p0           #bestThumbnailUrl:Ljava/lang/String;
    .end local p1           #diff:I
    :catch_0
    move-exception p0

    .line 1010
    :cond_5
    :goto_4
    return-object v0

    .line 1001
    :catch_1
    move-exception p0

    goto :goto_4

    .local v1, diff:I
    .local v2, eventType:I
    .local v3, gotDescription:Z
    .local v4, gotThumbnail:Z
    .restart local v5       #thisTag:Ljava/lang/String;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0       #bestThumbnailUrl:Ljava/lang/String;
    :cond_6
    move p1, v4

    .end local v4           #gotThumbnail:Z
    .local p1, gotThumbnail:Z
    goto :goto_3

    .end local p1           #gotThumbnail:Z
    .restart local v4       #gotThumbnail:Z
    :cond_7
    move p1, v1

    .end local v1           #diff:I
    .local p1, diff:I
    move v1, v2

    .end local v2           #eventType:I
    .local v1, eventType:I
    move v2, v3

    .end local v3           #gotDescription:Z
    .local v2, gotDescription:Z
    move v3, v4

    .end local v4           #gotThumbnail:Z
    .local v3, gotThumbnail:Z
    move-object v4, v5

    .end local v5           #thisTag:Ljava/lang/String;
    .local v4, thisTag:Ljava/lang/String;
    goto :goto_2

    .local v1, diff:I
    .local v2, eventType:I
    .local v3, gotDescription:Z
    .local v4, gotThumbnail:Z
    .restart local v5       #thisTag:Ljava/lang/String;
    .local p1, newDiff:I
    :cond_8
    move p1, v1

    .end local v1           #diff:I
    .local p1, diff:I
    goto :goto_1
.end method

.method private static startQueryThread()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/PictureCache$1;

    invoke-direct {v1}, Lcom/google/android/talk/PictureCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/google/android/talk/PictureCache;->sQueryThread:Ljava/lang/Thread;

    .line 291
    sget-object v0, Lcom/google/android/talk/PictureCache;->sQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 292
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-virtual {v0}, Lcom/google/android/talk/PictureCache$BitmapCache;->clearAll()V

    .line 370
    return-void
.end method

.method public getPictureDataIfInCache(Ljava/lang/String;IILandroid/os/Handler;Lcom/google/android/talk/PictureCache$PictureData;)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 10
    .parameter "url"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "handler"
    .parameter "defaultReturn"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3, p1}, Lcom/google/android/talk/PictureCache;->findPictureDataInCache(Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v8

    .line 485
    .local v8, pictureData:Lcom/google/android/talk/PictureCache$PictureData;
    if-eqz v8, :cond_0

    move-object v1, v8

    .line 515
    :goto_0
    return-object v1

    .line 489
    :cond_0
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 490
    .local v6, message:Landroid/os/Message;
    const/16 v1, 0x7b

    iput v1, v6, Landroid/os/Message;->what:I

    .line 491
    invoke-virtual {v6, p4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 495
    sget-object v9, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 496
    :try_start_0
    new-instance v0, Lcom/google/android/talk/PictureCache$WorkItem;

    iget-object v3, p0, Lcom/google/android/talk/PictureCache;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/PictureCache$WorkItem;-><init>(Lcom/google/android/talk/PictureCache;Ljava/lang/String;Lcom/google/android/talk/PictureCache$BitmapCache;IILandroid/os/Message;)V

    .line 499
    .local v0, w:Lcom/google/android/talk/PictureCache$WorkItem;
    sget-object v1, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    sget-object v1, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 504
    sget-object v1, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 513
    :goto_1
    monitor-exit v9

    move-object v1, p5

    .line 515
    goto :goto_0

    .line 510
    :cond_1
    sget-object v1, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/talk/PictureCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/talk/PictureCache$WorkItem;

    .line 511
    .local v7, orig:Lcom/google/android/talk/PictureCache$WorkItem;
    iput-object v6, v7, Lcom/google/android/talk/PictureCache$WorkItem;->mPictureLoadedMessage:Landroid/os/Message;

    goto :goto_1

    .line 513
    .end local v0           #w:Lcom/google/android/talk/PictureCache$WorkItem;
    .end local v7           #orig:Lcom/google/android/talk/PictureCache$WorkItem;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
