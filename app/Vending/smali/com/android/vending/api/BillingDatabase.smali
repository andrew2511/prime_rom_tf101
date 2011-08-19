.class public Lcom/android/vending/api/BillingDatabase;
.super Ljava/lang/Object;
.source "BillingDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/BillingDatabase$DatabaseHelper;
    }
.end annotation


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsLocalBillingDataCached:Z

.field private mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

.field private sCurrentSimIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    new-instance v0, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/api/BillingDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase;->setCurrentSimIdentifier(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    return-void
.end method

.method private convertToInt(Z)I
    .locals 1
    .parameter "bool"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doesAddressNeedReview(Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/model/CarrierProvisioningResponse;)Z
    .locals 1
    .parameter "oldData"
    .parameter "provisioning"

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->isAddressNeedsReview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doesTosNeedReview(Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/model/CarrierProvisioningResponse;)Z
    .locals 3
    .parameter "oldData"
    .parameter "provisioning"

    .prologue
    .line 455
    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, newTosVersion:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, oldTosVersion:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->isTosNeedsReview()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .parameter "result"
    .parameter "colName"

    .prologue
    .line 522
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "result"
    .parameter "colName"

    .prologue
    .line 510
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .parameter "result"
    .parameter "colName"

    .prologue
    .line 514
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "result"
    .parameter "colName"

    .prologue
    .line 518
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWhereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim_identifier == \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/api/BillingDatabase;->sCurrentSimIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized invalidateCache()V
    .locals 1

    .prologue
    .line 505
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vending/api/BillingDatabase;->mIsLocalBillingDataCached:Z

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/BillingDatabase;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSubscriberInfoEmpty(Lcom/android/vending/model/CarrierProvisioningResponse;)Z
    .locals 1
    .parameter "provisioning"

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrentSimIdentifier(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 534
    const-class v1, Lcom/android/vending/api/BillingDatabase;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/BillingDatabase;->sCurrentSimIdentifier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 536
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 538
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/vending/util/Sha1Util;->secureHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/vending/api/BillingDatabase;->sCurrentSimIdentifier:Ljava/lang/String;

    .line 542
    :cond_0
    monitor-exit v1

    .line 543
    return-void

    .line 539
    :cond_1
    const-string v0, "INVALID_SIM_ID"

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setEncryptedSubscriberInfo(Landroid/content/ContentValues;Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 5
    .parameter "values"
    .parameter "provisioning"

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    .line 337
    .local v1, encryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;
    if-eqz v1, :cond_0

    .line 338
    const-string v3, "p_subscriber_info_message"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v3, "p_subscriber_info_encrypted_key"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v3, "p_subscriber_info_signature"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "p_subscriber_info_init_vector"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v3, "p_subscriber_info_google_key_version"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v3, "p_subscriber_info_carrier_key_version"

    invoke-virtual {v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v3, "p_subscriber_name"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    .end local p0
    invoke-virtual {p1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "p_subscriber_identifier"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "p_address1"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v4, "p_address2"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "p_city"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v4, "p_state"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v4, "p_postal_code"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "p_country"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    const-string v2, "p_address_snippet_col_name"

    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "p_address_country_col_name"

    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private setUnencryptedSubscriberInfo(Landroid/content/ContentValues;Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 4
    .parameter "values"
    .parameter "provisioning"

    .prologue
    .line 309
    new-instance v1, Lcom/android/vending/model/SubscriberInfo$Builder;

    invoke-direct {v1}, Lcom/android/vending/model/SubscriberInfo$Builder;-><init>()V

    .line 310
    .local v1, subscriberInfoBuilder:Lcom/android/vending/model/SubscriberInfo$Builder;
    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    .line 313
    invoke-virtual {p2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    .line 314
    .local v0, address:Lcom/android/vending/model/Address;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/model/SubscriberInfo$Builder;->setCountryCode(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;

    .line 322
    :cond_0
    const-string v2, "p_subscriber_info"

    invoke-virtual {v1}, Lcom/android/vending/model/SubscriberInfo$Builder;->build()Lcom/android/vending/model/SubscriberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method


# virtual methods
.method public declared-synchronized getLocalBillingData()Lcom/android/vending/model/LocalBillingData;
    .locals 29

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/api/BillingDatabase;->mIsLocalBillingDataCached:Z

    move v6, v0

    if-eqz v6, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-object v6

    .line 120
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "billing"

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 121
    .local v26, result:Landroid/database/Cursor;
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 122
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 123
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v28, values:Landroid/content/ContentValues;
    const-string v6, "sim_identifier"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->sCurrentSimIdentifier:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v28

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    const-string v7, "billing"

    const-string v8, "sim_identifier"

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "billing"

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v26

    .line 130
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    .line 132
    const/16 v25, 0x0

    .line 133
    .local v25, provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    const-string v6, "p_is_provisioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    new-instance v25, Lcom/android/vending/model/CarrierProvisioningResponse;

    .end local v25           #provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    invoke-direct/range {v25 .. v25}, Lcom/android/vending/model/CarrierProvisioningResponse;-><init>()V

    .line 135
    .restart local v25       #provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    const-string v6, "p_api_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setApiVersion(I)V

    .line 136
    const/4 v6, 0x1

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setIsProvisioned(Z)V

    .line 137
    const-string v6, "p_provisioning_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setProvisioningId(Ljava/lang/String;)V

    .line 138
    const-string v6, "p_account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAccountType(Ljava/lang/String;)V

    .line 139
    const-string v6, "p_tos_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosUrl(Ljava/lang/String;)V

    .line 140
    const-string v6, "p_tos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosVersion(Ljava/lang/String;)V

    .line 141
    const-string v6, "p_subscriber_currency"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 143
    const-string v6, "p_transaction_limit"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v25

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTransactionLimit(J)V

    .line 144
    const-string v6, "p_subscriber_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberName(Ljava/lang/String;)V

    .line 145
    const-string v6, "p_subscriber_identifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 148
    new-instance v22, Lcom/android/vending/model/CarrierCredentialsResponse;

    invoke-direct/range {v22 .. v22}, Lcom/android/vending/model/CarrierCredentialsResponse;-><init>()V

    .line 149
    .local v22, credentials:Lcom/android/vending/model/CarrierCredentialsResponse;
    const-string v6, "p_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setCredentials(Ljava/lang/String;)V

    .line 150
    const-string v6, "p_credentials_expiration_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v22

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierCredentialsResponse;->setExpirationTime(J)V

    .line 151
    invoke-virtual/range {v25 .. v25}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v6

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsProvisioned(Z)V

    .line 152
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCredentialsResponse(Lcom/android/vending/model/CarrierCredentialsResponse;)V

    .line 154
    new-instance v4, Lcom/android/vending/model/Address;

    const-string v6, "p_address1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "p_address2"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "p_city"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "p_postal_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "p_country"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v4, address:Lcom/android/vending/model/Address;
    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberAddress(Lcom/android/vending/model/Address;)V

    .line 162
    const-string v6, "p_password_required"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordRequired(Z)V

    .line 163
    const-string v6, "p_password_prompt"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordPrompt(Ljava/lang/String;)V

    .line 164
    const-string v6, "p_password_forgot_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordForgotUrl(Ljava/lang/String;)V

    .line 167
    const-string v6, "p_carrier_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCarrierName(Ljava/lang/String;)V

    .line 168
    const-string v6, "p_carrier_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCarrierId(Ljava/lang/String;)V

    .line 169
    const-string v6, "p_carrier_icon_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCarrierIconId(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/vending/api/BillingDatabase;->isSubscriberInfoEmpty(Lcom/android/vending/model/CarrierProvisioningResponse;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    const-string v6, "p_subscriber_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 175
    .local v24, obfuscatedSubscriberInfo:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 176
    new-instance v27, Lcom/android/vending/model/SubscriberInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/model/SubscriberInfo;-><init>(Ljava/lang/String;)V

    .line 179
    .local v27, subscriberInfo:Lcom/android/vending/model/SubscriberInfo;
    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberName(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 181
    new-instance v5, Lcom/android/vending/model/Address;

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v27 .. v27}, Lcom/android/vending/model/SubscriberInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberAddress(Lcom/android/vending/model/Address;)V

    .line 190
    .end local v24           #obfuscatedSubscriberInfo:Ljava/lang/String;
    .end local v27           #subscriberInfo:Lcom/android/vending/model/SubscriberInfo;
    :cond_2
    new-instance v23, Lcom/android/vending/model/EncryptedSubscriberInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/vending/model/EncryptedSubscriberInfo;-><init>()V

    .line 191
    .local v23, encryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;
    const-string v6, "p_subscriber_info_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setMessage(Ljava/lang/String;)V

    .line 193
    const-string v6, "p_subscriber_info_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setSignature(Ljava/lang/String;)V

    .line 195
    const-string v6, "p_subscriber_info_encrypted_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setEncryptedKey(Ljava/lang/String;)V

    .line 197
    const-string v6, "p_subscriber_info_init_vector"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setInitVector(Ljava/lang/String;)V

    .line 199
    const-string v6, "p_subscriber_info_carrier_key_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setCarrierKeyVersion(I)V

    .line 201
    const-string v6, "p_subscriber_info_google_key_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->setGoogleKeyVersion(I)V

    .line 203
    invoke-virtual/range {v23 .. v23}, Lcom/android/vending/model/EncryptedSubscriberInfo;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 207
    :cond_3
    const-string v6, "p_account_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAccountType(Ljava/lang/String;)V

    .line 208
    const-string v6, "p_address_snippet_col_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAddressSnippet(Ljava/lang/String;)V

    .line 209
    const-string v6, "p_address_country_col_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCountry(Ljava/lang/String;)V

    .line 212
    .end local v4           #address:Lcom/android/vending/model/Address;
    .end local v22           #credentials:Lcom/android/vending/model/CarrierCredentialsResponse;
    .end local v23           #encryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;
    :cond_4
    new-instance v5, Lcom/android/vending/model/Address;

    const-string v6, "server_address1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "server_address2"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_city"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "server_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "server_postal_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "server_country"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v5, serverAddress:Lcom/android/vending/model/Address;
    new-instance v6, Lcom/android/vending/model/LocalBillingData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->sCurrentSimIdentifier:Ljava/lang/String;

    move-object v7, v0

    const-string v8, "last_retrieved_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v9

    const-string v8, "earliest_next_check_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v11

    const-string v8, "tos_needs_review"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v13

    const-string v8, "address_needs_review"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v14

    const-string v8, "carrier_billing_shown"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v15

    const-string v8, "german_debit_shown"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v16

    const-string v8, "server_update_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v17

    const-string v8, "server_update_hash"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/BillingDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v19

    move-object/from16 v8, v25

    move-object/from16 v21, v5

    invoke-direct/range {v6 .. v21}, Lcom/android/vending/model/LocalBillingData;-><init>(Ljava/lang/String;Lcom/android/vending/model/CarrierProvisioningResponse;JJZZZZJJLcom/android/vending/model/Address;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/api/BillingDatabase;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 229
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vending/api/BillingDatabase;->mIsLocalBillingDataCached:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/BillingDatabase;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    move-object v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    :try_start_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 116
    .end local v5           #serverAddress:Lcom/android/vending/model/Address;
    .end local v25           #provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    .end local v26           #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 232
    .restart local v26       #result:Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public saveCredentials(Lcom/android/vending/model/CarrierCredentialsResponse;)V
    .locals 5
    .parameter "credentials"

    .prologue
    .line 438
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "p_credentials"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierCredentialsResponse;->getCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "p_credentials_expiration_time"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierCredentialsResponse;->getExpirationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    iget-object v1, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 443
    return-void
.end method

.method public saveServerPost(Lcom/android/vending/model/CarrierBillingInstrument;)V
    .locals 5
    .parameter "carrierInstrument"

    .prologue
    .line 418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "server_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v1, "server_update_hash"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getServerHash()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v1, "server_address1"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "server_address2"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "server_city"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "server_state"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "server_postal_code"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "server_country"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "address_needs_review"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    iget-object v1, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 430
    return-void
.end method

.method public setCarrierBillingShown(Z)V
    .locals 5
    .parameter "shown"

    .prologue
    .line 372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "carrier_billing_shown"

    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    iget-object v1, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 376
    return-void
.end method

.method public setEarliestNextTime(J)V
    .locals 5
    .parameter "nextCheckTime"

    .prologue
    .line 240
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "earliest_next_check_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    iget-object v1, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 244
    return-void
.end method

.method public setProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;Lcom/android/vending/model/BillingParameter;)V
    .locals 9
    .parameter "provisioning"
    .parameter "billingParam"

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v3

    .line 255
    .local v3, oldData:Lcom/android/vending/model/LocalBillingData;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "last_retrieved_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v5, "p_is_provisioned"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v5, "p_provisioning_id"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getProvisioningId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter;->isInstrumentTosRequired()Z

    move-result v5

    if-nez v5, :cond_2

    .line 262
    const-string v7, "p_tos_url"

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    const-string v5, "p_tos_version"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v5, "p_subscriber_currency"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v5, "p_transaction_limit"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v5, "p_account_type"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getApiVersion()I

    move-result v1

    .line 272
    .local v1, apiVersion:I
    const-string v5, "p_api_version"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const/4 v5, 0x1

    if-gt v1, v5, :cond_3

    .line 278
    invoke-direct {p0, v4, p1}, Lcom/android/vending/api/BillingDatabase;->setUnencryptedSubscriberInfo(Landroid/content/ContentValues;Lcom/android/vending/model/CarrierProvisioningResponse;)V

    .line 283
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCredentialsResponse()Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v2

    .line 284
    .local v2, credentials:Lcom/android/vending/model/CarrierCredentialsResponse;
    const-string v5, "p_credentials"

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierCredentialsResponse;->getCredentials()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v5, "p_credentials_expiration_time"

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierCredentialsResponse;->getExpirationTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    if-eqz p2, :cond_1

    .line 288
    const-string v5, "p_carrier_name"

    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "p_carrier_id"

    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "p_carrier_icon_id"

    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter;->getIconId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    const-string v5, "p_password_required"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->isPasswordRequired()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 294
    const-string v5, "p_password_prompt"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v5, "p_password_forgot_url"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v5, "tos_needs_review"

    invoke-direct {p0, v3, p1}, Lcom/android/vending/api/BillingDatabase;->doesTosNeedReview(Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/model/CarrierProvisioningResponse;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v5, "address_needs_review"

    invoke-direct {p0, v3, p1}, Lcom/android/vending/api/BillingDatabase;->doesAddressNeedReview(Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/model/CarrierProvisioningResponse;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    iget-object v5, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v4, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 304
    return-void

    .line 264
    .end local v1           #apiVersion:I
    .end local v2           #credentials:Lcom/android/vending/model/CarrierCredentialsResponse;
    :cond_2
    const-string v5, "p_tos_url"

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .restart local v1       #apiVersion:I
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 280
    invoke-direct {p0, v4, p1}, Lcom/android/vending/api/BillingDatabase;->setEncryptedSubscriberInfo(Landroid/content/ContentValues;Lcom/android/vending/model/CarrierProvisioningResponse;)V

    goto/16 :goto_1
.end method

.method public setTosAcceptedVersion(Ljava/lang/String;)V
    .locals 6
    .parameter "tosVersion"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v0

    .line 393
    .local v0, localData:Lcom/android/vending/model/LocalBillingData;
    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "tos_needs_review"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/vending/api/BillingDatabase;->convertToInt(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    iget-object v2, p0, Lcom/android/vending/api/BillingDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "billing"

    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/android/vending/api/BillingDatabase;->invalidateCache()V

    .line 400
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
