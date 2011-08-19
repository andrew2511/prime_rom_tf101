.class public Lcom/google/android/music/dl/OrderHandlerCreator;
.super Ljava/lang/Object;
.source "OrderHandlerCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicStreaming"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 24
    iget-object v0, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "MusicStreaming"

    sget-boolean v2, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 28
    return-void

    .line 24
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public createHandler(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/music/dl/MplayHandler;

    iget-object v1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/MplayHandler;-><init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->setHandler(Lcom/google/android/music/dl/DownloadHandler;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 32
    return-void
.end method
