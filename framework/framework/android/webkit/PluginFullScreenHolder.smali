.class Landroid/webkit/PluginFullScreenHolder;
.super Landroid/app/Dialog;
.source "PluginFullScreenHolder.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private final mNpp:I

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter "webView"
    .parameter "npp"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030007

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    .line 43
    iput p2, p0, Landroid/webkit/PluginFullScreenHolder;->mNpp:I

    .line 44
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 82
    :goto_a
    return v0

    .line 80
    :cond_b
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 82
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 92
    :goto_a
    return v0

    .line 90
    :cond_b
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 92
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected onStop()V
    .registers 6

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 112
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 113
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_1c
    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0xb6

    iget v3, p0, Landroid/webkit/PluginFullScreenHolder;->mNpp:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 6
    .parameter "contentView"

    .prologue
    const/4 v3, -0x1

    .line 52
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1e

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    move-object v1, v0

    .line 61
    .local v1, sView:Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 62
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 65
    .end local v1           #sView:Landroid/view/SurfaceView;
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 66
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;

    .line 67
    return-void
.end method
