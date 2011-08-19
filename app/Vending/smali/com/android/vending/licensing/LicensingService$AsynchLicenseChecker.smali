.class Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchLicenseChecker"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mCallingUid:I

.field private final mListener:Lcom/android/vending/licensing/ILicenseResultListener;

.field private final mNonce:J

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/vending/licensing/LicensingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/licensing/LicensingService;JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;I)V
    .locals 7
    .parameter
    .parameter "nonce"
    .parameter "packageName"
    .parameter "listener"
    .parameter "callingUid"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 61
    iput-wide p2, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mNonce:J

    .line 62
    iput-object p4, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    .line 64
    iput p6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mCallingUid:I

    .line 66
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v5

    invoke-interface {v5, p4}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 70
    .local v4, localAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/LocalAsset;

    .line 71
    .local v3, localAsset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v5

    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v5, v6, :cond_0

    .line 72
    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    iput-object v0, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    .line 79
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #localAsset:Lcom/android/vending/model/LocalAsset;
    :cond_1
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 80
    const-string v5, "Could not find appropriate account for licensing! Defaulting to current..."

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    .line 83
    :cond_2
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 9
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-virtual {v5}, Lcom/android/vending/licensing/LicensingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 94
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mCallingUid:I

    if-eq v5, v6, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v6, 0x103

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 98
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Lcom/android/vending/model/CheckLicenseRequest;

    invoke-direct {v2}, Lcom/android/vending/model/CheckLicenseRequest;-><init>()V

    .line 99
    .local v2, request:Lcom/android/vending/model/CheckLicenseRequest;
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/vending/model/CheckLicenseRequest;->setPackageName(Ljava/lang/String;)V

    .line 100
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Lcom/android/vending/model/CheckLicenseRequest;->setVersionCode(I)V

    .line 101
    iget-wide v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mNonce:J

    invoke-virtual {v2, v5, v6}, Lcom/android/vending/model/CheckLicenseRequest;->setNonce(J)V

    .line 102
    new-instance v4, Lcom/android/vending/api/CheckLicenseService;

    invoke-direct {v4, p1}, Lcom/android/vending/api/CheckLicenseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 103
    .local v4, service:Lcom/android/vending/api/CheckLicenseService;
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/android/vending/api/CheckLicenseService;->queueCheckLicense(Ljava/lang/String;Lcom/android/vending/model/CheckLicenseRequest;)V

    .line 105
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Lcom/android/vending/api/CheckLicenseService;->getCheckLicenseResponse()Lcom/android/vending/model/CheckLicenseResponse;

    move-result-object v3

    .line 108
    .local v3, response:Lcom/android/vending/model/CheckLicenseResponse;
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getSignedData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 110
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #request:Lcom/android/vending/model/CheckLicenseRequest;
    .end local v3           #response:Lcom/android/vending/model/CheckLicenseResponse;
    .end local v4           #service:Lcom/android/vending/api/CheckLicenseService;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 111
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v6, 0x102

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 113
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send license information to requesting app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v2, 0x101

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to tell requesting app about ERROR_CONTACTING_SERVER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
