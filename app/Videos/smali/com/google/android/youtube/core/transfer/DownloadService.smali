.class public Lcom/google/android/youtube/core/transfer/DownloadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/DownloadService$1;,
        Lcom/google/android/youtube/core/transfer/DownloadService$BootReceiver;,
        Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "downloads.db"


# instance fields
.field private downloadOnWifiOnly:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->getDownloadOnWifiOnlyPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/transfer/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->downloadOnWifiOnly:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/core/transfer/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->downloadOnWifiOnly:Z

    return p1
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadOnWifiOnlyPreference()Z
    .locals 4

    .prologue
    .line 59
    const v2, 0x7f0c003c

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/transfer/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, wifiRestrictOption:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "download_policy"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, preference:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected createTask(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
    .locals 6
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/youtube/core/transfer/DownloadTask;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->networkUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/TransferTask$Listener;)V

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "downloads.db"

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onCreate()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferences:Landroid/content/SharedPreferences;

    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->getDownloadOnWifiOnlyPreference()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->downloadOnWifiOnly:Z

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;-><init>(Lcom/google/android/youtube/core/transfer/DownloadService;Lcom/google/android/youtube/core/transfer/DownloadService$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->preferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onDestroy()V

    .line 51
    return-void
.end method

.method protected shouldRun(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)Z
    .locals 1
    .parameter "transfer"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->downloadOnWifiOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
