.class Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;
.super Lcom/google/android/apps/books/widget/AbstractReaderBridge;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 368
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Bridge;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    .line 369
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/AbstractReaderBridge;-><init>(Landroid/os/Handler;)V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/os/Handler;Lcom/google/android/apps/books/render/WebViewRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 366
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Bridge;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getResourceContentUriOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "volumeId"
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Bridge;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSegmentContentOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "volumeId"
    .parameter "segmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Bridge;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"

    .prologue
    .line 374
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Bridge;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer$Bridge;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    .line 375
    return-void
.end method
