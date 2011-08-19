.class Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
.super Ljava/lang/Object;
.source "ArtDownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtDownloadTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtDownloadTask"


# instance fields
.field protected final LOGV:Z

.field private final mAlbumId:Ljava/lang/Long;

.field private mArtworkExists:Z

.field private mDownloadSuccessful:Z

.field private mLocalLocation:Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter "albumId"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string v0, "ArtDownloadTask"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 178
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    return-object v0
.end method

.method private streamFromCloud(Ljava/lang/String;)V
    .locals 9
    .parameter "remoteLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {v7}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {v8}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 206
    .local v0, albumArtClient:Landroid/net/http/AndroidHttpClient;
    iget-boolean v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    if-eqz v7, :cond_0

    .line 207
    const-string v7, "ArtDownloadTask-Curl"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 210
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v3, out:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 217
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 218
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 220
    const/16 v7, 0x2000

    new-array v1, v7, [B

    .line 221
    .local v1, buff:[B
    const/4 v5, 0x0

    .line 222
    .local v5, read:I
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 223
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    .end local v1           #buff:[B
    .end local v5           #read:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v7

    .line 228
    if-eqz v2, :cond_1

    .line 229
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 239
    :goto_2
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v7

    .line 225
    .restart local v1       #buff:[B
    .restart local v5       #read:I
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    if-eqz v2, :cond_3

    .line 229
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 239
    :goto_4
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 241
    return-void

    .line 231
    :catch_0
    move-exception v7

    goto :goto_3

    .line 236
    :catch_1
    move-exception v7

    goto :goto_4

    .line 231
    .end local v1           #buff:[B
    .end local v5           #read:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    goto :goto_1

    .line 236
    :catch_3
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 182
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/store/Store;->getRemoteArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, remoteLocation:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 185
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 188
    const-string v2, "ArtDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown albumId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$500(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    .line 196
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->streamFromCloud(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ArtDownloadTask"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wasDownloadSuccessful()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    return v0
.end method
