.class public Lcom/ecareme/pixwe/media/UriTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "UriTexture.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams; = null

.field public static final MAX_RESOLUTION:I = 0x400

.field private static final MAX_RESOLUTION_A:I = 0x400

.field private static final MAX_RESOLUTION_B:I = 0x400

.field public static final SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry; = null

.field private static final TAG:Ljava/lang/String; = "UriTexture"

.field public static final URI_CACHE:Ljava/lang/String; = null

.field private static final USER_AGENT:Ljava/lang/String; = "PixWe-ImageDownload"


# instance fields
.field protected mCacheId:J

.field private mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

.field protected mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v3, 0x4e20

    .line 78
    const-string v2, "hires-image-cache"

    invoke-static {v2}, Lcom/ecareme/pixwe/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ecareme/pixwe/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    .line 85
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 87
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 90
    const-string v2, "PixWe-ImageDownload"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 91
    sput-object v0, Lcom/ecareme/pixwe/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 94
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v2, Lcom/ecareme/pixwe/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 95
    sget-object v2, Lcom/ecareme/pixwe/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 101
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ecareme/pixwe/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, uri_cache:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUri"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private static computeSampleSize(Ljava/io/InputStream;II)I
    .locals 4
    .parameter "stream"
    .parameter "maxResolutionX"
    .parameter "maxResolutionY"

    .prologue
    .line 115
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 118
    mul-int v0, p1, p2

    .line 119
    .local v0, maxNumOfPixels:I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 120
    .local v1, minSideLength:I
    invoke-static {v2, v1, v0}, Lcom/ecareme/pixwe/media/Utils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    return v3
.end method

.method public static final createFilePathFromCrc64(JI)Ljava/lang/String;
    .locals 2
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ecareme/pixwe/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createFromCache(JI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 322
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 324
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 325
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 326
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    .line 327
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 332
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v4

    .line 331
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 332
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "maxResolutionX"
    .parameter "maxResolutionY"
    .parameter "cacheId"
    .parameter "connectionManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 127
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 129
    const-wide/16 v0, 0x0

    .line 130
    .local v0, crc64:J
    const/4 v0, 0x0

    .line 131
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "content"

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    move-wide p4, p4

    .local p4, crc64:J
    move-wide v0, p4

    .line 137
    .end local p4           #crc64:J
    .local v0, crc64:J
    :goto_0
    invoke-static {v0, v1, p2}, Lcom/ecareme/pixwe/media/UriTexture;->createFromCache(JI)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 138
    .local p4, bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_1

    move-object p0, p4

    .end local p4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object p1, p4

    .line 196
    .end local p1
    .end local p3
    :goto_1
    return-object p1

    .line 135
    .end local v0           #crc64:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .local p4, cacheId:J
    :cond_0
    invoke-static {p1}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide p4

    .local p4, crc64:J
    move-wide v0, p4

    .end local p4           #crc64:J
    .restart local v0       #crc64:J
    goto :goto_0

    .line 141
    .local p4, bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const-string p5, "content"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_6

    const-string p5, "file://"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_6

    const/4 p5, 0x0

    move v2, p5

    .line 144
    .local v2, local:Z
    :goto_2
    const/4 p5, 0x0

    .line 145
    .local p5, bufferedInput:Ljava/io/BufferedInputStream;
    const-string p5, "content"

    .end local p5           #bufferedInput:Ljava/io/BufferedInputStream;
    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 146
    const-string p5, "file"

    invoke-virtual {p1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 148
    :cond_2
    new-instance p5, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x4000

    .line 148
    invoke-direct {p5, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 156
    .restart local p5       #bufferedInput:Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz p5, :cond_8

    .line 157
    invoke-static {p5, p2, p3}, Lcom/ecareme/pixwe/media/UriTexture;->computeSampleSize(Ljava/io/InputStream;II)I

    move-result p3

    .end local p3
    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    const/4 p3, 0x0

    .line 164
    .end local p5           #bufferedInput:Ljava/io/BufferedInputStream;
    .local p3, bufferedInput:Ljava/io/BufferedInputStream;
    const-string p3, "content"

    .end local p3           #bufferedInput:Ljava/io/BufferedInputStream;
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 165
    const-string p3, "file"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 167
    :cond_3
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 168
    .end local p0           #context:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p1, 0x4000

    .line 167
    invoke-direct {p3, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .restart local p3       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object p0, p3

    .line 175
    .end local p3           #bufferedInput:Ljava/io/BufferedInputStream;
    .local p0, bufferedInput:Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz p0, :cond_a

    .line 176
    const/4 p1, 0x0

    iput-boolean p1, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 177
    const/4 p1, 0x0

    iput-boolean p1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    new-instance p1, Lcom/ecareme/pixwe/media/UriTexture$1;

    const-string p3, "BitmapTimeoutThread"

    invoke-direct {p1, p3, v3}, Lcom/ecareme/pixwe/media/UriTexture$1;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 187
    .local p1, timeoutThread:Ljava/lang/Thread;
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 190
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 193
    .end local p1           #timeoutThread:Ljava/lang/Thread;
    .end local p4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_5
    iget p1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x1

    if-gt p1, p3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-eqz p0, :cond_5

    .line 194
    iget p1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int p1, p2, p1

    invoke-static {v0, v1, p0, p1}, Lcom/ecareme/pixwe/media/UriTexture;->writeToCache(JLandroid/graphics/Bitmap;I)V

    :cond_5
    move-object p1, p0

    .line 196
    goto/16 :goto_1

    .line 141
    .end local v2           #local:Z
    .local p0, context:Landroid/content/Context;
    .local p1, uri:Ljava/lang/String;
    .local p3, maxResolutionY:I
    .restart local p4       #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    const/4 p5, 0x1

    move v2, p5

    goto :goto_2

    .line 152
    .restart local v2       #local:Z
    :cond_7
    invoke-static {p1, p6}, Lcom/ecareme/pixwe/media/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;

    move-result-object p5

    .restart local p5       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 159
    :cond_8
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, p4

    .end local p4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 171
    .end local p3           #maxResolutionY:I
    .end local p5           #bufferedInput:Ljava/io/BufferedInputStream;
    .local p0, context:Landroid/content/Context;
    .restart local p4       #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    invoke-static {p1, p6}, Lcom/ecareme/pixwe/media/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;

    move-result-object p0

    .local p0, bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local p1           #uri:Ljava/lang/String;
    :cond_a
    move-object p0, p4

    .end local p4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_5
.end method

.method private static final createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;
    .locals 7
    .parameter "uri"
    .parameter "connectionManager"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, contentInput:Ljava/io/InputStream;
    if-nez p1, :cond_4

    .line 203
    :try_start_0
    new-instance p1, Ljava/net/URI;

    .end local p1
    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 204
    .local p1, url:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .end local p1           #url:Ljava/net/URL;
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 205
    .local p1, httpUrlConnection:Ljava/net/HttpURLConnection;
    const/16 v1, 0x7530

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 206
    const/16 v1, 0x7530

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 207
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 210
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 213
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    .local v1, rc:I
    const/4 v1, 0x0

    .local v1, redirects:I
    move v3, v1

    .end local v1           #redirects:I
    .local v3, redirects:I
    move-object v2, p1

    .end local p1           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    move-object p1, v0

    .line 218
    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p1, contentInput:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 223
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 224
    .end local p1           #contentInput:Ljava/io/InputStream;
    .restart local v0       #contentInput:Ljava/io/InputStream;
    const/4 p1, 0x0

    .line 225
    .local p1, redir:Z
    :try_start_2
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_9

    .line 226
    move-object v1, v2

    .line 227
    .local v1, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 228
    .local v4, stat:I
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_9

    const/16 v5, 0x133

    if-gt v4, v5, :cond_9

    const/16 v5, 0x132

    if-eq v4, v5, :cond_9

    const/16 v5, 0x130

    if-eq v4, v5, :cond_9

    .line 229
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    .line 230
    .local p1, base:Ljava/net/URL;
    const-string v2, "Location"

    .end local v2           #httpUrlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, loc:Ljava/lang/String;
    const/4 v4, 0x0

    .line 232
    .local v4, target:Ljava/net/URL;
    if-eqz v2, :cond_8

    .line 233
    new-instance v4, Ljava/net/URL;

    .end local v4           #target:Ljava/net/URL;
    invoke-direct {v4, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .restart local v4       #target:Ljava/net/URL;
    move-object p1, v4

    .line 235
    .end local v4           #target:Ljava/net/URL;
    .local p1, target:Ljava/net/URL;
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .end local v1           #http:Ljava/net/HttpURLConnection;
    const-string v2, "http"

    .end local v2           #loc:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    if-lt v3, v1, :cond_3

    .line 240
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .end local p1           #target:Ljava/net/URL;
    const-string v1, "illegal URL redirect"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    .end local v3           #redirects:I
    :catch_0
    move-exception p1

    move-object v6, p1

    move-object p1, v0

    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p1, contentInput:Ljava/io/InputStream;
    move-object v0, v6

    .line 251
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v1, "UriTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    const/4 p0, 0x0

    move-object v6, p1

    .end local p1           #contentInput:Ljava/io/InputStream;
    .local v6, contentInput:Ljava/io/InputStream;
    move-object p1, p0

    move-object p0, v6

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    .end local v6           #contentInput:Ljava/io/InputStream;
    .local p0, contentInput:Ljava/io/InputStream;
    :goto_3
    return-object p1

    .line 242
    .local v0, contentInput:Ljava/io/InputStream;
    .restart local v3       #redirects:I
    .local p0, uri:Ljava/lang/String;
    .local p1, target:Ljava/net/URL;
    :cond_3
    const/4 v1, 0x1

    .line 243
    .local v1, redir:Z
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .end local p1           #target:Ljava/net/URL;
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 244
    .local p1, httpUrlConnection:Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 246
    add-int/lit8 v2, v3, 0x1

    .line 217
    .end local v3           #redirects:I
    .local v2, redirects:I
    :goto_4
    if-nez v1, :cond_7

    move-object p0, v0

    .line 274
    .end local v0           #contentInput:Ljava/io/InputStream;
    .end local v1           #redir:Z
    .end local v2           #redirects:I
    .end local p1           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .local p0, contentInput:Ljava/io/InputStream;
    :goto_5
    if-eqz p0, :cond_5

    .line 275
    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p1, p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_3

    .line 257
    .restart local v0       #contentInput:Ljava/io/InputStream;
    .local p0, uri:Ljava/lang/String;
    .local p1, connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_4
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v2, Lcom/ecareme/pixwe/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 258
    .local v1, mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 p0, 0x0

    .line 262
    .local p0, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_4
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p1

    .line 263
    .end local p0           #httpResponse:Lorg/apache/http/HttpResponse;
    .local p1, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 264
    .local p0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_6

    .line 267
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object p0

    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p0, contentInput:Ljava/io/InputStream;
    goto :goto_5

    .line 269
    .restart local v0       #contentInput:Ljava/io/InputStream;
    .local p0, httpResponse:Lorg/apache/http/HttpResponse;
    .local p1, connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :catch_1
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    .end local p0           #httpResponse:Lorg/apache/http/HttpResponse;
    .local p1, httpResponse:Lorg/apache/http/HttpResponse;
    move-object p0, v6

    .line 270
    .local p0, e:Ljava/lang/Exception;
    :goto_6
    const-string p0, "UriTexture"

    .end local p0           #e:Ljava/lang/Exception;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #httpResponse:Lorg/apache/http/HttpResponse;
    const-string v1, "Request failed: "

    .end local v1           #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p0, contentInput:Ljava/io/InputStream;
    goto :goto_3

    .line 277
    .end local v2           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    .line 269
    .end local p0           #contentInput:Ljava/io/InputStream;
    .restart local v0       #contentInput:Ljava/io/InputStream;
    .restart local v1       #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local p1       #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception p0

    goto :goto_6

    .line 250
    .end local v0           #contentInput:Ljava/io/InputStream;
    .end local v1           #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    .restart local v3       #redirects:I
    .local p0, uri:Ljava/lang/String;
    .local p1, contentInput:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v3           #redirects:I
    .restart local v0       #contentInput:Ljava/io/InputStream;
    .restart local v1       #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, request:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, httpResponse:Lorg/apache/http/HttpResponse;
    :cond_6
    move-object p0, v0

    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p0, contentInput:Ljava/io/InputStream;
    goto :goto_5

    .restart local v0       #contentInput:Ljava/io/InputStream;
    .local v1, redir:Z
    .local v2, redirects:I
    .local p0, uri:Ljava/lang/String;
    .local p1, httpUrlConnection:Ljava/net/HttpURLConnection;
    :cond_7
    move v3, v2

    .end local v2           #redirects:I
    .restart local v3       #redirects:I
    move-object v2, p1

    .end local p1           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    move-object p1, v0

    .end local v0           #contentInput:Ljava/io/InputStream;
    .local p1, contentInput:Ljava/io/InputStream;
    goto/16 :goto_0

    .restart local v0       #contentInput:Ljava/io/InputStream;
    .local v1, http:Ljava/net/HttpURLConnection;
    .local v2, loc:Ljava/lang/String;
    .restart local v4       #target:Ljava/net/URL;
    .local p1, base:Ljava/net/URL;
    :cond_8
    move-object p1, v4

    .end local v4           #target:Ljava/net/URL;
    .local p1, target:Ljava/net/URL;
    goto/16 :goto_1

    .end local v1           #http:Ljava/net/HttpURLConnection;
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    .local p1, redir:Z
    :cond_9
    move v1, p1

    .end local p1           #redir:Z
    .local v1, redir:Z
    move-object p1, v2

    .end local v2           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .local p1, httpUrlConnection:Ljava/net/HttpURLConnection;
    move v2, v3

    .end local v3           #redirects:I
    .local v2, redirects:I
    goto :goto_4
.end method

.method public static invalidateCache(JI)V
    .locals 4
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    .line 386
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 389
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, fileC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v1           #fileC:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isCached(JI)Z
    .locals 5
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    const/4 v4, 0x0

    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, file:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 307
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v1

    .line 309
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    const/4 v2, 0x1

    .line 315
    :goto_0
    return v2

    .line 311
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/FileNotFoundException;
    move v2, v4

    .line 312
    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    move v2, v4

    .line 315
    goto :goto_0
.end method

.method public static writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 337
    invoke-static {p1}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    .line 338
    .local v4, crc64:J
    const/16 v0, 0x400

    invoke-static {v4, v5, v0}, Lcom/ecareme/pixwe/media/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/16 v2, 0x400

    const/16 v3, 0x400

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    .line 349
    .local p0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/16 p0, 0x400

    invoke-static {v4, v5, p0}, Lcom/ecareme/pixwe/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object p1

    .line 353
    .local p1, fileString:Ljava/lang/String;
    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local p0, file:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    .end local p1           #fileString:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_1

    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 357
    .local p2, newPath:Ljava/lang/String;
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local p1, newFile:Ljava/io/File;
    invoke-static {p0, p1}, Lcom/ecareme/pixwe/media/Utils;->Copy(Ljava/io/File;Ljava/io/File;)V

    move-object p0, p2

    .line 363
    .end local p0           #file:Ljava/io/File;
    .end local p1           #newFile:Ljava/io/File;
    .end local p2           #newPath:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 342
    .local p0, context:Landroid/content/Context;
    .local p1, uri:Ljava/lang/String;
    .local p2, path:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 343
    .local p0, e:Ljava/lang/OutOfMemoryError;
    const/4 p0, 0x0

    goto :goto_1

    .line 344
    .local p0, context:Landroid/content/Context;
    :catch_1
    move-exception p0

    .line 345
    .local p0, e:Ljava/io/IOException;
    const/4 p0, 0x0

    goto :goto_1

    .line 346
    .local p0, context:Landroid/content/Context;
    :catch_2
    move-exception p0

    .line 347
    .local p0, e:Ljava/net/URISyntaxException;
    const/4 p0, 0x0

    goto :goto_1

    .line 356
    .end local p1           #uri:Ljava/lang/String;
    .end local p2           #path:Ljava/lang/String;
    .local p0, file:Ljava/io/File;
    :cond_1
    const-string p2, "/"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 361
    .restart local p2       #path:Ljava/lang/String;
    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    .line 362
    .end local p0           #file:Ljava/io/File;
    .end local p2           #path:Ljava/lang/String;
    :catch_3
    move-exception p0

    .line 363
    .local p0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static writeToCache(JLandroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "crc64"
    .parameter "bitmap"
    .parameter "maxResolution"

    .prologue
    .line 368
    invoke-static {p0, p1, p3}, Lcom/ecareme/pixwe/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, file:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    .line 371
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, fileC:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 373
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 374
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x4000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 375
    .local v0, bos:Ljava/io/BufferedOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {p2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 376
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 377
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 378
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fileC:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    .line 403
    :cond_0
    return-void
.end method

.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "view"

    .prologue
    .line 283
    const/4 v7, 0x0

    .line 284
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v8, v7

    .line 297
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 287
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v1, Lcom/ecareme/pixwe/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lcom/ecareme/pixwe/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    const/16 v2, 0x400

    const/16 v3, 0x400

    iget-wide v4, p0, Lcom/ecareme/pixwe/media/UriTexture;->mCacheId:J

    iget-object v6, p0, Lcom/ecareme/pixwe/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-static/range {v0 .. v6}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v8, v7

    .line 297
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 293
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 294
    .local v9, e2:Ljava/lang/Exception;
    const-string v0, "UriTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load image from URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecareme/pixwe/media/UriTexture;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCacheId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/ecareme/pixwe/media/UriTexture;->mCacheId:J

    .line 111
    return-void
.end method
