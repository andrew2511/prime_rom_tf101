.class Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;
.super Landroid/os/Handler;
.source "ImageModeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ImageModeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 204
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.RenderHandler;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    .line 205
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 213
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.RenderHandler;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 219
    .local v5, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    .line 222
    .local v8, request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    monitor-enter v5

    .line 223
    :try_start_1
    invoke-virtual {v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .end local v5           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v8           #request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 215
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v12, "ImageModeRenderer"

    const-string v13, "bg thread missing metadata, skipping render request"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v5       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .restart local v8       #request:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    :cond_0
    :try_start_2
    iget-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v5, v12}, Lcom/google/android/apps/books/model/VolumeMetadata;->normalizePosition(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v12

    iput-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 225
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    const-string v12, "ImageModeRenderer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "position normalized to="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget v12, v12, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    sparse-switch v12, :sswitch_data_0

    .line 245
    iget-object v11, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 246
    .local v11, volumeId:Ljava/lang/String;
    iget-object v1, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    .line 247
    .local v1, account:Landroid/accounts/Account;
    iget-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v12, v12, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v12}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, pageId:Ljava/lang/String;
    iget-object v12, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 252
    .local v7, pageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    invoke-static {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "content_status"

    invoke-static {v12, v7, v13}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 253
    .local v10, status:I
    const/4 v12, 0x3

    if-ne v10, v12, :cond_1

    iget-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v12, v12, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 260
    .local v4, error:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    invoke-static {v12, v7, v11, v6, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 265
    :goto_1
    new-instance v9, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    iget-object v12, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v13, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-direct {v9, v12, v13, v2, v4}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    .line 267
    .local v9, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    invoke-static {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xc8

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 225
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #error:Ljava/lang/Exception;
    .end local v6           #pageId:Ljava/lang/String;
    .end local v7           #pageUri:Landroid/net/Uri;
    .end local v9           #result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    .end local v10           #status:I
    .end local v11           #volumeId:Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 232
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    iget-object v13, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 236
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    iget-object v13, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 240
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    iget-object v13, v8, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchSpecialState(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 261
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #error:Ljava/lang/Exception;
    .restart local v6       #pageId:Ljava/lang/String;
    .restart local v7       #pageUri:Landroid/net/Uri;
    .restart local v10       #status:I
    .restart local v11       #volumeId:Ljava/lang/String;
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 262
    .local v3, e:Ljava/lang/Exception;
    move-object v4, v3

    goto :goto_1

    .line 270
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #error:Ljava/lang/Exception;
    :cond_1
    const/4 v12, 0x1

    if-ne v10, v12, :cond_2

    .line 273
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "forbidden page not handled by preview gap logic"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v12, v0

    invoke-static {v12}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$300(Lcom/google/android/apps/books/render/ImageModeRenderer;)Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    move-result-object v12

    const/16 v13, 0x64

    invoke-virtual {v12, v13, v8}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        -0x2 -> :sswitch_2
        0x7fffffff -> :sswitch_1
    .end sparse-switch
.end method
