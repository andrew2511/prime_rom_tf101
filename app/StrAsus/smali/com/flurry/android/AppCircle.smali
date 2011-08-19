.class public Lcom/flurry/android/AppCircle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->addUserCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public clearUserCookies()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->clearUserCookies()V

    .line 56
    return-void
.end method

.method public getHook(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p1, p2, p3}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getOffer()Lcom/flurry/android/Offer;
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/flurry/android/AppCircle;->getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    return-object v0
.end method

.method public getOffer(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    return-object v0
.end method

.method public isLaunchCanvasOnBannerClicked()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->a()Z

    move-result v0

    return v0
.end method

.method public launchCanvasOnBannerClicked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->a(Z)V

    .line 11
    return-void
.end method

.method public openCatalog(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/AppCircle;->openCatalog(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public openCatalog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public setDefaultNoAdsMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setDefaultNoAdsMessage(Ljava/lang/String;)V

    .line 46
    return-void
.end method
