.class public Lcom/google/android/finsky/services/InAppBillingProxyService;
.super Landroid/app/Service;
.source "InAppBillingProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;,
        Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;
    }
.end annotation


# instance fields
.field private volatile mConnectedOrConnecting:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private volatile mRemoteStub:Lcom/android/vending/billing/IMarketBillingService;

.field private mStub:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field private mUidProvider:Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;

    invoke-direct {v0}, Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mUidProvider:Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;

    .line 45
    new-instance v0, Lcom/google/android/finsky/services/InAppBillingProxyService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/InAppBillingProxyService$1;-><init>(Lcom/google/android/finsky/services/InAppBillingProxyService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 57
    new-instance v0, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/InAppBillingProxyService$Stub;-><init>(Lcom/google/android/finsky/services/InAppBillingProxyService;Lcom/google/android/finsky/services/InAppBillingProxyService$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mStub:Lcom/android/vending/billing/IMarketBillingService$Stub;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/InAppBillingProxyService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mRemoteStub:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/services/InAppBillingProxyService;Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mRemoteStub:Lcom/android/vending/billing/IMarketBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/InAppBillingProxyService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnectedOrConnecting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/services/InAppBillingProxyService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnectedOrConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/services/InAppBillingProxyService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/InAppBillingProxyService;->verifyPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    iput-boolean v3, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnectedOrConnecting:Z

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/finsky/services/InAppBillingProxyService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 77
    .local v0, bindResult:Z
    if-nez v0, :cond_0

    .line 78
    const-string v1, "Failed to bind to MarketBillingService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->stopSelf()V

    .line 81
    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnectedOrConnecting:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    return-void
.end method

.method private verifyPackageName(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    iget-object v3, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mUidProvider:Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;

    invoke-virtual {v3}, Lcom/google/android/finsky/services/InAppBillingProxyService$UidProvider;->getCallingUid()I

    move-result v2

    .line 150
    .local v2, uid:I
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_0

    .line 157
    const-string v3, "package uid %s does not match caller\'s uid %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v6

    .line 161
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 151
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "cannot find package name: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v6

    .line 153
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    move v3, v7

    .line 161
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/services/InAppBillingProxyService;->mStub:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->bindService()V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    invoke-direct {p0}, Lcom/google/android/finsky/services/InAppBillingProxyService;->unbindService()V

    .line 69
    return-void
.end method
