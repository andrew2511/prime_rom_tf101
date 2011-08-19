.class public Lcom/google/android/googlequicksearchbox/ui/QsbWebView;
.super Landroid/webkit/WebView;
.source "QsbWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/QsbWebView$1;,
        Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;,
        Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;
    }
.end annotation


# instance fields
.field private mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

.field private mOnScrollListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;)Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->mLocationSettings:Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;-><init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;Lcom/google/android/googlequicksearchbox/ui/QsbWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 63
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->mOnScrollListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->mOnScrollListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;->onScrollChanged(IIII)V

    .line 75
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->mOnScrollListener:Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;

    .line 67
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method
