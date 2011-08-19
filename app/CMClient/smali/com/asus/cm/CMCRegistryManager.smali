.class public Lcom/asus/cm/CMCRegistryManager;
.super Ljava/lang/Object;
.source "CMCRegistryManager.java"


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

.field private static final HAS_UNUPDATE_FILE:Ljava/lang/String; = "pref_key_un_update_file"

.field private static final IMSI_LIST_NAME:Ljava/lang/String; = "pref_key_imei_list_"

.field private static final IMSI_SAVED_COUNT:Ljava/lang/String; = "pref_key_imei_saved_count"

.field private static final INSTALL_TIME:Ljava/lang/String; = "pref_key_install_time"

.field private static final IS_DATA_SUSPENDED:Ljava/lang/String; = "pref_key_is_data_suspended"

.field private static final LAWMO_STATE:Ljava/lang/String; = "pref_key_lawmo_state"

.field private static final NEXT_POSTPONE_TIME:Ljava/lang/String; = "pref_key_next_postpone_time"

.field public static NO_RING_VOLUME_PREFS:I = 0x0

.field private static final PACKAGE_PRIORITY:Ljava/lang/String; = "pref_key_package_priority"

.field private static final POSTPONE_TIME:Ljava/lang/String; = "pref_key_postpone_time"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "dmc_stat"

.field private static final RING_MODE:Ljava/lang/String; = "pref_ring_mode"

.field private static final RING_STATUS:Ljava/lang/String; = "pref_ring_status"

.field private static final RING_VOLUME:Ljava/lang/String; = "pref_ring_volume"

.field private static final SENDING_VIBE_ACCOUNT:Ljava/lang/String; = "pref_vibe_account_sending"

.field private static final STARTED_DM_SESSION:Ljava/lang/String; = "pref_key_started_dm_session"

.field private static final SYSTEM_KEYGUARD_ON:Ljava/lang/String; = "pref_key_system_keyguard_on"

.field private static final UNLOCK_RESULT_CODE:Ljava/lang/String; = "pref_key_unlock_result_code"

.field private static final UPGRADE_FROM_DM:Ljava/lang/String; = "pref_key_upgrade_from_dm"

.field private static final VIBE_ACCOUNT:Ljava/lang/String; = "pref_vibe_account"

.field private static final VIBE_RETRY_COUNT:Ljava/lang/String; = "pref_vibe_retrycount"

.field private static mInstance:Lcom/asus/cm/CMCRegistryManager;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/high16 v0, -0x8000

    sput v0, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "pContext"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "dmc_stat"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    .line 66
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/asus/cm/CMCRegistryManager;->initRegistry(Landroid/content/SharedPreferences;)V

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 99
    sget-object v0, Lcom/asus/cm/CMCRegistryManager;->mInstance:Lcom/asus/cm/CMCRegistryManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/asus/cm/CMCRegistryManager;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMCRegistryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/cm/CMCRegistryManager;->mInstance:Lcom/asus/cm/CMCRegistryManager;

    .line 101
    sget-object v0, Lcom/asus/cm/CMCRegistryManager;->mInstance:Lcom/asus/cm/CMCRegistryManager;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/asus/cm/CMCRegistryManager;->mInstance:Lcom/asus/cm/CMCRegistryManager;

    goto :goto_0
.end method

.method private initRegistry(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "pPref"

    .prologue
    const/4 v3, -0x1

    .line 70
    const-string v1, "pref_key_state"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_state"

    sget-object v2, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v2}, Lcom/asus/cm/CMClient$DMClientState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v1, "pref_key_postpone_times"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_postpone_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "pref_key_dl_total_size"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_dl_total_size"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method


# virtual methods
.method public addRegisteredImsi(Ljava/lang/String;)V
    .locals 4
    .parameter "sImsi"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_imei_saved_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 252
    .local v0, imei_cnt:I
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_key_imei_list_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_key_imei_saved_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public clearPostponeTimes()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public clearUnlockResult()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_unlock_result_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    return-void
.end method

.method public getBatteryNotEnoughFlag()Z
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_battery_not_enough"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBootCompletedDelay()Z
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_boot_completed_delay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getC2DMRegId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_register_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getC2dmRegisterRetryCount()I
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_retry_regsiter_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getC2dmSendRegIdRetryCount()I
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_send_reg_id_retry_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentTree()I
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_current_tree"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDLCurrentSize()J
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_current_size"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDLDescriotion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_description"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDLName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

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

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_boolean_dl_resume"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v4

    .line 171
    goto :goto_0
.end method

.method public getDLTotalSize()I
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dl_total_size"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDMVersion()I
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dm_client_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataSuspened()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_is_data_suspended"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEstimatedInstallTime()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_install_time"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFirstBoot()Z
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_first_boot"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasUpdateFile()Z
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_un_update_file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsReadyToRcvMsg()Z
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_c2dm_is_ready_to_receive_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKeyguardOn()Z
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_system_keyguard_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLawmoState()Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->values()[Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_lawmo_state"

    sget-object v3, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNextPostTime()J
    .locals 5

    .prologue
    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, defValue:I
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_next_postpone_time"

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getPackagePriority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_package_priority"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostponeNumber()I
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, defValue:I
    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_postpone_times"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPostponeTime()I
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_postpone_time"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRegisteredImsi()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v3, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_imei_saved_count"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, imsi_cnt:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, imeiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 245
    iget-object v3, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref_key_imei_list_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method

.method public getRetryCount()I
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_retry_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRingMode()I
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ring_mode"

    sget v2, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRingStatus()I
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ring_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRingVolume()I
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_ring_volume"

    sget v2, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSendingVibeAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_vibe_account_sending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDMDLSession()Z
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_started_dm_session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getState()Lcom/asus/cm/CMClient$DMClientState;
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/asus/cm/CMClient$DMClientState;->values()[Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_state"

    sget-object v3, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v3}, Lcom/asus/cm/CMClient$DMClientState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_device_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockResult()I
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_unlock_result_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpgradeErrorHasShown()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_dm_upgrade_error_has_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibeAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_vibe_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibeRetryCount()I
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_vibe_retrycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isDMDebugable()Z
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

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
    .line 256
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_battery_not_enough"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method public setBootCompletedDelay(Z)V
    .locals 2
    .parameter "bDelay"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_boot_completed_delay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public setC2DMRegId(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_register_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    return-void
.end method

.method public setC2dmRegisterRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_retry_regsiter_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void
.end method

.method public setC2dmSendRegIdRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_send_reg_id_retry_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    return-void
.end method

.method public setCurrentTree(I)V
    .locals 2
    .parameter "pTreeNo"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_current_tree"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void
.end method

.method public setDLCurrentSize(J)V
    .locals 2
    .parameter "currentSize"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_current_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public setDLDescriotion(Ljava/lang/String;)V
    .locals 2
    .parameter "ddDescriotion"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_description"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method public setDLName(Ljava/lang/String;)V
    .locals 2
    .parameter "ddName"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    return-void
.end method

.method public setDLResume(Z)V
    .locals 2
    .parameter "isResume"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_boolean_dl_resume"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void
.end method

.method public setDLTotalSize(I)V
    .locals 2
    .parameter "totalSize"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dl_total_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public setDMDebugable(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dm_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    return-void
.end method

.method public setDMErrorHasShown(Z)V
    .locals 2
    .parameter "bHasShown"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dm_upgrade_error_has_show"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void
.end method

.method public setDMVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_dm_client_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void
.end method

.method public setDataSuspended(Z)V
    .locals 3
    .parameter "pIsSuspended"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_is_data_suspended"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    return-void
.end method

.method public setEstimatedInstallTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 223
    if-lez p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_install_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    :cond_0
    return-void
.end method

.method public setFirstBoot()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_first_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method

.method public setHasUpdateFile(Z)V
    .locals 2
    .parameter "bHas"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_un_update_file"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public setIsReadyToRcvMsg(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_c2dm_is_ready_to_receive_msg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method public setKeyguardOn(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_system_keyguard_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void
.end method

.method public setLawmoState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V
    .locals 3
    .parameter "pState"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_lawmo_state"

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public setNextPostTime(J)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_next_postpone_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;)V
    .locals 2
    .parameter "pPriority"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_package_priority"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public setPostponeTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .parameter "retryCnt"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_retry_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    return-void
.end method

.method public setRingMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ring_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    return-void
.end method

.method public setRingStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ring_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    return-void
.end method

.method public setRingVolume(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ring_volume"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    return-void
.end method

.method public setSendingVibeAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_vibe_account_sending"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method public setStartDMDLSession(Z)V
    .locals 2
    .parameter "bStart"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_started_dm_session"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public setState(Lcom/asus/cm/CMClient$DMClientState;)V
    .locals 3
    .parameter "pState"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_state"

    invoke-virtual {p1}, Lcom/asus/cm/CMClient$DMClientState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_device_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    return-void
.end method

.method public setUnlockResult(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_unlock_result_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    return-void
.end method

.method public setUpgradeFromDM(Z)V
    .locals 2
    .parameter "isFromDm"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_upgrade_from_dm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public setVibeAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_vibe_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public setVibeRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_vibe_retrycount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    return-void
.end method

.method public updatePostponeNumber()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/asus/cm/CMCRegistryManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_postpone_times"

    invoke-virtual {p0}, Lcom/asus/cm/CMCRegistryManager;->getPostponeNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method
