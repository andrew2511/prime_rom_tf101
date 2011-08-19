.class public Lcom/google/android/gsf/login/BrowserAddAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BrowserAddAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;
.implements Lcom/google/android/gsf/login/WebAddAccountView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BrowserAddAccountActivity$3;,
        Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;,
        Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;
    }
.end annotation


# static fields
.field public static OAUTH_COOKIE_URL:Ljava/lang/String;

.field public static OAUTH_START_URL:Ljava/lang/String;


# instance fields
.field private final START_UPON_NETWORK_CONNECTION_DELAY:I

.field private final WAITING_FOR_NETWORK_TIMEOUT:I

.field private mAddPreExistingAccount:Z

.field private mBackButton:Landroid/view/MenuItem;

.field private mBackgroundTaskStarted:Z

.field private final mDelayedStart:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mErrorUI:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInteractivityCompleted:Z

.field private mProgressText:Landroid/widget/TextView;

.field private final mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

.field private final mTimeOutWaitingForNetwork:Ljava/lang/Runnable;

.field private mUiMode:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

.field private mUpdateAccount:Ljava/lang/String;

.field private mWaitingForNetwork:Z

.field private mWaitingForWifi:Z

.field private mWebAddAccountView:Lcom/google/android/gsf/login/WebAddAccountView;

.field private mWebProgressUI:Landroid/view/View;

.field private mWebUI:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;

.field webLoginStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken?btmpl=mobile"

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->OAUTH_START_URL:Ljava/lang/String;

    .line 67
    const-string v0, "https://www.google.com/"

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->OAUTH_COOKIE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 74
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUiMode:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    .line 85
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackgroundTaskStarted:Z

    .line 88
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForWifi:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    .line 98
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->WAITING_FOR_NETWORK_TIMEOUT:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;-><init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mTimeOutWaitingForNetwork:Ljava/lang/Runnable;

    .line 117
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->START_UPON_NETWORK_CONNECTION_DELAY:I

    .line 118
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$2;-><init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mDelayedStart:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/google/android/gsf/login/WebAddAccountSession;

    invoke-direct {v0}, Lcom/google/android/gsf/login/WebAddAccountSession;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    .line 145
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->webLoginStarted:Z

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/BrowserAddAccountActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Lcom/google/android/gsf/login/WebAddAccountSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Lcom/google/android/gsf/login/WebAddAccountView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebAddAccountView:Lcom/google/android/gsf/login/WebAddAccountView;

    return-object v0
.end method

.method private setUiModeAfterInteractivityCompleted()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mAddPreExistingAccount:Z

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f08006c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f08006b

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startGetRequestToken()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;-><init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$AsyncGetRequestToken;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    return-void
.end method


# virtual methods
.method protected createWidgets()V
    .locals 6

    .prologue
    .line 341
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    .line 342
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebUI:Landroid/view/View;

    .line 343
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mErrorUI:Landroid/view/View;

    .line 344
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebProgressUI:Landroid/view/View;

    .line 345
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mProgressText:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mErrorText:Landroid/widget/TextView;

    .line 348
    new-instance v0, Lcom/google/android/gsf/login/WebAddAccountView;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebProgressUI:Landroid/view/View;

    const v3, 0x7f0c0019

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/login/WebAddAccountView;-><init>(Landroid/webkit/WebView;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/google/android/gsf/login/WebAddAccountSession;Lcom/google/android/gsf/login/WebAddAccountView$Callback;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebAddAccountView:Lcom/google/android/gsf/login/WebAddAccountView;

    .line 352
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUiMode:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 564
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 359
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 360
    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 362
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 511
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 512
    sparse-switch p1, :sswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 514
    :sswitch_0
    if-nez p2, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startGetRequestToken()V

    goto :goto_0

    .line 517
    :cond_1
    if-ne p2, v0, :cond_0

    .line 520
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    goto :goto_0

    .line 526
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 527
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    goto :goto_0

    .line 531
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2711 -> :sswitch_2
    .end sparse-switch
.end method

.method public onAddAccountTaskComplete(ILcom/google/android/gsf/LoginData;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 478
    if-nez p1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    const-string v1, "loginData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 485
    const-string v1, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mAddPreExistingAccount:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 485
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 490
    :cond_2
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_ERROR:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setContentView(I)V

    .line 158
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "GoogleLoginService"

    const-string v1, "BrowserLogin - OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addPreExistingAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mAddPreExistingAccount:Z

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "targetAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->createWidgets()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->initViews()V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startWebLogin()V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_1
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    .line 177
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mTimeOutWaitingForNetwork:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const v0, 0x7f08000c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    .line 224
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    :cond_0
    const v0, 0x7f080015

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 228
    return v2
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 395
    return-void
.end method

.method public onInteractivityCompleted()V
    .locals 2

    .prologue
    .line 496
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "GoogleLoginService"

    const-string v1, "onInteractivityCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    if-eqz v0, :cond_1

    .line 507
    :goto_0
    return-void

    .line 503
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    .line 506
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiModeAfterInteractivityCompleted()V

    goto :goto_0
.end method

.method public onNetworkConnected()V
    .locals 4

    .prologue
    .line 184
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "GoogleLoginService"

    const-string v1, "onNetworkConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForNetwork:Z

    .line 193
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mDelayedStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    .line 250
    goto :goto_0

    .line 256
    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    move v0, v1

    .line 258
    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageLoadFinished(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 433
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageLoadFinished(): mInteractivityCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    if-nez v0, :cond_3

    .line 439
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/login/WebAddAccountSession;->isInitialPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 445
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 448
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackgroundTaskStarted:Z

    if-nez v0, :cond_1

    .line 452
    iput-boolean v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackgroundTaskStarted:Z

    .line 453
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 454
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mBackButton:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiModeAfterInteractivityCompleted()V

    .line 458
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountTask;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    sget-object v2, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN_SECRET:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/login/BrowserAddAccountTask;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gsf/login/BrowserAddAccountTask$Callback;Lcom/google/android/gsf/login/WebAddAccountSession;Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPageLoadStart(Z)V
    .locals 2
    .parameter "initialLoading"

    .prologue
    .line 427
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mInteractivityCompleted:Z

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebAddAccountView:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->stop()V

    .line 543
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 544
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 233
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 234
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 235
    .local v0, backMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 239
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 241
    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 202
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForWifi:Z

    if-eqz v0, :cond_0

    .line 203
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForWifi:Z

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startWebLogin()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->finish()V

    goto :goto_0
.end method

.method public onWebLoginError(Lcom/google/android/gsf/login/WebAddAccountView$Error;ILjava/lang/String;)V
    .locals 9
    .parameter "error"
    .parameter "code"
    .parameter "description"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 401
    const-string v3, "GoogleLoginService"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got web login error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gsf/login/WebAddAccountView$Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const v3, 0x7f080054

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, title:Ljava/lang/String;
    const-string v0, ""

    .line 407
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, offerWifi:Z
    sget-object v3, Lcom/google/android/gsf/login/WebAddAccountView$Error;->ConnectionError:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    if-ne p1, v3, :cond_2

    .line 409
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->isWifiOnlyBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080064

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    const/4 v1, 0x1

    .line 413
    iput-boolean v8, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWaitingForWifi:Z

    .line 422
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v1, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void

    .line 410
    :cond_1
    const v3, 0x7f080063

    goto :goto_0

    .line 414
    :cond_2
    sget-object v3, Lcom/google/android/gsf/login/WebAddAccountView$Error;->HttpError:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    if-ne p1, v3, :cond_3

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080057

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p3, v5, v8

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 417
    :cond_3
    sget-object v3, Lcom/google/android/gsf/login/WebAddAccountView$Error;->TooManyRedirects:Lcom/google/android/gsf/login/WebAddAccountView$Error;

    if-ne p1, v3, :cond_4

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080056

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 420
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V
    .locals 5
    .parameter "uiMode"
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 371
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUiMode:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    .line 372
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mErrorUI:Landroid/view/View;

    sget-object v2, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_ERROR:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    if-ne p1, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebProgressUI:Landroid/view/View;

    sget-object v2, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    if-ne p1, v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebUI:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 381
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    if-ne p1, v1, :cond_3

    const/4 v1, -0x1

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    if-eqz p2, :cond_0

    .line 385
    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    if-ne p1, v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_0
    :goto_3
    return-void

    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    move v2, v4

    .line 372
    goto :goto_0

    :cond_2
    move v2, v4

    .line 373
    goto :goto_1

    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move v1, v3

    .line 381
    goto :goto_2

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected shouldShowCustomTitle()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method protected startWebLogin()V
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->webLoginStarted:Z

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->webLoginStarted:Z

    .line 271
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "GoogleLoginService"

    const-string v1, "Starting web login"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mAddPreExistingAccount:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mUpdateAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 275
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mAddPreExistingAccount:Z

    if-eqz v0, :cond_3

    .line 276
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 282
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startGetRequestToken()V

    goto :goto_0

    .line 279
    :cond_3
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_4
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const v1, 0x7f080067

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->setUiMode(Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mWebAddAccountView:Lcom/google/android/gsf/login/WebAddAccountView;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/WebAddAccountSession;->getInitialUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/WebAddAccountView;->login(Ljava/lang/String;)V

    goto :goto_0
.end method
