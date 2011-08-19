.class Lcom/layar/DetailsViewActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DetailsViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/DetailsViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/DetailsViewActivity;


# direct methods
.method private constructor <init>(Lcom/layar/DetailsViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/DetailsViewActivity;Lcom/layar/DetailsViewActivity$CustomWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/layar/DetailsViewActivity$CustomWebViewClient;-><init>(Lcom/layar/DetailsViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 341
    const-string v1, "http://dev.layar.com/media/getbacktoapp.html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    .line 344
    .local v0, layerManager:Lcom/layar/data/layer/LayerManager;
    iget-object v1, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/DetailsViewActivity;->access$0(Lcom/layar/DetailsViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-virtual {v1}, Lcom/layar/DetailsViewActivity;->finish()V

    .line 364
    .end local v0           #layerManager:Lcom/layar/data/layer/LayerManager;
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 352
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/DetailsViewActivity;->access$1(Lcom/layar/DetailsViewActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 360
    const-string v1, "http://localhost/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/DetailsViewActivity;->access$1(Lcom/layar/DetailsViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    const v1, 0x7f090036

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 253
    :try_start_0
    const-string v8, "https"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v12

    .line 329
    :goto_0
    return v8

    .line 255
    :cond_0
    const-string v8, "http"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "http://m.layar.com/open/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v12

    .line 256
    goto :goto_0

    .line 257
    :cond_1
    const-string v8, "video://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 258
    const-string v8, "video://"

    const-string v9, "http://"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, video:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/layar/VideoActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v1, i:Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v8, v11

    .line 262
    goto :goto_0

    .line 263
    .end local v1           #i:Landroid/content/Intent;
    .end local v7           #video:Ljava/lang/String;
    :cond_2
    const-string v8, "audio://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 264
    const-string v8, "audio://"

    const-string v9, "http://"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .restart local v7       #video:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/layar/AudioActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v1       #i:Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v8, v11

    .line 268
    goto :goto_0

    .line 269
    .end local v1           #i:Landroid/content/Intent;
    .end local v7           #video:Ljava/lang/String;
    :cond_3
    const-string v8, "http://m.layar.com/open/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "layar://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 270
    :cond_4
    const-string v8, "http://m.layar.com/open/"

    const-string v9, "layar://"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 271
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, layerName:Ljava/lang/String;
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v8}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    .line 274
    .local v3, layerManager:Lcom/layar/data/layer/LayerManager;
    iget-object v8, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 276
    .local v0, currentLayer:Lcom/layar/data/layer/Layer20;
    if-eqz v0, :cond_9

    iget-object v8, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 277
    invoke-static {v6, v0}, Lcom/layar/data/layer/LayerHandler;->setFilters(Landroid/net/Uri;Lcom/layar/data/layer/Layer20;)V

    .line 278
    iget-object v8, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8, v6}, Lcom/layar/data/layer/LayerHandler;->setShareDialogData(Landroid/net/Uri;)V

    .line 280
    const-string v8, "action"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, refreshAction:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 282
    const-string v5, "refresh"

    .line 283
    :cond_5
    const-string v8, "refresh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 284
    iget-object v8, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v9, 0x1

    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    .line 290
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v8}, Lcom/layar/DetailsViewActivity;->access$0(Lcom/layar/DetailsViewActivity;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 291
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v8}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    .line 292
    :cond_7
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-virtual {v8}, Lcom/layar/DetailsViewActivity;->finish()V

    .end local v5           #refreshAction:Ljava/lang/String;
    :goto_2
    move v8, v11

    .line 297
    goto/16 :goto_0

    .line 285
    .restart local v5       #refreshAction:Ljava/lang/String;
    :cond_8
    const-string v8, "update"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 286
    iget-object v8, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    goto :goto_1

    .line 325
    .end local v0           #currentLayer:Lcom/layar/data/layer/Layer20;
    .end local v3           #layerManager:Lcom/layar/data/layer/LayerManager;
    .end local v4           #layerName:Ljava/lang/String;
    .end local v5           #refreshAction:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    move v8, v12

    .line 329
    goto/16 :goto_0

    .line 294
    .restart local v0       #currentLayer:Lcom/layar/data/layer/Layer20;
    .restart local v3       #layerManager:Lcom/layar/data/layer/LayerManager;
    .restart local v4       #layerName:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_9
    new-instance v8, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;

    iget-object v9, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;-><init>(Lcom/layar/DetailsViewActivity;Lcom/layar/DetailsViewActivity$LoadNewLayerTask;)V

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/net/Uri;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v8, v9}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 299
    .end local v0           #currentLayer:Lcom/layar/data/layer/Layer20;
    .end local v3           #layerManager:Lcom/layar/data/layer/LayerManager;
    .end local v4           #layerName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 300
    .restart local v6       #uri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/layar/LayarInternalHandler;->parseInternalUri(Landroid/net/Uri;)I

    move-result v2

    .line 301
    .local v2, internalResult:I
    if-eqz v2, :cond_b

    .line 302
    const/4 v8, 0x4

    if-eq v2, v8, :cond_b

    .line 303
    const/4 v8, 0x5

    if-eq v2, v8, :cond_b

    .line 304
    const/4 v8, 0x6

    if-eq v2, v8, :cond_b

    .line 305
    const/4 v8, 0x7

    if-ne v2, v8, :cond_d

    .line 307
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "youtube"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "?"

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_c

    .line 308
    const/4 v8, 0x0

    const-string v9, "?"

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 311
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .restart local v1       #i:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Choose application"

    invoke-static {v1, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1           #i:Landroid/content/Intent;
    :goto_3
    move v8, v11

    .line 323
    goto/16 :goto_0

    .line 315
    :cond_d
    if-ne v2, v11, :cond_f

    .line 316
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/layar/DetailsViewActivity;->setResult(I)V

    .line 321
    :cond_e
    :goto_4
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-virtual {v8}, Lcom/layar/DetailsViewActivity;->finish()V

    goto :goto_3

    .line 317
    :cond_f
    if-ne v2, v10, :cond_10

    .line 318
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/layar/DetailsViewActivity;->setResult(I)V

    goto :goto_4

    .line 319
    :cond_10
    if-ne v2, v10, :cond_e

    .line 320
    iget-object v8, p0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;->this$0:Lcom/layar/DetailsViewActivity;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/layar/DetailsViewActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method
