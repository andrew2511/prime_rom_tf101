.class public Lcom/layar/SocialActionActivity;
.super Landroid/app/Activity;
.source "SocialActionActivity.java"


# static fields
.field public static final EXTRAS_EMAIL:Ljava/lang/String; = "Email"

.field public static final EXTRAS_FROM_SHARE_SCREEN:Ljava/lang/String; = "fromShareScreen"

.field public static final EXTRAS_IS_LOGIN:Ljava/lang/String; = "IsLogin"

.field public static final EXTRAS_SOCIAL_ACTION_TYPE:Ljava/lang/String; = "ActionType"

.field private static final MENU_SHOW_URL:I = 0x64

.field public static final RESULT_DENIED:I = 0xc

.field public static final RESULT_EMAIL_FAILED:I = 0xd

.field public static final RESULT_LINKED:I = 0xb

.field private static final SOCIAL_PATTERN:Ljava/lang/String; = "%socialname%"

.field private static final SUBACTIVITY_GET_EMAIL:I = 0x62

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final helper:Lcom/layar/ActivityHelper;

.field private isFromShareScreen:Z

.field private isLogin:Z

.field private mEmail:Ljava/lang/String;

.field private mLoadingPanel:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSocial:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/layar/SocialActionActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/SocialActionActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/SocialActionActivity;->helper:Lcom/layar/ActivityHelper;

    .line 62
    iput-boolean v1, p0, Lcom/layar/SocialActionActivity;->isLogin:Z

    .line 63
    iput-boolean v1, p0, Lcom/layar/SocialActionActivity;->isFromShareScreen:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/SocialActionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/layar/SocialActionActivity;->isFromShareScreen:Z

    return v0
.end method

.method static synthetic access$2(Lcom/layar/SocialActionActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/SocialActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/layar/SocialActionActivity;->getUserSettings()V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/SocialActionActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/SocialActionActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mLoadingPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/SocialActionActivity;)Lcom/layar/ActivityHelper;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->helper:Lcom/layar/ActivityHelper;

    return-object v0
.end method

.method private getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/layar/SocialActionActivity;->isLogin:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/social/SocialCommunicator;->getLoginURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, url:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 247
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/social/SocialCommunicator;->getConnectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #url:Ljava/lang/String;
    goto :goto_0
.end method

.method private getUserSettings()V
    .locals 4

    .prologue
    .line 253
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 255
    const v1, 0x7f090138

    invoke-virtual {p0, v1}, Lcom/layar/SocialActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string v2, "%socialname%"

    iget-object v3, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 259
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    new-instance v2, Lcom/layar/SocialActionActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/layar/SocialActionActivity$3;-><init>(Lcom/layar/SocialActionActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->requestUserSettings(Lcom/layar/data/user/UserManager$LoginHandler;)V

    .line 296
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    const v0, 0x7f0700e9

    invoke-virtual {p0, v0}, Lcom/layar/SocialActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/SocialActionActivity;->mLoadingPanel:Landroid/view/View;

    .line 236
    const v0, 0x7f0700ea

    invoke-virtual {p0, v0}, Lcom/layar/SocialActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/layar/SocialActionActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 237
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 238
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 239
    iget-object v0, p0, Lcom/layar/SocialActionActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 240
    return-void
.end method

.method private setupProgressBar(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 224
    new-instance v0, Lcom/layar/SocialActionActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/SocialActionActivity$2;-><init>(Lcom/layar/SocialActionActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 179
    const/16 v1, 0x62

    if-ne v1, p1, :cond_0

    .line 181
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 182
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/SocialActionActivity;->mEmail:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/layar/SocialActionActivity;->mEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    invoke-static {v2}, Lcom/layar/data/social/SocialCommunicator;->getLoginURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 193
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/layar/SocialActionActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/layar/SocialActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/layar/SocialActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ActionType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/SocialActionActivity;->mSocial:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/layar/SocialActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "IsLogin"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/layar/SocialActionActivity;->isLogin:Z

    .line 72
    invoke-virtual {p0}, Lcom/layar/SocialActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 73
    const-string v3, "fromShareScreen"

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/layar/SocialActionActivity;->isFromShareScreen:Z

    .line 76
    :cond_0
    const v2, 0x7f030067

    invoke-virtual {p0, v2}, Lcom/layar/SocialActionActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/layar/SocialActionActivity;->initComponents()V

    .line 80
    const v2, 0x7f0700e8

    invoke-virtual {p0, v2}, Lcom/layar/SocialActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    .line 82
    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lcom/layar/SocialActionActivity;->setupProgressBar(Landroid/webkit/WebView;)V

    .line 84
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 85
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 88
    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/layar/SocialActionActivity$1;

    invoke-direct {v3, p0}, Lcom/layar/SocialActionActivity$1;-><init>(Lcom/layar/SocialActionActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 161
    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 162
    .local v1, setting:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 163
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 167
    iget-object v2, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/layar/SocialActionActivity;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 212
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 214
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "original url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \\n url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    iget-object v3, p0, Lcom/layar/SocialActionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    return-void
.end method
