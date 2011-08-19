.class Lcom/android/browser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Tab$8;,
        Lcom/android/browser/Tab$SubWindowChromeClient;,
        Lcom/android/browser/Tab$SubWindowClient;,
        Lcom/android/browser/Tab$ErrorDialog;,
        Lcom/android/browser/Tab$VoiceSearchData;,
        Lcom/android/browser/Tab$PageState;,
        Lcom/android/browser/Tab$LockIcon;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAppId:Ljava/lang/String;

.field private mChildTabs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseOnExit:Z

.field private mContainer:Landroid/view/View;

.field private mCurrentState:Lcom/android/browser/Tab$PageState;

.field private mDataController:Lcom/android/browser/DataController;

.field private mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mDownloadListener:Landroid/webkit/DownloadListener;

.field private mErrorConsole:Lcom/android/browser/ErrorConsoleView;

.field private mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

.field private mInForeground:Z

.field private mInPageLoad:Z

.field private mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

.field private mLoadStartTime:J

.field private mMainView:Landroid/webkit/WebView;

.field private mPageLoadProgress:I

.field private mParentTab:Lcom/android/browser/Tab;

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/Tab$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mScreenshot:Landroid/graphics/Bitmap;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewContainer:Landroid/view/View;

.field mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

.field private mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

.field private final mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebViewController:Lcom/android/browser/WebViewController;


# direct methods
.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "wvcontroller"
    .parameter "w"
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Lcom/android/browser/Tab$1;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$1;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 498
    new-instance v0, Lcom/android/browser/Tab$2;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$2;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 849
    new-instance v0, Lcom/android/browser/Tab$3;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$3;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 1785
    new-instance v0, Lcom/android/browser/Tab$7;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$7;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    .line 1295
    iput-object p1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 1296
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    .line 1297
    iput-boolean p3, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    .line 1298
    iput-object p4, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1299
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    .line 1300
    new-instance v0, Lcom/android/browser/Tab$PageState;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 1301
    iput-boolean v3, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1302
    iput-boolean v3, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1304
    new-instance v0, Lcom/android/browser/Tab$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$4;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 1312
    new-instance v0, Lcom/android/browser/Tab$5;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$5;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 1328
    invoke-virtual {p0, p2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1329
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/browser/Tab;->processNextError()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/Tab;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/browser/Tab;Lcom/android/browser/Tab$LockIcon;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->setLockIconType(Lcom/android/browser/Tab$LockIcon;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/Tab;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/Tab;Lcom/android/browser/Tab$PageState;)Lcom/android/browser/Tab$PageState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/Tab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/browser/Tab;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 5
    .parameter "err"
    .parameter "desc"

    .prologue
    .line 460
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 461
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    .line 464
    .local v0, d:Lcom/android/browser/Tab$ErrorDialog;
    iget v3, v0, Lcom/android/browser/Tab$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    .line 480
    .end local v0           #d:Lcom/android/browser/Tab$ErrorDialog;
    :cond_2
    :goto_0
    return-void

    .line 469
    :cond_3
    new-instance v1, Lcom/android/browser/Tab$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_4

    const v3, 0x7f0900fc

    :goto_1
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/Tab$ErrorDialog;-><init>(Lcom/android/browser/Tab;ILjava/lang/String;I)V

    .line 474
    .local v1, errDialog:Lcom/android/browser/Tab$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 477
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v3, :cond_2

    .line 478
    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0

    .line 469
    .end local v1           #errDialog:Lcom/android/browser/Tab$ErrorDialog;
    :cond_4
    const v3, 0x7f0900fb

    goto :goto_1
.end method

.method private setLockIconType(Lcom/android/browser/Tab$LockIcon;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p1, v0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    .line 1681
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->onUpdatedLockIcon(Lcom/android/browser/Tab;)V

    .line 1682
    return-void
.end method

.method private showError(Lcom/android/browser/Tab$ErrorDialog;)V
    .locals 4
    .parameter "errDialog"

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 484
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 489
    .local v0, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 492
    .end local v0           #d:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method activateVoiceSearchMode(Landroid/content/Intent;)V
    .locals 27
    .parameter "intent"

    .prologue
    .line 254
    const/16 v18, 0x0

    .line 255
    .local v18, index:I
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 257
    .local v23, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_4

    .line 258
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 260
    .local v26, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 262
    .local v17, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 267
    .local v11, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 268
    .local v24, size:I
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 269
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "improper extras passed in Intent"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 271
    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 275
    :cond_2
    const/16 v17, 0x0

    .line 276
    const/4 v11, 0x0

    .line 278
    :cond_3
    new-instance v5, Lcom/android/browser/Tab$VoiceSearchData;

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/Tab$VoiceSearchData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    const-string v6, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    sget-object v6, Lcom/android/browser/Tab$VoiceSearchData;->SOURCE_IS_GOOGLE:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 287
    .end local v11           #baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #size:I
    .end local v26           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v5, "intent_extra_data_key"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 289
    .local v15, extraData:Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 290
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_5

    .line 292
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "index must be less than size of mVoiceSearchResults"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 295
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v5, :cond_6

    .line 296
    new-instance v22, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v22, logIntent:Landroid/content/Intent;
    const-string v5, "extra_event"

    const/4 v6, 0x2

    move-object/from16 v0, v22

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v5, "index"

    move-object/from16 v0, v22

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    .end local v22           #logIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v5, :cond_7

    .line 308
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 309
    .local v21, latest:Landroid/content/Intent;
    const-string v5, "intent_extra_data_key"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 313
    .end local v21           #latest:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/android/browser/WebViewController;->activateVoiceSearchMode(Ljava/lang/String;)V

    .line 318
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 321
    .local v25, uriString:Ljava/lang/String;
    if-eqz v25, :cond_a

    .line 322
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 323
    .local v14, dataUri:Landroid/net/Uri;
    const-string v5, "inline"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_9

    move/from16 v6, v18

    :goto_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 331
    .local v6, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    move-object v5, v0

    const-string v7, "inline"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "utf-8"

    move-object v10, v6

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :goto_1
    return-void

    .line 328
    .restart local v14       #dataUri:Landroid/net/Uri;
    .restart local v25       #uriString:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    .line 340
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchUrls:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 346
    :cond_b
    const/16 v16, 0x0

    .line 347
    .local v16, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const/4 v5, 0x0

    move v13, v5

    .line 350
    .local v13, bundleIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 351
    .local v12, bundle:Landroid/os/Bundle;
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 352
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 353
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    .end local v16           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 354
    .restart local v16       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 355
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 356
    .local v20, key:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #bundleIndex:I
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_c
    move/from16 v13, v18

    .line 348
    goto :goto_2

    .line 360
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method addChildTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1469
    invoke-virtual {p1, p0}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    .line 1470
    return-void
.end method

.method closeOnExit()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    return v0
.end method

.method createSubWindow()Z
    .locals 4

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->createSubWindow(Lcom/android/browser/Tab;)V

    .line 1400
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClient;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1402
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowChromeClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/Tab$SubWindowChromeClient;-><init>(Lcom/android/browser/Tab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1406
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$6;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$6;-><init>(Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1419
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1420
    const/4 v0, 0x1

    .line 1422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1369
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 1371
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1372
    .local v0, webView:Landroid/webkit/WebView;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1373
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1375
    .end local v0           #webView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method dismissSubWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1429
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->endActionMode()V

    .line 1431
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 1433
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1434
    iput-object v2, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1435
    iput-object v2, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1437
    :cond_0
    return-void
.end method

.method getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getChildTabs()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    return-object v0
.end method

.method getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;
    .locals 2
    .parameter "createIfNecessary"

    .prologue
    .line 1654
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/browser/ErrorConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    .line 1656
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->setWebView(Landroid/webkit/WebView;)V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1588
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1589
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1591
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GeolocationPermissionsPrompt;

    iput-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    .line 1593
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->init()V

    .line 1595
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method getLoadProgress()I
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1693
    iget v0, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    .line 1695
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method getLockIconType()Lcom/android/browser/Tab$LockIcon;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    return-object v0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1619
    const-string v0, ""

    .line 1621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/browser/Tab;->mScreenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getSubViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method getSubWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1631
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1530
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getVoiceDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method inForeground()Z
    .locals 1

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method inPageLoad()Z
    .locals 1

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return v0
.end method

.method public isBookmarkedSite()Z
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInVoiceSearchMode()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 2

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1558
    .local v0, webView:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 1559
    const/4 v1, 0x0

    .line 1561
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1488
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1492
    :cond_0
    return-void
.end method

.method putInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1510
    invoke-virtual {p0}, Lcom/android/browser/Tab;->pause()V

    .line 1511
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1512
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1515
    :cond_0
    return-void
.end method

.method putInForeground()V
    .locals 2

    .prologue
    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1496
    invoke-virtual {p0}, Lcom/android/browser/Tab;->resume()V

    .line 1497
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1498
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1506
    return-void
.end method

.method removeFromTree()V
    .locals 3

    .prologue
    .line 1382
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 1384
    .local v1, t:Lcom/android/browser/Tab;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1388
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1391
    :cond_1
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 1764
    if-nez p1, :cond_0

    move v1, v2

    .line 1778
    :goto_0
    return v1

    .line 1769
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1770
    const-string v1, "closeonexit"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    .line 1771
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1772
    const-string v1, "screenshot"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/browser/Tab;->mScreenshot:Landroid/graphics/Bitmap;

    .line 1774
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1775
    .local v0, list:Landroid/webkit/WebBackForwardList;
    if-nez v0, :cond_1

    move v1, v2

    .line 1776
    goto :goto_0

    .line 1778
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method resume()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1479
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1483
    :cond_0
    return-void
.end method

.method public revertVoiceSearchMode()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 213
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->revertVoiceSearchMode(Lcom/android/browser/Tab;)V

    .line 217
    :cond_0
    return-void
.end method

.method saveState()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1733
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 1734
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move v2, v6

    .line 1757
    :goto_0
    return v2

    .line 1734
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1737
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1738
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1741
    .local v1, list:Landroid/webkit/WebBackForwardList;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    move-object v0, v2

    .line 1743
    .local v0, item:Landroid/webkit/WebHistoryItem;
    :goto_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "currentUrl"

    iget-object v4, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v4, v4, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "currentTitle"

    iget-object v4, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v4, v4, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "closeonexit"

    iget-boolean v4, p0, Lcom/android/browser/Tab;->mCloseOnExit:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1746
    iget-object v2, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1747
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "appid"

    iget-object v4, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_3

    .line 1751
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "parentTab"

    iget-object v4, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v4}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1754
    :cond_3
    iget-object v2, p0, Lcom/android/browser/Tab;->mScreenshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1755
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v3, "screenshot"

    iget-object v4, p0, Lcom/android/browser/Tab;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    move v2, v6

    .line 1757
    goto :goto_0

    .line 1741
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1611
    return-void
.end method

.method setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    .line 838
    return-void
.end method

.method setParentTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/browser/Tab;->mParentTab:Lcom/android/browser/Tab;

    .line 1449
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1450
    if-nez p1, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method setSavedState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1725
    return-void
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "screenshot"

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/android/browser/Tab;->mScreenshot:Landroid/graphics/Bitmap;

    .line 1800
    return-void
.end method

.method setSubViewContainer(Landroid/view/View;)V
    .locals 0
    .parameter "subViewContainer"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1582
    return-void
.end method

.method setSubWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "subView"

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1574
    return-void
.end method

.method setViewContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    .line 1545
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-ne v0, p1, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-eqz v0, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0, p1}, Lcom/android/browser/WebViewController;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 1349
    iput-object p1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1351
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1353
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1358
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1359
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    goto :goto_0
.end method

.method public updateBookmarkedStatus()V
    .locals 3

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/DataController;->queryBookmarkStatus(Ljava/lang/String;Lcom/android/browser/DataController$OnQueryUrlIsBookmark;)V

    .line 1783
    return-void
.end method

.method public voiceSearchSourceIsGoogle()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-boolean v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
