.class Lcom/google/android/street/PanoramaManager$ServerRequestListener;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Lcom/google/android/street/PanoramaRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerRequestListener"
.end annotation


# instance fields
.field private mCntConfigsReceived:I

.field private final mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

.field private final mPanoListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

.field private final mRetrievalKey:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/street/PanoramaManager;


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "configlistener"
    .parameter "panoListener"
    .parameter "retrievalKey"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->this$0:Lcom/google/android/street/PanoramaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mCntConfigsReceived:I

    .line 163
    iput-object p2, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    .line 164
    iput-object p3, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mPanoListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

    .line 165
    iput-object p4, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mRetrievalKey:Ljava/lang/Object;

    .line 166
    return-void
.end method


# virtual methods
.method public receivedDone(Ljava/lang/String;Z)V
    .locals 3
    .parameter "panoId"
    .parameter "isThrottled"

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mCntConfigsReceived:I

    if-eq v0, v2, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->this$0:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mRetrievalKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/street/PanoramaManager;->access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public receivedPanoramaConfig(Lcom/google/android/street/PanoramaConfig;Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "config"
    .parameter "configProto"

    .prologue
    .line 173
    iget v5, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mCntConfigsReceived:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mCntConfigsReceived:I

    .line 179
    iget-object v5, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mConfigListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6, p1}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/street/PanoramaConfig;->getPersistentKey()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, persistentKey:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 187
    .local v3, t0:J
    invoke-virtual {p2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    .line 193
    .local v0, data:[B
    iget-object v5, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->this$0:Lcom/google/android/street/PanoramaManager;

    invoke-static {v5}, Lcom/google/android/street/PanoramaManager;->access$100(Lcom/google/android/street/PanoramaManager;)Lcom/google/android/street/HttpCache;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/google/android/street/HttpCache;->saveToCache([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .end local v0           #data:[B
    .end local v3           #t0:J
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 195
    .local v1, e:Ljava/io/IOException;
    const-string v5, "PM failed to cache config"

    invoke-static {v5, v1}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 197
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "PM was interrupted caching config"

    invoke-static {v5}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public receivedPanoramaTile(Ljava/lang/String;IIII[B)V
    .locals 9
    .parameter "panoId"
    .parameter "zoom"
    .parameter "x"
    .parameter "y"
    .parameter "face"
    .parameter "tileData"

    .prologue
    .line 211
    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    .line 214
    .local v0, key:Lcom/google/android/street/PanoramaImageKey;
    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mPanoListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

    if-eqz v1, :cond_0

    .line 215
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 217
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 218
    const/4 v1, 0x0

    array-length v2, p6

    invoke-static {p6, v1, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 220
    .local v7, image:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->mPanoListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

    invoke-interface {v1, v0, v7}, Lcom/google/android/street/PanoramaManager$PanoFetchListener;->postPanoramaTileImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V

    .line 225
    .end local v7           #image:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$ServerRequestListener;->this$0:Lcom/google/android/street/PanoramaManager;

    invoke-static {v1}, Lcom/google/android/street/PanoramaManager;->access$100(Lcom/google/android/street/PanoramaManager;)Lcom/google/android/street/HttpCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaImageKey;->persistentCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p6, v2}, Lcom/google/android/street/HttpCache;->saveToCache([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 227
    .local v6, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM failed to cache tile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 229
    .local v6, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM was interrupted caching tile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
