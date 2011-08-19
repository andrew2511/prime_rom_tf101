.class public Lcom/ecareme/pixwe/wallpaper/RandomDataSource;
.super Ljava/lang/Object;
.source "RandomDataSource.java"

# interfaces
.implements Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapForIndex(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "currentSlideshowCounter"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {p1}, Lcom/ecareme/pixwe/cache/CacheService;->getImageList(Landroid/content/Context;)Lcom/ecareme/pixwe/cache/ImageList;

    move-result-object v8

    .line 36
    .local v8, list:Lcom/ecareme/pixwe/cache/ImageList;
    iget-object v0, v8, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    if-nez v0, :cond_0

    move-object v0, v2

    .line 56
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    .line 39
    .local v9, random:D
    iget-object v0, v8, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    array-length v0, v0

    int-to-double v2, v0

    mul-double/2addr v9, v2

    .line 40
    double-to-int v7, v9

    .line 41
    .local v7, index:I
    iget-object v0, v8, Lcom/ecareme/pixwe/cache/ImageList;->thumbids:[J

    aget-wide v4, v0, v7

    .line 42
    .local v4, cacheId:J
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    aget-wide v2, v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, uri:Ljava/lang/String;
    const/4 v11, 0x0

    .line 45
    .local v11, retVal:Landroid/graphics/Bitmap;
    const/16 v2, 0x400

    const/16 v3, 0x400

    const/4 v6, 0x0

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 46
    if-eqz v11, :cond_1

    .line 47
    iget-object v0, v8, Lcom/ecareme/pixwe/cache/ImageList;->orientation:[I

    aget v0, v0, v7

    invoke-static {v11, v0}, Lcom/ecareme/pixwe/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :cond_1
    :goto_1
    move-object v0, v11

    .line 56
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :catch_2
    move-exception v0

    goto :goto_1
.end method
