.class public Lcom/asus/vibe/api/IconCacher;
.super Ljava/lang/Object;
.source "IconCacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCancelledOrDone:Z

.field private mCont:Lcom/asus/vibe/item/VibeItem_Cont;

.field private mHandler:Landroid/os/Handler;

.field private mItemId:I


# direct methods
.method public constructor <init>(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V
    .locals 3
    .parameter "itemId"
    .parameter "cont"
    .parameter "handler"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe/api/IconCacher;->mCancelledOrDone:Z

    .line 32
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iput-object p2, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 34
    iput p1, p0, Lcom/asus/vibe/api/IconCacher;->mItemId:I

    .line 35
    iput-object p3, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/asus/vibe/api/IconCacher;->mItemId:I

    return v0
.end method

.method public isCancelledOrDone()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/vibe/api/IconCacher;->mCancelledOrDone:Z

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 57
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, bitmapResponse:[B
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 62
    .local v2, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v6, v6, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 65
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 66
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    .local v1, bm:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 68
    const-string v5, "ASUS@Vibe"

    const-string v6, "IconCacher: Can not decode bitmap!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 71
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/asus/vibe/api/IconCacher;->setDone()V

    goto :goto_0

    .line 73
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_4
    const/4 v1, 0x0

    .line 75
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v0, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    .line 76
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x99

    iget v8, p0, Lcom/asus/vibe/api/IconCacher;->mItemId:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 80
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 81
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ASUS@Vibe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IconCacher: Error happens during getting bitmap for index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/asus/vibe/api/IconCacher;->mItemId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCancelled()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/asus/vibe/api/IconCacher;->setDone()V

    .line 44
    return-void
.end method

.method public setDone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/asus/vibe/api/IconCacher;->mCont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 48
    iput-object v0, p0, Lcom/asus/vibe/api/IconCacher;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/vibe/api/IconCacher;->mCancelledOrDone:Z

    .line 50
    return-void
.end method
