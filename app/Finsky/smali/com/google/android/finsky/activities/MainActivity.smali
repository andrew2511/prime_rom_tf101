.class public Lcom/google/android/finsky/activities/MainActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;
    }
.end annotation


# instance fields
.field cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mQuery:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mShouldShowMyCollectionsMenu:Z

.field private mShouldShowSearchMenu:Z

.field private mShouldShowShareMenu:Z

.field private mStateSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowSearchMenu:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowShareMenu:Z

    .line 112
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowMyCollectionsMenu:Z

    .line 120
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 1016
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$13;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->shareDocument()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/analytics/Analytics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/MainActivity;->changePurchaseState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/MainActivity;->createPurchaseStatusListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/google/android/finsky/activities/MainActivity;->handlePurchaseError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private changePurchaseState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V
    .locals 2
    .parameter "docId"
    .parameter "offerType"
    .parameter "stateChange"

    .prologue
    .line 802
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    .line 803
    .local v0, tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 804
    return-void
.end method

.method private configureUrlInterceptorsInBg(Lcom/google/android/finsky/model/ChannelList;)V
    .locals 2
    .parameter "channelList"

    .prologue
    .line 384
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/MainActivity$1;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/model/ChannelList;)V

    .line 394
    .local v0, r:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    .line 395
    return-void
.end method

.method private createFreeItemPurchaseListener(Ljava/lang/String;I)Lcom/android/volley/Response$Listener;
    .locals 1
    .parameter "docId"
    .parameter "offerType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/activities/MainActivity$9;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;I)V

    return-object v0
.end method

.method private createPaidItemPurchaseListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Response$Listener;
    .locals 7
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/activities/MainActivity$10;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method private createPurchaseErrorListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;
    .locals 6
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"

    .prologue
    .line 909
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$12;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/MainActivity$12;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createPurchaseStatusListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 6
    .parameter "docId"
    .parameter "docTitle"
    .parameter "offerType"
    .parameter "detailsUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/MainActivity$11;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getChannelId()I
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x3

    .line 476
    .local v0, channelId:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->getCurrentCollectionType()I

    move-result v0

    .line 479
    :cond_0
    return v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 402
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 404
    .local v0, currentIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, intentAction:Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->handleSearchIntent(Landroid/content/Intent;)V

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0
.end method

.method private handlePurchaseError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "errorTitle"
    .parameter "docTitle"
    .parameter "fullMessage"
    .parameter "briefMessage"
    .parameter "additionalInfoUrl"
    .parameter "detailsUrl"
    .parameter "offerType"
    .parameter "showRetryButton"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageUrl()Ljava/lang/String;

    move-result-object v7

    .line 961
    .local v7, currentPageUrl:Ljava/lang/String;
    if-eqz p6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 966
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "dialogTitle"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v0, "error"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v0, "detailsUrl"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v0, "offerType"

    invoke-virtual {v6, v0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    const-string v0, "showRetry"

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 971
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/activities/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 979
    .end local v6           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSearchIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 283
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, query:Ljava/lang/String;
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.google.android.finsky.RecentSuggestionProvider"

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 288
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/FinskyActionBar;->getLastSearchChannelId()I

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->search(Ljava/lang/String;IZ)V

    .line 295
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->matchUri(Ljava/lang/String;)Lcom/google/android/finsky/utils/UrlIntentFilter$Result;

    move-result-object v2

    .line 307
    .local v2, result:Lcom/google/android/finsky/utils/UrlIntentFilter$Result;
    if-nez v2, :cond_0

    .line 308
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    .line 338
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    invoke-static {p0, v4, v5}, Lcom/google/android/finsky/utils/IntentUtils;->isChannelEnabled(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .local v1, forwardIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    goto :goto_0

    .line 320
    .end local v1           #forwardIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/finsky/analytics/Analytics;->reportPageView(Ljava/lang/String;)V

    .line 322
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 323
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    iget-object v5, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->extra:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, detailsUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0           #detailsUrl:Ljava/lang/String;
    :cond_2
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 326
    iget-object v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->extra:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mQuery:Ljava/lang/String;

    .line 327
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mQuery:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->search(Ljava/lang/String;I)V

    goto :goto_0

    .line 328
    :cond_3
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->type:I

    if-ne v4, v6, :cond_4

    .line 329
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    iget v5, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/FinskyActionBar;->setChannelToLoad(I)V

    .line 330
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0

    .line 331
    :cond_4
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 332
    iget v4, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->corpus:I

    iget-object v5, v2, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;->extra:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0       #detailsUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4, v0, v3, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 335
    .end local v0           #detailsUrl:Ljava/lang/String;
    :cond_5
    const-string v4, "Unhandled URL %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    goto/16 :goto_0
.end method

.method private setupConsumptionAppMenuItem(Landroid/view/MenuItem;I)V
    .locals 1
    .parameter "item"
    .parameter "contentType"

    .prologue
    .line 437
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/MainActivity$2;-><init>(Lcom/google/android/finsky/activities/MainActivity;I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 450
    return-void
.end method

.method private setupDebugMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 484
    const v6, 0x7f0900c1

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 485
    .local v0, clearCache:Landroid/view/MenuItem;
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    new-instance v6, Lcom/google/android/finsky/activities/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/MainActivity$3;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 500
    const-string v6, "Select server"

    invoke-interface {p1, v7, v7, v7, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 502
    .local v4, serverMenu:Landroid/view/SubMenu;
    sget-object v6, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 503
    .local v3, name:Ljava/lang/String;
    invoke-interface {v4, v3}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 504
    .local v2, mi:Landroid/view/MenuItem;
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 505
    sget-object v6, Lcom/google/android/finsky/utils/FinskyDebug;->SERVER_INSTANCES:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 506
    .local v5, url:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/google/android/finsky/utils/FinskyDebug;->isServerSelected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 507
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 509
    :cond_0
    new-instance v6, Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {v6, p0, v5}, Lcom/google/android/finsky/activities/MainActivity$4;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 520
    .end local v2           #mi:Landroid/view/MenuItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setupNavigationError(ILjava/lang/String;Z)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1033
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/MainActivity$14;

    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/finsky/activities/MainActivity$14;-><init>(Lcom/google/android/finsky/activities/MainActivity;IZ)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setupPurchaseErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1063
    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1065
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1066
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1069
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1071
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/activities/MainActivity$15;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/MainActivity$15;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1084
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$16;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$16;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 1093
    if-eqz p6, :cond_0

    .line 1094
    const v2, 0x7f0b0036

    new-instance v3, Lcom/google/android/finsky/activities/MainActivity$17;

    invoke-direct {v3, p0, p4, p5}, Lcom/google/android/finsky/activities/MainActivity$17;-><init>(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1114
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1112
    :cond_0
    const v2, 0x7f0b0026

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private shareDocument()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 681
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 682
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 684
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f0b000a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 689
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 687
    :cond_0
    const-string v2, "Tried to share an item but there is no document active"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method public getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public handleAuthenticationError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 342
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, errorMessage:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Z)V

    .line 344
    return-void
.end method

.method public isStateSaved()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 728
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 729
    const/16 v5, 0xa

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 730
    if-nez p3, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    if-nez p2, :cond_2

    .line 737
    const-string v5, "error"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 738
    .local v17, errorMessage:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 741
    const-string v5, "doc"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/api/model/Document;

    .line 742
    .local v16, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v12

    .line 743
    .local v12, detailsUrl:Ljava/lang/String;
    const-string v5, "offerType"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 748
    .local v7, offerType:I
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v14, b:Landroid/os/Bundle;
    const-string v5, "error"

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v5, "detailsUrl"

    invoke-virtual {v14, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v5, "offerType"

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 754
    .end local v7           #offerType:I
    .end local v12           #detailsUrl:Ljava/lang/String;
    .end local v14           #b:Landroid/os/Bundle;
    .end local v16           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v17           #errorMessage:Ljava/lang/String;
    :cond_2
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 759
    const-string v5, "doc"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/api/model/Document;

    .line 760
    .restart local v16       #doc:Lcom/google/android/finsky/api/model/Document;
    const-string v5, "offerType"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 762
    .restart local v7       #offerType:I
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v18

    .line 763
    .local v18, needsCheckoutFlow:Z
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 764
    .local v10, docTitle:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v12

    .line 765
    .restart local v12       #detailsUrl:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    .line 768
    .local v6, docId:Ljava/lang/String;
    sget-object v5, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->changePurchaseState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 771
    if-eqz v18, :cond_3

    const/4 v5, 0x2

    if-ne v7, v5, :cond_4

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object v5, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity;->createFreeItemPurchaseListener(Ljava/lang/String;I)Lcom/android/volley/Response$Listener;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move v3, v7

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/MainActivity;->createPurchaseErrorListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v10

    .end local v10           #docTitle:Ljava/lang/String;
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 778
    .restart local v10       #docTitle:Ljava/lang/String;
    :cond_4
    const-string v5, "cart"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 779
    .local v15, cart:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move v3, v7

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/MainActivity;->createPurchaseErrorListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v13

    .line 781
    .local v13, errorListener:Lcom/android/volley/Response$ErrorListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object v5, v0

    move-object/from16 v8, p0

    move-object v9, v6

    move v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/activities/MainActivity;->createPaidItemPurchaseListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Response$Listener;

    move-result-object v7

    .end local v7           #offerType:I
    invoke-virtual {v5, v6, v15, v7, v13}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 785
    .end local v6           #docId:Ljava/lang/String;
    .end local v10           #docTitle:Ljava/lang/String;
    .end local v12           #detailsUrl:Ljava/lang/String;
    .end local v13           #errorListener:Lcom/android/volley/Response$ErrorListener;
    .end local v15           #cart:Ljava/lang/String;
    .end local v16           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v18           #needsCheckoutFlow:Z
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid PurchaseActivity result"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 787
    :cond_6
    const/16 v5, 0x1e

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_7

    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 788
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->restart(Landroid/accounts/Account;)V

    goto/16 :goto_0

    .line 791
    :cond_7
    invoke-super/range {p0 .. p3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onApisChanged()V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->init(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/Response$ErrorListener;)V

    .line 357
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    .line 675
    :cond_0
    return-void
.end method

.method protected onCleanup()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests()V

    .line 189
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 194
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->clear()V

    .line 198
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    .line 199
    .local v0, tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;
    invoke-virtual {v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->clearPendingPurchases()V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 156
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 157
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 158
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 160
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setContentView(I)V

    .line 161
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 162
    new-instance v0, Lcom/google/android/finsky/layout/FinskyActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/google/android/finsky/layout/FinskyActionBar;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/ActionBar;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    .line 164
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 983
    packed-switch p1, :pswitch_data_0

    .line 1013
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 986
    :pswitch_1
    const-string v0, ""

    .line 988
    if-eqz p2, :cond_1

    .line 989
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    const-string v1, "go_back"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 992
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->setupNavigationError(ILjava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 996
    :pswitch_2
    const-string v0, ""

    .line 997
    const-string v1, ""

    .line 998
    const-string v2, ""

    .line 1001
    if-eqz p2, :cond_0

    .line 1002
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    const-string v1, "detailsUrl"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    const-string v2, "dialogTitle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    const-string v3, "showRetry"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1006
    const-string v4, "offerType"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v6, v3

    move v5, v4

    move-object v4, v1

    move-object v3, v0

    :goto_2
    move-object v0, p0

    move v1, p1

    .line 1008
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/activities/MainActivity;->setupPurchaseErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v6, v3

    move-object v4, v1

    move-object v3, v0

    goto :goto_2

    :cond_1
    move-object v1, v0

    move v0, v3

    goto :goto_1

    .line 983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 20
    .parameter "menu"

    .prologue
    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 525
    .local v6, inflater:Landroid/view/MenuInflater;
    const/high16 v17, 0x7f0e

    move-object v0, v6

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 528
    const v17, 0x7f0900bb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 529
    .local v10, myCollection:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowMyCollectionsMenu:Z

    move/from16 v17, v0

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/FinskyActionBar;->getMyCollectionsName()Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 533
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getChannelId()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity;->setupConsumptionAppMenuItem(Landroid/view/MenuItem;I)V

    .line 536
    const v17, 0x7f0900ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 537
    .local v3, clearHistory:Landroid/view/MenuItem;
    new-instance v17, Lcom/google/android/finsky/activities/MainActivity$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/MainActivity$5;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 549
    const v17, 0x7f0900b9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 550
    .local v16, switchAccounts:Landroid/view/MenuItem;
    new-instance v17, Lcom/google/android/finsky/activities/MainActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/MainActivity$6;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 560
    const v17, 0x7f0900b8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 563
    .local v13, searchParent:Landroid/view/ViewGroup;
    const v17, 0x7f09004c

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 565
    .local v11, searchHolder:Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 566
    .local v8, menuContext:Landroid/content/Context;
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v17, 0x7f0d001d

    move-object v0, v9

    move-object v1, v8

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 568
    .local v9, menuDarkContext:Landroid/view/ContextThemeWrapper;
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 569
    .local v5, darkThemeInflater:Landroid/view/LayoutInflater;
    const v17, 0x7f04001b

    move-object v0, v5

    move/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 571
    const v17, 0x7f09004b

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SearchView;

    .line 572
    .local v14, searchView:Landroid/widget/SearchView;
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->setSearchViewWidget(Landroid/widget/SearchView;)V

    .line 574
    invoke-virtual {v14}, Landroid/widget/SearchView;->clearFocus()V

    .line 575
    const-string v17, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/SearchManager;

    .line 576
    .local v12, searchManager:Landroid/app/SearchManager;
    if-eqz v12, :cond_1

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v7

    .line 578
    .local v7, info:Landroid/app/SearchableInfo;
    invoke-virtual {v14, v7}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 583
    .end local v7           #info:Landroid/app/SearchableInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 585
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/MainActivity;->mQuery:Ljava/lang/String;

    .line 590
    :cond_2
    const v17, 0x7f0900bc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 591
    .local v15, shareMenuItem:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowShareMenu:Z

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    new-instance v17, Lcom/google/android/finsky/activities/MainActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/MainActivity$7;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 601
    const v17, 0x7f0900bd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;

    sget-object v19, Lcom/google/android/finsky/config/G;->purchaseHistoryUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #clearHistory:Landroid/view/MenuItem;
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 604
    const v17, 0x7f0900be

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 605
    .local v4, contentFilterItem:Landroid/view/MenuItem;
    new-instance v17, Lcom/google/android/finsky/activities/MainActivity$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/MainActivity$8;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 614
    sget-object v17, Lcom/google/android/finsky/config/G;->contentRatingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object v0, v4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 616
    const v17, 0x7f0900bf

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getChannelId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/utils/CorpusMetadata;->getHelpUrl(I)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 619
    const v17, 0x7f0900c0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/MainActivity;->getChannelId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/utils/CorpusMetadata;->getContactUsUrl(I)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/MainActivity$LaunchUrlMenuListener;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 623
    sget-object v17, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 624
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V

    .line 627
    :cond_3
    const/16 v17, 0x1

    return v17
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->terminate()V

    .line 243
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 1136
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, errorMessage:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Z)V

    .line 1138
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 250
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 651
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    move v0, v2

    .line 655
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->onPause()V

    .line 178
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 454
    const v4, 0x7f0900b8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 455
    .local v2, searchParent:Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowSearchMenu:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 457
    const v4, 0x7f0900bc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 458
    .local v3, share:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowShareMenu:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    const v4, 0x7f0900bb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 462
    .local v1, myCollection:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowMyCollectionsMenu:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    const/4 v0, 0x3

    .line 466
    .local v0, channelId:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    if-eqz v4, :cond_0

    .line 467
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FinskyActionBar;->getMyCollectionsName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 468
    iget-object v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FinskyActionBar;->getCurrentCollectionType()I

    move-result v0

    .line 470
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->setupConsumptionAppMenuItem(Landroid/view/MenuItem;I)V

    .line 471
    const/4 v4, 0x1

    return v4

    .line 455
    .end local v0           #channelId:I
    .end local v1           #myCollection:Landroid/view/MenuItem;
    .end local v3           #share:Landroid/view/MenuItem;
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onReady(Z)V
    .locals 2
    .parameter "shouldHandleIntent"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->deserialize(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 274
    return-void

    .line 268
    :cond_1
    if-eqz p1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRestart()V

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 205
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getTosJustAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->setTosJustAccepted(Z)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setupSessionForCorrectUser(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->serialize(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onStart()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 230
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onStop()V

    .line 237
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests()V

    .line 238
    return-void
.end method

.method protected onTocLoaded(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 365
    new-instance v0, Lcom/google/android/finsky/model/ChannelList;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/model/ChannelList;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 366
    .local v0, channelList:Lcom/google/android/finsky/model/ChannelList;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->setChannels(Lcom/google/android/finsky/model/ChannelList;)V

    .line 367
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->configureUrlInterceptorsInBg(Lcom/google/android/finsky/model/ChannelList;)V

    .line 370
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowSearchMenu:Z

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->showSearchMenu(Z)V

    .line 372
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->showMyCollectionsMenu(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 375
    :cond_0
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1125
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v1, "go_back"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1127
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1132
    :goto_0
    return-void

    .line 1129
    :cond_0
    const-string v0, "Unknown error with empty error message. Stack trace below:"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showMyCollectionsMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowMyCollectionsMenu:Z

    .line 668
    return-void
.end method

.method public showSearchMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowSearchMenu:Z

    .line 660
    return-void
.end method

.method public showShareMenu(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mShouldShowShareMenu:Z

    .line 664
    return-void
.end method

.method public startPurchase(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 702
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->skipPurchaseDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 705
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/finsky/activities/MainActivity;->changePurchaseState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 708
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p2}, Lcom/google/android/finsky/activities/MainActivity;->createFreeItemPurchaseListener(Ljava/lang/String;I)Lcom/android/volley/Response$Listener;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, p2, v5}, Lcom/google/android/finsky/activities/MainActivity;->createPurchaseErrorListener(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 720
    :goto_0
    return-void

    .line 716
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 718
    const-string v1, "offerType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
