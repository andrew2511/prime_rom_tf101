.class public Lcom/android/browser/NetworkStateHandler;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mController:Lcom/android/browser/Controller;

.field private mIsNetworkUp:Z

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 4
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    .line 49
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 59
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 60
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/android/browser/NetworkStateHandler$1;

    invoke-direct {v2, p0}, Lcom/android/browser/NetworkStateHandler$1;-><init>(Lcom/android/browser/NetworkStateHandler;)V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NetworkStateHandler;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 138
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method createAndShowNetworkDialog()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 134
    :cond_0
    return-void
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    return v0
.end method

.method onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz p1, :cond_3

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 104
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 114
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 115
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 109
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 110
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/browser/NetworkStateHandler;->createAndShowNetworkDialog()V

    goto :goto_1
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method onResume()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method
