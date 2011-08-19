.class public Lcom/android/browser/ScrollWebView;
.super Landroid/webkit/WebView;
.source "ScrollWebView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ScrollWebView$FloatFade;,
        Lcom/android/browser/ScrollWebView$ScrollListener;
    }
.end annotation


# instance fields
.field private mBackgroundRemoved:Z

.field private mFastScrollEnabled:Z

.field private mFastScroller:Lcom/android/browser/WebViewFastScroller;

.field private mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

.field private mHandler:Landroid/os/Handler;

.field private mIsCancelled:Z

.field private mQuickControlEnabled:Z

.field private mScrollListener:Lcom/android/browser/ScrollWebView$ScrollListener;

.field private mTitleBar:Lcom/android/browser/TitleBarBase;

.field private mUserInitiated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/android/browser/ScrollWebView;->init()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    .line 100
    invoke-direct {p0}, Lcom/android/browser/ScrollWebView;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 79
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcom/android/browser/ScrollWebView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/android/browser/ScrollWebView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ScrollWebView;)Lcom/android/browser/WebViewFastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/browser/ScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, p:Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    const-string v2, "fast_scroller"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, enabled:Z
    const-string v2, "ScrollWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init - PREF_FAST_SCROLLER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ScrollWebView;->setFastScrollEnabled(Landroid/content/SharedPreferences;Z)V

    .line 152
    const-string v2, "enable_quick_controls"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/ScrollWebView;->mQuickControlEnabled:Z

    .line 153
    const-string v2, "ScrollWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init - PREF_QUICK_CONTROLS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/browser/ScrollWebView;->mQuickControlEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mTitleBar:Lcom/android/browser/TitleBarBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mTitleBar:Lcom/android/browser/TitleBarBase;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarBase;->getEmbeddedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-boolean v3, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 283
    :cond_0
    iget v1, p0, Lcom/android/browser/ScrollWebView;->mScrollX:I

    .line 284
    .local v1, scrollX:I
    iget v2, p0, Lcom/android/browser/ScrollWebView;->mScrollY:I

    .line 287
    .local v2, scrollY:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 288
    .local v0, restoreCount:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    iget-object v3, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3, p1}, Lcom/android/browser/WebViewFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    .end local v0           #restoreCount:I
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_1
    iget-boolean v3, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/browser/ScrollWebView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 295
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/browser/ScrollWebView;->mBackgroundRemoved:Z

    .line 296
    new-instance v3, Lcom/android/browser/ScrollWebView$1;

    invoke-direct {v3, p0}, Lcom/android/browser/ScrollWebView$1;-><init>(Lcom/android/browser/ScrollWebView;)V

    invoke-virtual {p0, v3}, Lcom/android/browser/ScrollWebView;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_2
    return-void
.end method

.method protected onHitFocusedPlugin(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {p0}, Lcom/android/browser/ScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/browser/WebViewFastScroller;-><init>(Landroid/content/Context;Lcom/android/browser/ScrollWebView;)V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    .line 309
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setAlwaysShow(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-direct {v0, p0}, Lcom/android/browser/ScrollWebView$FloatFade;-><init>(Lcom/android/browser/ScrollWebView;)V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    const-string v0, "ScrollWebView"

    const-string v1, "Plugin touched and in STATE_NONE - Go to STATE_FLOATING for a while to show fast scroll thumb."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 319
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "ol"
    .parameter "ot"

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 269
    iget-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mIsCancelled:Z

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0, p0}, Lcom/android/browser/ScrollWebView;->post(Ljava/lang/Runnable;)Z

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mIsCancelled:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "p"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 249
    const-string v1, "fast_scroller"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "fast_scroller"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 251
    .local v0, enabled:Z
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ScrollWebView;->setFastScrollEnabled(Landroid/content/SharedPreferences;Z)V

    .line 252
    const-string v1, "ScrollWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --- PREF_FAST_SCROLLER changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0           #enabled:Z
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v1, "enable_quick_controls"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "enable_quick_controls"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/ScrollWebView;->mQuickControlEnabled:Z

    .line 255
    const-string v1, "ScrollWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --- PREF_QUICK_CONTROLS changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/browser/ScrollWebView;->mQuickControlEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iput-boolean v5, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    .line 216
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/browser/ScrollWebView;->mQuickControlEnabled:Z

    if-nez v1, :cond_5

    .line 218
    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v1}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 220
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 236
    :goto_1
    return v1

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v5, v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 213
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/WebViewFastScroller;->isPointInside(FFI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v1, p1}, Lcom/android/browser/WebViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 225
    .local v0, intercepted:Z
    if-eqz v0, :cond_5

    move v1, v5

    .line 226
    goto :goto_1

    .line 229
    .end local v0           #intercepted:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v1}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 230
    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v1}, Lcom/android/browser/WebViewFastScroller;->stop()V

    .line 231
    const-string v1, "ScrollWebView"

    const-string v2, "onTouchEvent - MotionEvent.ACTION_UP received outside fast scroller, abort fast scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 232
    goto :goto_1

    .line 236
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x5

    .line 118
    iget-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mIsCancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mScrollListener:Lcom/android/browser/ScrollWebView$ScrollListener;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mScrollListener:Lcom/android/browser/ScrollWebView$ScrollListener;

    invoke-virtual {p0}, Lcom/android/browser/ScrollWebView;->getVisibleTitleHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/browser/ScrollWebView;->mUserInitiated:Z

    invoke-interface {v0, v1, v2}, Lcom/android/browser/ScrollWebView$ScrollListener;->onScroll(IZ)V

    .line 121
    iget-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0, v3}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 126
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/android/browser/TitleBarBase;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/browser/ScrollWebView;->mTitleBar:Lcom/android/browser/TitleBarBase;

    .line 165
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/browser/ScrollWebView;->mScrollListener:Lcom/android/browser/ScrollWebView$ScrollListener;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p0}, Lcom/android/browser/ScrollWebView;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 182
    iput-boolean p2, p0, Lcom/android/browser/ScrollWebView;->mFastScrollEnabled:Z

    .line 184
    if-eqz p2, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {p0}, Lcom/android/browser/ScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/browser/WebViewFastScroller;-><init>(Landroid/content/Context;Lcom/android/browser/ScrollWebView;)V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    .line 187
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setAlwaysShow(Z)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/android/browser/ScrollWebView$FloatFade;

    invoke-direct {v0, p0}, Lcom/android/browser/ScrollWebView$FloatFade;-><init>(Lcom/android/browser/ScrollWebView;)V

    iput-object v0, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->stop()V

    .line 195
    iput-object v1, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    .line 196
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    if-eqz v0, :cond_1

    .line 197
    iput-object v1, p0, Lcom/android/browser/ScrollWebView;->mFloatFade:Lcom/android/browser/ScrollWebView$FloatFade;

    goto :goto_0
.end method

.method setScrollListener(Lcom/android/browser/ScrollWebView$ScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/browser/ScrollWebView;->mScrollListener:Lcom/android/browser/ScrollWebView$ScrollListener;

    .line 329
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarPosition(I)V

    .line 242
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/browser/ScrollWebView;->mFastScroller:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0, p1}, Lcom/android/browser/WebViewFastScroller;->setScrollbarPosition(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ScrollWebView;->mIsCancelled:Z

    .line 178
    invoke-super {p0}, Landroid/webkit/WebView;->stopScroll()V

    .line 179
    return-void
.end method
