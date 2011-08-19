.class public Lcom/android/vending/InstallAssetReceiver;
.super Lcom/android/vending/util/ServiceBroadcastReceiver;
.source "InstallAssetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vending/util/ServiceBroadcastReceiver;-><init>()V

    return-void
.end method

.method private getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "shouldSecure"
    .parameter "key"

    .prologue
    .line 252
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, assetDownloadUrl:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    return-object v0
.end method

.method private getDownloadInfo(Landroid/os/Bundle;Lcom/android/vending/VendingApplication;I)Lcom/android/vending/model/DownloadInfo;
    .locals 24
    .parameter "bundle"
    .parameter "vendingApplication"
    .parameter "index"

    .prologue
    .line 172
    if-nez p3, :cond_0

    const-string v22, ""

    move-object/from16 v21, v22

    .line 173
    .local v21, suffix:Ljava/lang/String;
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "assetid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, assetId:Ljava/lang/String;
    if-nez v5, :cond_1

    const/16 v22, 0x0

    .line 248
    :goto_1
    return-object v22

    .line 172
    .end local v5           #assetId:Ljava/lang/String;
    .end local v21           #suffix:Ljava/lang/String;
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v21, v22

    goto :goto_0

    .line 176
    .restart local v5       #assetId:Ljava/lang/String;
    .restart local v21       #suffix:Ljava/lang/String;
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_secure"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 180
    .local v20, shouldSecure:Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_auth_cookie_name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 181
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_auth_cookie_name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, authCookieName:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_auth_cookie_value"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, authCookieValue:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "user_email"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, account:Ljava/lang/String;
    if-nez v16, :cond_4

    .line 187
    const-string v22, "Server did not provide an account to associate with the download! Defaulting to current account."

    invoke-static/range {v22 .. v22}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v16

    .line 190
    if-nez v16, :cond_2

    .line 191
    const-string v22, "Current account is also null!"

    invoke-static/range {v22 .. v22}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    .line 213
    :cond_2
    :goto_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_blob_url"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/InstallAssetReceiver;->getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, assetDownloadUrl:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, assetName:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_package"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, packageName:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_signature"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 218
    .local v17, assetSignature:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 220
    .local v18, assetSize:Ljava/lang/String;
    if-nez v18, :cond_3

    .line 222
    const-string v18, "-1"

    .line 225
    :cond_3
    const/4 v12, 0x0

    .line 228
    .local v12, refundTimeout:Ljava/lang/Long;
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_refundtimeout"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 234
    :goto_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "#"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, assetSignatureAndSize:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/vending/model/Asset$AssetType;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v10

    .line 238
    .local v10, assetType:Lcom/android/vending/model/Asset$AssetType;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_is_forward_locked"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 239
    .local v19, isForwardLockedStr:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 241
    .local v11, isForwardLocked:Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_source"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, assetSource:Ljava/lang/String;
    new-instance v4, Lcom/android/vending/model/DownloadInfo;

    invoke-direct/range {v4 .. v16}, Lcom/android/vending/model/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Asset$AssetType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, downloadInfo:Lcom/android/vending/model/DownloadInfo;
    move-object/from16 v22, v4

    .line 248
    goto/16 :goto_1

    .line 193
    .end local v4           #downloadInfo:Lcom/android/vending/model/DownloadInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #assetSignatureAndSize:Ljava/lang/String;
    .end local v8           #assetName:Ljava/lang/String;
    .end local v9           #assetDownloadUrl:Ljava/lang/String;
    .end local v10           #assetType:Lcom/android/vending/model/Asset$AssetType;
    .end local v11           #isForwardLocked:Z
    .end local v12           #refundTimeout:Ljava/lang/Long;
    .end local v15           #assetSource:Ljava/lang/String;
    .end local v17           #assetSignature:Ljava/lang/String;
    .end local v18           #assetSize:Ljava/lang/String;
    .end local v19           #isForwardLockedStr:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 194
    const-string v22, "Server wanted download for an account that doesn\'t exist on the device."

    invoke-static/range {v22 .. v22}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 197
    .end local v13           #authCookieValue:Ljava/lang/String;
    .end local v14           #authCookieName:Ljava/lang/String;
    .end local v16           #account:Ljava/lang/String;
    :cond_5
    if-eqz v20, :cond_7

    const-string v22, "ANDROIDSECURE"

    move-object/from16 v14, v22

    .line 199
    .restart local v14       #authCookieName:Ljava/lang/String;
    :goto_4
    if-eqz v20, :cond_8

    sget-object v22, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication;->getCurrentAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v13

    .line 201
    .restart local v13       #authCookieValue:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v16

    .line 203
    .restart local v16       #account:Ljava/lang/String;
    if-nez v13, :cond_6

    .line 204
    const-string v22, "Couldn\'t get an auth token."

    invoke-static/range {v22 .. v22}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 208
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "user_email"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 209
    const-string v22, "Server specified account name without auth token."

    invoke-static/range {v22 .. v22}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 197
    .end local v13           #authCookieValue:Ljava/lang/String;
    .end local v14           #authCookieName:Ljava/lang/String;
    .end local v16           #account:Ljava/lang/String;
    :cond_7
    const-string v22, "ANDROID"

    move-object/from16 v14, v22

    goto :goto_4

    .line 199
    .restart local v14       #authCookieName:Ljava/lang/String;
    :cond_8
    sget-object v22, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    goto :goto_5

    .line 230
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v8       #assetName:Ljava/lang/String;
    .restart local v9       #assetDownloadUrl:Ljava/lang/String;
    .restart local v12       #refundTimeout:Ljava/lang/Long;
    .restart local v13       #authCookieValue:Ljava/lang/String;
    .restart local v16       #account:Ljava/lang/String;
    .restart local v17       #assetSignature:Ljava/lang/String;
    .restart local v18       #assetSize:Ljava/lang/String;
    :catch_0
    move-exception v22

    goto/16 :goto_3
.end method

.method private shouldInstall(Landroid/content/Intent;Lcom/android/vending/model/DownloadInfo;)Z
    .locals 8
    .parameter "intent"
    .parameter "downloadInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    const-string v3, "asset_version_code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const-string v3, "asset_version_code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 102
    .local v1, remoteVersion:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote version code in install intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :try_start_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local version code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    move v3, v7

    .line 118
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #remoteVersion:J
    :goto_0
    return v3

    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #remoteVersion:J
    :cond_0
    move v3, v6

    .line 110
    goto :goto_0

    .line 115
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #remoteVersion:J
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No remote version code in install intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v3, v7

    .line 118
    goto :goto_0

    .line 111
    .restart local v1       #remoteVersion:J
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    const-string v15, "from"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, fromAddress:Ljava/lang/String;
    const-string v15, "google.com"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/InstallAssetReceiver;->havePreviouslyHandledIntent(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 37
    const-string v15, "assetid"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, assetId:Ljava/lang/String;
    const-string v15, "tickle_id"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, tickleId:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Stale install attempt "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v5           #assetId:Ljava/lang/String;
    .end local v13           #tickleId:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 44
    .local v6, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v14

    .line 46
    .local v14, vendingApplication:Lcom/android/vending/VendingApplication;
    const-string v15, "server_initiated"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 50
    .local v12, serverInitiated:Z
    const-string v15, "direct_download_key"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, ddlKey:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 52
    sget-object v15, Lcom/android/vending/util/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v15, v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 55
    :cond_3
    const/4 v4, 0x0

    .line 57
    .local v4, appCount:I
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "assetid_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_4

    .line 59
    new-array v10, v4, [Lcom/android/vending/model/DownloadInfo;

    .line 60
    .local v10, infos:[Lcom/android/vending/model/DownloadInfo;
    const/4 v15, 0x1

    sub-int v9, v4, v15

    .local v9, index:I
    :goto_1
    if-ltz v9, :cond_7

    .line 61
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/InstallAssetReceiver;->getDownloadInfo(Landroid/os/Bundle;Lcom/android/vending/VendingApplication;I)Lcom/android/vending/model/DownloadInfo;

    move-result-object v15

    aput-object v15, v10, v9

    .line 65
    if-nez v12, :cond_5

    .line 66
    aget-object v15, v10, v9

    invoke-virtual {v15}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v5

    .line 67
    .restart local v5       #assetId:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v15

    if-nez v15, :cond_5

    .line 68
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Rejecting install of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v5           #assetId:Ljava/lang/String;
    :cond_5
    aget-object v15, v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/vending/InstallAssetReceiver;->shouldInstall(Landroid/content/Intent;Lcom/android/vending/model/DownloadInfo;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Attempted downgrading an already installed app ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 76
    aget-object v15, v10, v9

    invoke-virtual {v15}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v5

    .line 77
    .restart local v5       #assetId:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v11

    .line 78
    .local v11, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v11, :cond_0

    .line 79
    sget-object v15, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v11, v15}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    goto/16 :goto_0

    .line 60
    .end local v5           #assetId:Ljava/lang/String;
    .end local v11           #localAsset:Lcom/android/vending/model/LocalAsset;
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 94
    :cond_7
    new-instance v15, Lcom/android/vending/api/AssetService;

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    invoke-virtual {v15}, Lcom/android/vending/api/AssetService;->invalidateMyDownloads()V

    .line 96
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAssetDownloader()Lcom/android/vending/AssetDownloader;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/AssetDownloader;->downloadAndInstall(Landroid/content/Context;[Lcom/android/vending/model/DownloadInfo;)V

    goto/16 :goto_0
.end method

.method havePreviouslyHandledIntent(Landroid/content/Intent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 131
    const-string v0, "tickle_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 159
    :goto_0
    return v0

    .line 136
    :cond_0
    const-string v0, "tickle_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v0, v5

    .line 138
    goto :goto_0

    .line 144
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 150
    const-class v2, Lcom/android/vending/InstallAssetReceiver;

    monitor-enter v2

    .line 151
    :try_start_1
    sget-object v3, Lcom/android/vending/util/VendingPreferences;->LAST_TICKLE_ID:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 152
    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 153
    sget-object v3, Lcom/android/vending/util/VendingPreferences;->LAST_TICKLE_ID:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 157
    monitor-exit v2

    move v0, v5

    .line 159
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    move v0, v5

    .line 146
    goto :goto_0

    .line 155
    :cond_3
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
