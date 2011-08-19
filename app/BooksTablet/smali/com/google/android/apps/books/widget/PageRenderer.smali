.class public Lcom/google/android/apps/books/widget/PageRenderer;
.super Ljava/lang/Object;
.source "PageRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/PageRenderer$Callback;
    }
.end annotation


# static fields
.field private static final MESSAGE_CONTENT_SETTLED:I = 0x39

.field private static final kRenderingDelayMillis:I = 0x3e8


# instance fields
.field private mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mNumActiveRenderings:I

.field private mPageProvider:Lcom/google/android/apps/books/widget/PageProvider;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/widget/PageProvider;Lcom/google/android/apps/books/widget/PageRenderer$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "pageProvider"
    .parameter "callback"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mPageProvider:Lcom/google/android/apps/books/widget/PageProvider;

    .line 37
    iput-object p3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mRequestQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized serviceNextRequest()V
    .locals 6

    .prologue
    const-string v3, ""

    .line 84
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    if-lez v3, :cond_1

    .line 85
    const-string v3, ""

    const-string v4, "PageRenderer.serviceNextRequest(): Renderer is busy. Waiting..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, head:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 91
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PageRenderer.serviceNextRequest(): Kicking off render of page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, page:I
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mPageProvider:Lcom/google/android/apps/books/widget/PageProvider;

    invoke-interface {v4, v2}, Lcom/google/android/apps/books/widget/PageProvider;->getDataUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    .local v1, message:Landroid/os/Message;
    const/16 v3, 0x39

    iput v3, v1, Landroid/os/Message;->what:I

    .line 100
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0           #head:Ljava/lang/Integer;
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #page:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    .local v0, result:Z
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageRenderer;->serviceNextRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return v0

    .line 65
    :pswitch_0
    :try_start_1
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PageRenderer.handleMessage(): Got rendered page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mNumActiveRenderings:I

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mCallback:Lcom/google/android/apps/books/widget/PageRenderer$Callback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageRenderer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/widget/PageRenderer$Callback;->onRenderFinished(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized renderPage(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageRenderer.renderPage(): Enqueueing request for page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageRenderer;->mRequestQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageRenderer;->serviceNextRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
