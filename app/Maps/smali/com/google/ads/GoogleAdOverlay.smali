.class Lcom/google/ads/GoogleAdOverlay;
.super Landroid/widget/PopupWindow;
.source "GoogleAdOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/GoogleAdOverlay$AdContainer;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DIM_AMOUNT:F = 0.5f


# instance fields
.field private mAdContainer:Landroid/widget/FrameLayout;

.field private mParent:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "context"
    .parameter "parent"
    .parameter "webView"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/google/ads/GoogleAdOverlay;->mParent:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    .line 40
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdOverlay;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/GoogleAdOverlay;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/ads/GoogleAdOverlay;->sendOutsideTouchMessage(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/GoogleAdOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/ads/GoogleAdOverlay;->sendCloseMessage()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/ads/GoogleAdOverlay;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdOverlay;->setFocusable(Z)V

    .line 47
    new-instance v0, Lcom/google/ads/GoogleAdOverlay$AdContainer;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/GoogleAdOverlay$AdContainer;-><init>(Lcom/google/ads/GoogleAdOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdOverlay;->setContentView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method private sendCloseMessage()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 156
    invoke-direct {p0, v0, v0}, Lcom/google/ads/GoogleAdOverlay;->sendOutsideTouchMessage(II)V

    .line 157
    return-void
.end method

.method private sendOutsideTouchMessage(II)V
    .locals 9
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 116
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 117
    .local v4, viewLocation:[I
    iget-object v6, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 118
    const/4 v6, 0x0

    aget v2, v4, v6

    .line 119
    .local v2, leftPixels:I
    const/4 v6, 0x1

    aget v3, v4, v6

    .line 121
    .local v3, topPixels:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .local v5, windowDimensions:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/google/ads/GoogleAdOverlay;->mParent:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 123
    iget-object v6, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, dictionary:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "click_x"

    add-int v8, p1, v2

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "click_y"

    add-int v8, p2, v3

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "ad_x"

    invoke-static {v0, v2}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "ad_y"

    invoke-static {v0, v3}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "ad_width"

    iget-object v8, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "ad_height"

    iget-object v8, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "screen_width"

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v6, Lcom/google/ads/AdSpec$Parameter;

    const-string v7, "screen_height"

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/ads/AdUtil;->scalePixelsToDips(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v6, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    sget-object v7, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_OUTSIDE_CLICK_MESSAGE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    invoke-static {v6, v7, v1}, Lcom/google/ads/AdViewCommunicator;->sendJavaScriptMessage(Landroid/webkit/WebView;Lcom/google/ads/AdViewCommunicator$JsMessageAction;Ljava/util/List;)V

    .line 146
    return-void
.end method


# virtual methods
.method public addAndShowWebView(II)V
    .locals 2
    .parameter "leftPixels"
    .parameter "topPixels"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViews()V

    .line 185
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/ads/GoogleAdOverlay;->showAtLocation(Landroid/view/View;III)V

    .line 187
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViews()V

    .line 180
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay;->removeAllViews()V

    .line 175
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 176
    return-void
.end method

.method public dimBackground()V
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 199
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 206
    iget-object v2, p0, Lcom/google/ads/GoogleAdOverlay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 208
    .local v1, windowManager:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 171
    return-void
.end method

.method public removeAllViewsAndDismiss()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 166
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay;->dismiss()V

    .line 167
    return-void
.end method

.method public resize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdOverlay;->setWidth(I)V

    .line 161
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/ads/AdUtil;->scaleDipsToPixels(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdOverlay;->setHeight(I)V

    .line 162
    return-void
.end method
