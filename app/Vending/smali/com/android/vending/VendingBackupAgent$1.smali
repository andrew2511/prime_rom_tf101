.class Lcom/android/vending/VendingBackupAgent$1;
.super Lcom/android/vending/api/RestoreApplicationsService;
.source "VendingBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/VendingBackupAgent;->restoreAccountApps(JLjava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/VendingBackupAgent;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$vendingApplication:Lcom/android/vending/VendingApplication;


# direct methods
.method constructor <init>(Lcom/android/vending/VendingBackupAgent;Lcom/android/vending/api/RequestManager;Ljava/util/concurrent/CountDownLatch;Lcom/android/vending/VendingApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/VendingBackupAgent$1;->this$0:Lcom/android/vending/VendingBackupAgent;

    iput-object p3, p0, Lcom/android/vending/VendingBackupAgent$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/vending/VendingBackupAgent$1;->val$vendingApplication:Lcom/android/vending/VendingApplication;

    iput-object p5, p0, Lcom/android/vending/VendingBackupAgent$1;->val$account:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/vending/api/RestoreApplicationsService;-><init>(Lcom/android/vending/api/RequestManager;)V

    return-void
.end method

.method private parseInstallAssetInfo(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/android/vending/model/DownloadInfo;
    .locals 21
    .parameter "installAsset"

    .prologue
    .line 149
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 151
    .local v18, signature:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v19

    .line 153
    .local v19, size:J
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 155
    .local v16, assetType:Ljava/lang/String;
    const/16 v3, 0xa

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v10, v3

    .line 159
    .local v10, fwdLocked:Z
    :goto_0
    const/16 v3, 0x9

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v11, v3

    .line 164
    .local v11, refundTimeout:Ljava/lang/Long;
    :goto_1
    const/16 v3, 0xb

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xb

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 169
    .local v17, secure:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingBackupAgent$1;->val$vendingApplication:Lcom/android/vending/VendingApplication;

    move-object v3, v0

    if-eqz v17, :cond_3

    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingBackupAgent$1;->val$account:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/vending/VendingApplication;->getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, authTokenStr:Ljava/lang/String;
    new-instance v3, Lcom/android/vending/model/DownloadInfo;

    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Lcom/android/vending/model/Asset$AssetType;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v9

    if-eqz v17, :cond_4

    const-string v13, "ANDROIDSECURE"

    :goto_4
    const-string v14, "backup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/VendingBackupAgent$1;->val$account:Ljava/lang/String;

    move-object v15, v0

    invoke-direct/range {v3 .. v15}, Lcom/android/vending/model/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Asset$AssetType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 155
    .end local v10           #fwdLocked:Z
    .end local v11           #refundTimeout:Ljava/lang/Long;
    .end local v12           #authTokenStr:Ljava/lang/String;
    .end local v17           #secure:Z
    :cond_0
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_0

    .line 159
    .restart local v10       #fwdLocked:Z
    :cond_1
    const/4 v3, 0x0

    move-object v11, v3

    goto/16 :goto_1

    .line 164
    .restart local v11       #refundTimeout:Ljava/lang/Long;
    :cond_2
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_2

    .line 169
    .restart local v17       #secure:Z
    :cond_3
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    goto :goto_3

    .line 173
    .restart local v12       #authTokenStr:Ljava/lang/String;
    :cond_4
    const-string v13, "ANDROID"

    goto :goto_4
.end method


# virtual methods
.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 10
    .parameter "request"
    .parameter "isCached"

    .prologue
    const/4 v9, 0x1

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   onResponse called with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/RestoreApplicationsService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/vending/VendingBackupAgent$1;->getResponse()Lcom/android/vending/model/RestoreApplicationsResponse;

    move-result-object v0

    .line 122
    .local v0, applicationsResponse:Lcom/android/vending/model/RestoreApplicationsResponse;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v5, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/DownloadInfo;>;"
    if-eqz v0, :cond_1

    .line 124
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/vending/model/RestoreApplicationsResponse;->getAssetCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/vending/model/RestoreApplicationsResponse;->getAssetAt(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 126
    .local v1, asset:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-virtual {v1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 129
    .local v6, installAsset:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v6}, Lcom/android/vending/VendingBackupAgent$1;->parseInstallAssetInfo(Lcom/google/common/io/protocol/ProtoBuf;)Lcom/android/vending/model/DownloadInfo;

    move-result-object v4

    .line 130
    .local v4, info:Lcom/android/vending/model/DownloadInfo;
    iget-object v7, p0, Lcom/android/vending/VendingBackupAgent$1;->this$0:Lcom/android/vending/VendingBackupAgent;

    invoke-static {v7, v6, v4}, Lcom/android/vending/VendingBackupAgent;->access$000(Lcom/android/vending/VendingBackupAgent;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4           #info:Lcom/android/vending/model/DownloadInfo;
    .end local v6           #installAsset:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v1           #asset:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v3           #i:I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/vending/model/DownloadInfo;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/vending/model/DownloadInfo;

    .line 138
    .local v2, downloadInfoArray:[Lcom/android/vending/model/DownloadInfo;
    new-instance v7, Lcom/android/vending/AssetDownloader;

    invoke-direct {v7}, Lcom/android/vending/AssetDownloader;-><init>()V

    iget-object v8, p0, Lcom/android/vending/VendingBackupAgent$1;->this$0:Lcom/android/vending/VendingBackupAgent;

    invoke-virtual {v7, v8, v2}, Lcom/android/vending/AssetDownloader;->downloadAndInstall(Landroid/content/Context;[Lcom/android/vending/model/DownloadInfo;)V

    .line 141
    iget-object v7, p0, Lcom/android/vending/VendingBackupAgent$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 142
    return-void
.end method
