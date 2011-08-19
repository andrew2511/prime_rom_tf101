.class Landroid/webkit/WebView$MouseMotionEventHandler;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseMotionEventHandler"
.end annotation


# static fields
.field private static final PERFORM_UPDATE_DRAW_DELAY_TIME:I = 0x7d


# instance fields
.field private mLastX:F

.field private mLastY:F

.field mMouseMotionEventMonitor:Landroid/webkit/WebView$MouseMotionEventMonitor;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 4
    .parameter

    .prologue
    .line 6295
    iput-object p1, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6377
    new-instance v0, Landroid/webkit/WebView$MouseMotionEventMonitor;

    iget-object v1, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/WebView$MouseMotionEventMonitor;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mMouseMotionEventMonitor:Landroid/webkit/WebView$MouseMotionEventMonitor;

    .line 6296
    invoke-direct {p0}, Landroid/webkit/WebView$MouseMotionEventHandler;->getVersion()V

    .line 6297
    return-void
.end method

.method private getVersion()V
    .registers 1

    .prologue
    .line 6314
    return-void
.end method

.method private performUpdateDraw()V
    .registers 4

    .prologue
    .line 6370
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    if-nez v0, :cond_9

    .line 6374
    :goto_8
    return-void

    .line 6373
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method private performUpdateDrawDelay()V
    .registers 5

    .prologue
    const/16 v3, 0xe

    .line 6334
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6335
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6337
    :cond_13
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6338
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6339
    return-void
.end method

.method private performUpdateSelection()V
    .registers 8

    .prologue
    .line 6358
    iget-object v3, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)I

    move-result v3

    if-nez v3, :cond_9

    .line 6367
    :goto_8
    return-void

    .line 6362
    :cond_9
    iget-object v3, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget v4, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastX:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6363
    .local v0, contentX:I
    iget-object v3, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    iget v4, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastY:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6364
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNavSlop:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNavSlop:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNavSlop:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNavSlop:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6366
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    goto :goto_8
.end method


# virtual methods
.method public allowEvent(IJ)Z
    .registers 5
    .parameter "action"
    .parameter "time"

    .prologue
    .line 6317
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mMouseMotionEventMonitor:Landroid/webkit/WebView$MouseMotionEventMonitor;

    if-eqz v0, :cond_b

    .line 6318
    iget-object v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mMouseMotionEventMonitor:Landroid/webkit/WebView$MouseMotionEventMonitor;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView$MouseMotionEventMonitor;->allowEvent(IJ)Z

    move-result v0

    .line 6320
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public performLastMove()V
    .registers 3

    .prologue
    .line 6342
    iget v0, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastX:F

    iget v1, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastY:F

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView$MouseMotionEventHandler;->performMove(FF)V

    .line 6343
    return-void
.end method

.method public performMove(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6347
    iput p1, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastX:F

    .line 6348
    iput p2, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastY:F

    .line 6353
    invoke-direct {p0}, Landroid/webkit/WebView$MouseMotionEventHandler;->performUpdateSelection()V

    .line 6354
    invoke-direct {p0}, Landroid/webkit/WebView$MouseMotionEventHandler;->performUpdateDraw()V

    .line 6355
    return-void
.end method

.method public performMoveDelay(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6324
    iput p1, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastX:F

    .line 6325
    iput p2, p0, Landroid/webkit/WebView$MouseMotionEventHandler;->mLastY:F

    .line 6327
    invoke-direct {p0}, Landroid/webkit/WebView$MouseMotionEventHandler;->performUpdateDrawDelay()V

    .line 6328
    return-void
.end method
