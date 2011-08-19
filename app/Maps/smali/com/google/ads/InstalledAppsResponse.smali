.class public Lcom/google/ads/InstalledAppsResponse;
.super Ljava/lang/Object;
.source "InstalledAppsResponse.java"

# interfaces
.implements Lcom/google/ads/AdResponse;


# instance fields
.field private final mCommunicator:Lcom/google/ads/AdViewCommunicator;

.field private final mInstalledApps:Lcom/google/ads/InstalledApplications;


# direct methods
.method public constructor <init>(Lcom/google/ads/InstalledApplications;Lcom/google/ads/AdViewCommunicator;)V
    .locals 0
    .parameter "installedApps"
    .parameter "communicator"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/ads/InstalledAppsResponse;->mInstalledApps:Lcom/google/ads/InstalledApplications;

    .line 21
    iput-object p2, p0, Lcom/google/ads/InstalledAppsResponse;->mCommunicator:Lcom/google/ads/AdViewCommunicator;

    .line 22
    return-void
.end method


# virtual methods
.method public run(Ljava/util/Map;Lcom/google/ads/GoogleAdView;)V
    .locals 3
    .parameter
    .parameter "adView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/GoogleAdView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/ads/InstalledAppsResponse;->mInstalledApps:Lcom/google/ads/InstalledApplications;

    invoke-virtual {v1}, Lcom/google/ads/InstalledApplications;->getInstallationState()Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, state:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    invoke-virtual {p2}, Lcom/google/ads/GoogleAdView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_REPORT_INSTALL_STATE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    invoke-static {v1, v2, v0}, Lcom/google/ads/AdViewCommunicator;->sendJavaScriptMessage(Landroid/webkit/WebView;Lcom/google/ads/AdViewCommunicator$JsMessageAction;Ljava/util/List;)V

    .line 31
    return-void
.end method
