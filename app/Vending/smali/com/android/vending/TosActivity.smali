.class public Lcom/android/vending/TosActivity;
.super Lcom/android/vending/BaseActivity;
.source "TosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/TosActivity$TosLoadAction;,
        Lcom/android/vending/TosActivity$TosWebViewClient;
    }
.end annotation


# static fields
.field private static sAlreadyAccepted:Z

.field private static sDisplayedTosVersion:Ljava/lang/String;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/TosActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/vending/TosActivity;->displayErrorAlertAndFinish()V

    return-void
.end method

.method static synthetic access$100(Z)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/vending/TosActivity;->isTosAccepted(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/TosActivity;)Lcom/android/vending/TosActivity$TosWebViewClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    return-object v0
.end method

.method private displayErrorAlertAndFinish()V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 242
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/TosActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method private static isTosAccepted(Z)Z
    .locals 1
    .parameter "storeDisplayVersion"

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method getTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/TosActivity$TosWebViewClient;
    .locals 1
    .parameter "progress"
    .parameter "tosDisplayView"
    .parameter "acceptButton"

    .prologue
    .line 158
    new-instance v0, Lcom/android/vending/TosActivity$TosWebViewClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/vending/TosActivity$TosWebViewClient;-><init>(Lcom/android/vending/TosActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    return-object v0
.end method

.method onClick(I)V
    .locals 1
    .parameter "viewId"

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->updateAcceptedTosVersion()V

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    .line 116
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->finish()V

    goto :goto_0

    .line 121
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->finish()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f08011e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->onClick(I)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f04005d

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setContentView(I)V

    .line 45
    const v2, 0x7f08011e

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, acceptButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    const v2, 0x7f08011f

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f0800ae

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 50
    .local v1, webView:Landroid/webkit/WebView;
    const v2, 0x7f080120

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08011c

    invoke-virtual {p0, v3}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/vending/TosActivity;->getTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/TosActivity$TosWebViewClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    .line 52
    iget-object v2, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->clearChainActions()V

    .line 59
    new-instance v2, Lcom/android/vending/TosActivity$TosLoadAction;

    invoke-direct {v2, p0}, Lcom/android/vending/TosActivity$TosLoadAction;-><init>(Lcom/android/vending/TosActivity;)V

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 60
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->startSetupActionChain(Z)V

    .line 63
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/vending/TosActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 65
    return-void

    :cond_0
    move v2, v4

    .line 60
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected startSetupActionChain(Z)V
    .locals 2
    .parameter "firstrun"

    .prologue
    .line 69
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    iget-object v1, p0, Lcom/android/vending/TosActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/TosActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->doRetry()V

    .line 74
    return-void
.end method

.method updateAcceptedTosVersion()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vending/TosActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 130
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 79
    return-void
.end method
