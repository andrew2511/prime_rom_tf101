.class Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "QsbWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/QsbWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QsbWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;->this$0:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;Lcom/google/android/googlequicksearchbox/ui/QsbWebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;-><init>(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/QsbWebView$QsbWebChromeClient;->this$0:Lcom/google/android/googlequicksearchbox/ui/QsbWebView;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebView;->access$100(Lcom/google/android/googlequicksearchbox/ui/QsbWebView;)Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->shouldSendLocation()Z

    move-result v0

    .line 103
    .local v0, allowGeolocation:Z
    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 104
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
