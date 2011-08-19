.class Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
.super Landroid/os/Handler;
.source "ImageModeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/ImageModeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 285
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.FetchHandler;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 295
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>.FetchHandler;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v16

    .line 296
    .local v16, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 302
    .local v17, metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    .line 304
    .local v18, normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v7, v0

    .line 305
    .local v7, volumeId:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    move-object v8, v0

    .line 306
    .local v8, account:Landroid/accounts/Account;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v19

    .line 307
    .local v19, pageId:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 309
    .local v6, pageUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 310
    .local v11, bitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 313
    .local v15, error:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 314
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v7

    move-object/from16 v2, v19

    move-object v3, v8

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/service/ContentFetchService;->fetchHighlightedPageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;

    move-result-object v12

    .line 316
    .local v12, content:Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    iget-object v9, v12, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;->encryptedData:[B

    iget-object v10, v12, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;->sessionKeyUri:Landroid/net/Uri;

    invoke-static/range {v5 .. v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$400(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 338
    .end local v6           #pageUri:Landroid/net/Uri;
    .end local v12           #content:Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;
    :goto_0
    new-instance v20, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    move-object v5, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;->cookie:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    move-object v3, v11

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    .line 340
    .local v20, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 342
    .end local v7           #volumeId:Ljava/lang/String;
    .end local v8           #account:Landroid/accounts/Account;
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #error:Ljava/lang/Exception;
    .end local v16           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v17           #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v18           #normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    .end local v19           #pageId:Ljava/lang/String;
    .end local v20           #result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 298
    .local v14, e:Ljava/lang/IllegalAccessException;
    const-string v5, "ImageModeRenderer"

    const-string v6, "bg thread missing metadata, skipping render request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v14           #e:Ljava/lang/IllegalAccessException;
    .restart local v6       #pageUri:Landroid/net/Uri;
    .restart local v7       #volumeId:Ljava/lang/String;
    .restart local v8       #account:Landroid/accounts/Account;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #error:Ljava/lang/Exception;
    .restart local v16       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v17       #metadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    .restart local v18       #normalized:Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,"Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest<TT;>;"
    .restart local v19       #pageId:Ljava/lang/String;
    :cond_0
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v7

    move-object/from16 v2, v19

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "content_status"

    invoke-static {v5, v6, v9}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 326
    .local v13, contentStatus:I
    const/4 v5, 0x3

    if-eq v13, v5, :cond_1

    .line 328
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "even after fetch, content still wasn\'t local"

    .end local v6           #pageUri:Landroid/net/Uri;
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    .end local v13           #contentStatus:I
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 335
    .local v14, e:Ljava/lang/Exception;
    move-object v15, v14

    goto :goto_0

    .line 332
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v6       #pageUri:Landroid/net/Uri;
    .restart local v13       #contentStatus:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->this$0:Lcom/google/android/apps/books/render/ImageModeRenderer;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto :goto_0
.end method
