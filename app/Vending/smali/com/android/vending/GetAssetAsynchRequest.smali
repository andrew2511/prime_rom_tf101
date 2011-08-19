.class public Lcom/android/vending/GetAssetAsynchRequest;
.super Ljava/lang/Object;
.source "GetAssetAsynchRequest.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAsset:Lcom/android/vending/model/Asset;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 1
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    .line 35
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAccount:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/vending/GetAssetAsynchRequest;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private sendInstallIntent(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 9
    .parameter "installInfo"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, installIntent:Landroid/content/Intent;
    const-string v1, "INSTALL_ASSET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "from"

    const-string v2, "google.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "assetid"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "asset_name"

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "asset_package"

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "asset_blob_url"

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "asset_signature"

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "asset_size"

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "asset_type"

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "user_email"

    iget-object v2, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "asset_version_code"

    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "asset_refundtimeout"

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_1
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const-string v1, "asset_is_forward_locked"

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    const-string v1, "asset_secure"

    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_3
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string v1, "download_auth_cookie_name"

    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_4
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    const-string v1, "download_auth_cookie_value"

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/android/vending/GetAssetAsynchRequest;->mContext:Landroid/content/Context;

    const-string v2, "com.android.vending.INTENT_VENDING_ONLY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 11
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 44
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v8}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, id:Ljava/lang/String;
    new-instance v4, Lcom/android/vending/model/GetAssetRequest;

    invoke-direct {v4}, Lcom/android/vending/model/GetAssetRequest;-><init>()V

    .line 47
    .local v4, request:Lcom/android/vending/model/GetAssetRequest;
    invoke-virtual {v4, v1}, Lcom/android/vending/model/GetAssetRequest;->setAssetId(Ljava/lang/String;)V

    .line 50
    sget-object v8, Lcom/android/vending/util/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v8}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, ddlKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v4, v0}, Lcom/android/vending/model/GetAssetRequest;->setDirectDownloadKey(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v7, Lcom/android/vending/api/GetAssetService;

    invoke-direct {v7, p1}, Lcom/android/vending/api/GetAssetService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 56
    .local v7, service:Lcom/android/vending/api/GetAssetService;
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAccount:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Lcom/android/vending/api/GetAssetService;->queueGetAssetRequest(Ljava/lang/String;Lcom/android/vending/model/GetAssetRequest;)V

    .line 59
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v8}, Lcom/android/vending/model/Asset;->getRefundTimeoutLong()Ljava/lang/Long;

    move-result-object v3

    .line 60
    .local v3, refundTimeout:Ljava/lang/Long;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    iget-object v9, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v9}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/vending/VendingApplication;->getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, referrer:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v2, v9}, Lcom/android/vending/model/Asset;->insertDownloadPendingIntoLocalDb(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v7}, Lcom/android/vending/api/GetAssetService;->getGetAssetResponse()Lcom/android/vending/model/GetAssetResponse;

    move-result-object v5

    .line 68
    .local v5, response:Lcom/android/vending/model/GetAssetResponse;
    invoke-virtual {v5}, Lcom/android/vending/model/GetAssetResponse;->getResponseProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 70
    .local v6, responseProto:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    iget-object v8, p0, Lcom/android/vending/GetAssetAsynchRequest;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1

    .line 72
    invoke-virtual {v6, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/vending/GetAssetAsynchRequest;->sendInstallIntent(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 75
    :cond_1
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 11
    .parameter "t"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, assetId:Ljava/lang/String;
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v7, v0}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 137
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 140
    .local v9, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, assetName:Ljava/lang/String;
    move-object v3, v8

    .line 142
    .local v3, notificationTitle:Ljava/lang/String;
    const v0, 0x7f070054

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v1, v10

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, notificationStatus:Ljava/lang/String;
    const v0, 0x7f070055

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, notificationMessage:Ljava/lang/String;
    const v0, 0x7f070079

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, dialogTitle:Ljava/lang/String;
    move-object v6, v4

    .line 150
    .local v6, dialogMessage:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/GetAssetAsynchRequest;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
