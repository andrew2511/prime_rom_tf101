.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PsychicWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PsychicWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$700(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getQsbInstallJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 470
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "webView"
    .parameter "url"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$202(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Z)Z

    .line 384
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$200(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    sget-object v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$4;->$SwitchMap$com$google$android$googlequicksearchbox$google$psychic$PsychicWebViewController$State:[I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$400(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    monitor-exit v0

    .line 406
    return-void

    .line 387
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 393
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->WAIT_PSYCHIC_API:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$500(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 394
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$700(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$600(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Config;->getInitPsychicJavascript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$800(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$700(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getProbePsychicJavascript()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$800(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "webView"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$202(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Z)Z

    .line 372
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$400(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    if-eq v1, v2, :cond_0

    .line 374
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    sget-object v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;->LOADING_PSYCHIC_PAGE:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$500(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V

    .line 376
    :cond_0
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    .line 480
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 413
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 415
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v2, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/plain"

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$900()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 421
    .local v0, resp:Landroid/webkit/WebResourceResponse;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$1000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v0

    .line 433
    .end local v0           #resp:Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "webView"
    .parameter "url"

    .prologue
    .line 440
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 441
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$300(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;->launchExternalUri(Landroid/net/Uri;)V

    .line 446
    :cond_0
    const/4 v1, 0x1

    .line 449
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
