.class public Lcom/asus/dm/DMCRegistryManager;
.super Ljava/lang/Object;
.source "DMCRegistryManager.java"


# static fields
.field private static final BATTERY_NOT_ENOUGH_FLAG:Ljava/lang/String; = "pref_key_battery_not_enough"

.field private static final BOOT_COMPLETED_DELAY:Ljava/lang/String; = "pref_boot_completed_delay"

.field private static final C2DM_IS_READY_TO_RCV_MSG:Ljava/lang/String; = "pref_key_c2dm_is_ready_to_receive_msg"

.field private static final C2DM_REGISTER_ID:Ljava/lang/String; = "pref_key_c2dm_register_id"

.field private static final C2DM_RETRY_REGISTER_COUNT:Ljava/lang/String; = "pref_key_c2dm_retry_regsiter_count"

.field private static final C2DM_SEND_REG_ID_RETRY_COUNT:Ljava/lang/String; = "pref_key_c2dm_send_reg_id_retry_count"

.field private static final CURRENT_POSTPONE_NUMBER:Ljava/lang/String; = "pref_key_postpone_times"

.field private static final CURRENT_STATE:Ljava/lang/String; = "pref_key_state"

.field private static final CURRENT_TREE:Ljava/lang/String; = "pref_key_current_tree"

.field private static final DEVICE_UNIQUE_ID:Ljava/lang/String; = "pref_device_unique_id"

.field private static final DL_CURRENT_SIZE:Ljava/lang/String; = "pref_key_dl_current_size"

.field private static final DL_DESCRIPTION:Ljava/lang/String; = "pref_key_dl_description"

.field private static final DL_NAME:Ljava/lang/String; = "pref_key_dl_name"

.field private static final DL_RESUME:Ljava/lang/String; = "pref_key_boolean_dl_resume"

.field private static final DL_TOTAL_SIZE:Ljava/lang/String; = "pref_key_dl_total_size"

.field private static final DM_CLIENT_VERSION:Ljava/lang/String; = "pref_key_dm_client_version"

.field private static final DM_DEBUGABLE:Ljava/lang/String; = "pref_dm_debug"

.field private static final DM_RETRY_CONUT:Ljava/lang/String; = "pref_key_retry_count"

.field private static final DM_UPGRADE_ERROR_HAS_SHOW:Ljava/lang/String; = "pref_key_dm_upgrade_error_has_show"

.field private static final FIRST_BOOT:Ljava/lang/String; = "pref_key_first_boot"

.field private static final FOTA_POLLING_COUNT:Ljava/lang/String; = "pref_fota_polling_count"

.field private static final FOTA_POLLING_INTERVAL:Ljava/lang/String; = "pref_fota_polling_interval"

.field private static final FOTA_UPDATE_RESULT:Ljava/lang/String; = "pref_fota_update_result"

.field private static final HAS_UNUPDATE_FILE:Ljava/lang/String; = "pref_key_un_update_file"

.field private static final IMSI_LIST_NAME:Ljava/lang/String; = "pref_key_imei_list_"

.field private static final IMSI_SAVED_COUNT:Ljava/lang/String; = "pref_key_imei_saved_count"

.field private static final INSTALL_TIME:Ljava/lang/String; = "pref_key_install_time"

.field private static final IS_DATA_SUSPENDED:Ljava/lang/String; = "pref_key_is_data_suspended"

.field private static final LAST_FOTA_POLLING_SUCCESS:Ljava/lang/String; = "pref_last_fota_polling_success"

.field private static final LAST_FOTA_POLLING_TIME:Ljava/lang/String; = "pref_last_fota_polling_time"

.field private static final NEXT_POSTPONE_TIME:Ljava/lang/String; = "pref_key_next_postpone_time"

.field private static final PACKAGE_PRIORITY:Ljava/lang/String; = "pref_key_package_priority"

.field private static final POSTPONE_TIME:Ljava/lang/String; = "pref_key_postpone_time"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "dmc_stat"

.field private static final STARTED_DM_SESSION:Ljava/lang/String; = "pref_key_started_dm_session"

.field private static final UPGRADE_FROM_DM:Ljava/lang/String; = "pref_key_upgrade_from_dm"

.field private static mInstance:Lcom/asus/dm/DMCRegistryManager;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "pContext"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "dmc_stat"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/asus/dm/DMCRegistryManager;->initRegistry(Landroid/content/SharedPreferences;)V

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 93
    sget-object v0, Lcom/asus/dm/DMCRegistryManager;->mInstance:Lcom/asus/dm/DMCRegistryManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/asus/dm/DMCRegistryManager;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMCRegistryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/dm/DMCRegistryManager;->mInstance:Lcom/asus/dm/DMCRegistryManager;

    .line 95
    sget-object v0, Lcom/asus/dm/DMCRegistryManager;->mInstance:Lcom/asus/dm/DMCRegistryManager;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/asus/dm/DMCRegistryManager;->mInstance:Lcom/asus/dm/DMCRegistryManager;

    goto :goto_0
.end method

.method private initRegistry(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "pPref"

    .prologue
    const/4 v3, -0x1

    .line 64
    const-string v1, "pref_key_state"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_state"

    sget-object v2, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v2}, Lcom/asus/dm/DMClient$DMClientState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v1, "pref_key_postpone_times"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_postpone_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "pref_key_dl_total_size"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_dl_total_size"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method


# virtual methods
.method public clearFotaResult()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fota_update_result"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    return-void
.end method

.method public clearPostponeTimes()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public getBatteryNotEnoughFlag()Z
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_battery_not_enough"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBootCompletedDelay()Z
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_boot_completed_delay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getC2DMRegId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_register_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getC2dmRegisterRetryCount()I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_retry_regsiter_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getC2dmSendRegIdRetryCount()I
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_send_reg_id_retry_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentTree()I
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_current_tree"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDLCurrentSize()J
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_current_size"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDLDescriotion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_description"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDLName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDLResume()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_boolean_dl_resume"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v4

    .line 149
    goto :goto_0
.end method

.method public getDLTotalSize()I
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_total_size"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDMVersion()I
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dm_client_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataSuspened()Z
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_is_data_suspended"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEstimatedInstallTime()I
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_install_time"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFirstBoot()Z
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_first_boot"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFotaPollingCount()J
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_fota_polling_count"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFotaPollingInterval()J
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_fota_polling_interval"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFotaResult()I
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_fota_update_result"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasUpdateFile()Z
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_un_update_file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsReadyToRcvMsg()Z
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_is_ready_to_receive_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastFotaPollingSuccess()Z
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_fota_polling_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastFotaPollingTime()J
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_fota_polling_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextPostTime()J
    .locals 5

    .prologue
    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, defValue:I
    iget-object v1, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_next_postpone_time"

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getPackagePriority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_package_priority"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostponeNumber()I
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, defValue:I
    iget-object v1, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_postpone_times"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPostponeTime()I
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_postpone_time"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRetryCount()I
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_retry_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStartDMDLSession()Z
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_started_dm_session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getState()Lcom/asus/dm/DMClient$DMClientState;
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/asus/dm/DMClient$DMClientState;->values()[Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_state"

    sget-object v3, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v3}, Lcom/asus/dm/DMClient$DMClientState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_device_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeErrorHasShown()Z
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dm_upgrade_error_has_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDMDebugable()Z
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_dm_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBatteryNotEnoughFlag(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_battery_not_enough"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    return-void
.end method

.method public setBootCompletedDelay(Z)V
    .locals 2
    .parameter "bDelay"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_boot_completed_delay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    return-void
.end method

.method public setC2DMRegId(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_register_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public setC2dmRegisterRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_retry_regsiter_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    return-void
.end method

.method public setC2dmSendRegIdRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_send_reg_id_retry_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return-void
.end method

.method public setCurrentTree(I)V
    .locals 2
    .parameter "pTreeNo"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_current_tree"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public setDLCurrentSize(J)V
    .locals 2
    .parameter "currentSize"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_current_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method

.method public setDLDescriotion(Ljava/lang/String;)V
    .locals 2
    .parameter "ddDescriotion"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_description"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public setDLName(Ljava/lang/String;)V
    .locals 2
    .parameter "ddName"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public setDLResume(Z)V
    .locals 2
    .parameter "isResume"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method

.method public setDLTotalSize(I)V
    .locals 2
    .parameter "totalSize"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_total_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method public setDMDebugable(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dm_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    return-void
.end method

.method public setDMErrorHasShown(Z)V
    .locals 2
    .parameter "bHasShown"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dm_upgrade_error_has_show"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    return-void
.end method

.method public setDMVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dm_client_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

.method public setDataSuspended(Z)V
    .locals 3
    .parameter "pIsSuspended"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_is_data_suspended"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    return-void
.end method

.method public setEstimatedInstallTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 201
    if-lez p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_install_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    :cond_0
    return-void
.end method

.method public setFirstBoot()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_first_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public setFotaPollingCount(J)V
    .locals 2
    .parameter "count"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fota_polling_count"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public setFotaPollingInterval(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fota_polling_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    return-void
.end method

.method public setFotaResult(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fota_update_result"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method public setHasUpdateFile(Z)V
    .locals 2
    .parameter "bHas"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_un_update_file"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    return-void
.end method

.method public setIsReadyToRcvMsg(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_is_ready_to_receive_msg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public setLastFotaPollingSuccess(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_fota_polling_success"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    return-void
.end method

.method public setLastFotaPollingTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_last_fota_polling_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    return-void
.end method

.method public setNextPostTime(J)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_next_postpone_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;)V
    .locals 2
    .parameter "pPriority"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_package_priority"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public setPostponeTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .parameter "retryCnt"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_retry_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public setStartDMDLSession(Z)V
    .locals 2
    .parameter "bStart"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_started_dm_session"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public setState(Lcom/asus/dm/DMClient$DMClientState;)V
    .locals 3
    .parameter "pState"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_state"

    invoke-virtual {p1}, Lcom/asus/dm/DMClient$DMClientState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_device_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void
.end method

.method public setUpgradeFromDM(Z)V
    .locals 2
    .parameter "isFromDm"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_upgrade_from_dm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public updatePostponeNumber()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/asus/dm/DMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_times"

    invoke-virtual {p0}, Lcom/asus/dm/DMCRegistryManager;->getPostponeNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method
