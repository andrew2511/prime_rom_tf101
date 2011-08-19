.class public Lcom/android/vending/DeclineAssetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeclineAssetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/DeclineAssetReceiver;->setResultCode(I)V

    .line 28
    :cond_0
    const-string v0, "decline_reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, declinedReasonStr:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 36
    .local v4, declinedReason:I
    :goto_0
    const-string v0, "assetid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, assetId:Ljava/lang/String;
    const-string v0, "asset_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, assetName:Ljava/lang/String;
    const-string v0, "show_notification"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 40
    .local v8, showNotification:Ljava/lang/Boolean;
    const-string v0, "Received DECLINE_ASSET tickle for asset ID %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v1, v5

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v5, 0x2

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {v6}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v2

    .line 43
    .local v2, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAssetDownloader()Lcom/android/vending/AssetDownloader;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/AssetDownloader;->downloadDeclined(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;Ljava/lang/String;IZ)V

    .line 48
    :cond_1
    return-void

    .line 33
    .end local v2           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v3           #assetName:Ljava/lang/String;
    .end local v4           #declinedReason:I
    .end local v6           #assetId:Ljava/lang/String;
    .end local v8           #showNotification:Ljava/lang/Boolean;
    :cond_2
    const/4 v4, -0x1

    .restart local v4       #declinedReason:I
    goto :goto_0
.end method
