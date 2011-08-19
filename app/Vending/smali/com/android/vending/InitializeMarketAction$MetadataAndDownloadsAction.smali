.class Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/InitializeMarketAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataAndDownloadsAction"
.end annotation


# instance fields
.field private final mGetMarketMetadataService:Lcom/android/vending/api/GetMarketMetadataService;

.field private final mSendDeviceConfig:Z

.field private mUpdatedDeviceConfigurationHash:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/vending/InitializeMarketAction;


# direct methods
.method public constructor <init>(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;Z)V
    .locals 2
    .parameter
    .parameter "baseActivity"
    .parameter "sendConfig"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->this$0:Lcom/android/vending/InitializeMarketAction;

    .line 184
    invoke-direct {p0, p2}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 185
    iget-object v0, p2, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 187
    .local v0, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v1, Lcom/android/vending/api/GetMarketMetadataService;

    invoke-direct {v1, v0}, Lcom/android/vending/api/GetMarketMetadataService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mGetMarketMetadataService:Lcom/android/vending/api/GetMarketMetadataService;

    .line 188
    iput-boolean p3, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mSendDeviceConfig:Z

    .line 189
    return-void
.end method

.method private abortOnServerError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error in InitializeMarketAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->cancel()V

    .line 279
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->this$0:Lcom/android/vending/InitializeMarketAction;

    iget-object v1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-static {v0, v1}, Lcom/android/vending/InitializeMarketAction;->access$200(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->abortOnServerError(Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method

.method public displayResults()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 202
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->this$0:Lcom/android/vending/InitializeMarketAction;

    invoke-static {v10}, Lcom/android/vending/InitializeMarketAction;->access$000(Lcom/android/vending/InitializeMarketAction;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/vending/InitializeMarketAction;->access$100(J)Z

    move-result v10

    if-nez v10, :cond_0

    .line 204
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->this$0:Lcom/android/vending/InitializeMarketAction;

    iget-object v11, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-static {v10, v11}, Lcom/android/vending/InitializeMarketAction;->access$200(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;)V

    .line 269
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mGetMarketMetadataService:Lcom/android/vending/api/GetMarketMetadataService;

    invoke-virtual {v10}, Lcom/android/vending/api/GetMarketMetadataService;->getResponse()Lcom/android/vending/model/GetMarketMetadataResponse;

    move-result-object v7

    .line 210
    .local v7, metadataResponse:Lcom/android/vending/model/GetMarketMetadataResponse;
    if-nez v7, :cond_1

    .line 212
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Null metadata response."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->abortOnServerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v7}, Lcom/android/vending/model/GetMarketMetadataResponse;->getWarningMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/InitializeMarketAction;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v10}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v9

    .line 224
    .local v9, vendingApplication:Lcom/android/vending/VendingApplication;
    invoke-virtual {v9, v7}, Lcom/android/vending/VendingApplication;->updateMetadata(Lcom/android/vending/model/GetMarketMetadataResponse;)V

    .line 226
    invoke-virtual {v7}, Lcom/android/vending/model/GetMarketMetadataResponse;->getLatestClientVersionCode()I

    move-result v4

    .line 227
    .local v4, latestVersionCode:I
    invoke-static {v1, v12}, Lcom/android/vending/api/GetMarketMetadataService;->getMarketPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 229
    .local v5, marketPackageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_2

    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v10, v4, :cond_3

    .line 231
    :cond_2
    invoke-virtual {v7}, Lcom/android/vending/model/GetMarketMetadataResponse;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, latestClientUrl:Ljava/lang/String;
    new-instance v10, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;

    invoke-direct {v10, p0, v1, v3}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;-><init>(Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->start()V

    .line 241
    .end local v3           #latestClientUrl:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/android/vending/model/GetMarketMetadataResponse;->hasBillingParameters()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 242
    new-instance v10, Lcom/android/vending/api/BillingParametersService;

    invoke-direct {v10}, Lcom/android/vending/api/BillingParametersService;-><init>()V

    invoke-virtual {v7}, Lcom/android/vending/model/GetMarketMetadataResponse;->getBillingParameters()Lcom/android/vending/model/BillingParameter$BillingParameterSet;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/android/vending/api/BillingParametersService;->saveBillingParameters(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)V

    .line 247
    :cond_4
    invoke-virtual {v9}, Lcom/android/vending/VendingApplication;->getVersionCode()I

    move-result v6

    .line 248
    .local v6, marketVersion:I
    sget-object v10, Lcom/android/vending/util/VendingPreferences;->RECONCILED_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 249
    .local v8, reconciledVersion:I
    if-eq v6, v8, :cond_6

    const/4 v10, 0x1

    move v2, v10

    .line 251
    .local v2, fullReconcileNeeded:Z
    :goto_1
    invoke-virtual {v9}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v11, 0x0

    invoke-static {v0, v10, v2, v11}, Lcom/android/vending/InitializeMarketAction;->reconstructDatabase(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/ArrayList;)V

    .line 257
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mUpdatedDeviceConfigurationHash:Ljava/lang/Integer;

    if-eqz v10, :cond_5

    .line 258
    sget-object v10, Lcom/android/vending/util/VendingPreferences;->DEVICE_CONFIGURATION_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    iget-object v11, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mUpdatedDeviceConfigurationHash:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 263
    :cond_5
    sget-object v10, Lcom/android/vending/util/VendingPreferences;->SEND_CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->remove()V

    .line 266
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v10

    new-instance v11, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;

    invoke-direct {v11}, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 268
    iget-object v10, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->this$0:Lcom/android/vending/InitializeMarketAction;

    iget-object v11, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-static {v10, v11}, Lcom/android/vending/InitializeMarketAction;->access$200(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;)V

    goto/16 :goto_0

    .end local v0           #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #fullReconcileNeeded:Z
    :cond_6
    move v2, v12

    .line 249
    goto :goto_1
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mGetMarketMetadataService:Lcom/android/vending/api/GetMarketMetadataService;

    iget-object v1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mSendDeviceConfig:Z

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/GetMarketMetadataService;->constructAndQueueRequest(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->mUpdatedDeviceConfigurationHash:Ljava/lang/Integer;

    .line 197
    return-void
.end method
