.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 228
    .local v0, arguments:Landroid/os/Bundle;
    const-string v11, "filepath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, filePath:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 232
    :try_start_0
    const-string v11, "listener"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 233
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_1

    const/4 v11, 0x0

    move-object v5, v11

    .line 235
    .local v5, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "mimetype"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 236
    .local v8, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 237
    invoke-interface {v5, v4, v8}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v5           #listener:Landroid/media/IMediaScannerListener;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 282
    return-void

    .line 233
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v11

    move-object v5, v11

    goto :goto_0

    .line 240
    .end local v1           #binder:Landroid/os/IBinder;
    :cond_2
    const-string v11, "volume"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, volume:Ljava/lang/String;
    const/4 v2, 0x0

    .line 242
    .local v2, directories:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-static {v11}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v7, v11, v12

    .line 243
    .local v7, mountPoint:Ljava/lang/String;
    invoke-static {v7}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v10

    .line 245
    .local v10, volumeId:I
    const-string v11, "internal"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 247
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/media"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 250
    .restart local v2       #directories:[Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-static {v7}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v10

    .line 270
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 273
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-static {v11, v2, v9, v7, v10}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 277
    .end local v2           #directories:[Ljava/lang/String;
    .end local v7           #mountPoint:Ljava/lang/String;
    .end local v9           #volume:Ljava/lang/String;
    .end local v10           #volumeId:I
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 278
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "MediaScannerService"

    const-string v12, "Exception in handleMessage"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #directories:[Ljava/lang/String;
    .restart local v7       #mountPoint:Ljava/lang/String;
    .restart local v9       #volume:Ljava/lang/String;
    .restart local v10       #volumeId:I
    :cond_4
    :try_start_2
    const-string v11, "external"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 255
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-static {v11}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string v11, "mediaaction"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, mediaAction:Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 259
    const-string v11, "mountpoint"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v7, v2, v11

    .line 261
    .restart local v2       #directories:[Ljava/lang/String;
    const-string v11, "volumeid"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 263
    :cond_5
    if-eqz v6, :cond_3

    const-string v11, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 264
    const-string v11, "mountpoint"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    const/4 v2, 0x0

    .line 266
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v9, v7, v12, v13}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
