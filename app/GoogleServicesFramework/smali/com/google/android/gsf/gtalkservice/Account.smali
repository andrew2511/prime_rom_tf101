.class public Lcom/google/android/gsf/gtalkservice/Account;
.super Ljava/lang/Object;
.source "Account.java"


# static fields
.field private static final CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;


# instance fields
.field private mActiveHeartbeatInterval:I

.field private mAuthToken:Ljava/lang/String;

.field private mClockSkewThresholdMs:J

.field private mDeviceId:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mHeartbeatAckTimeout:I

.field private mHost:Ljava/lang/String;

.field private mIdleHeartbeatInterval:I

.field private mLoginSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxConnectionHistoryRecords:I

.field private mMaxReconnectDelay:I

.field private mMinReconnectDelayLong:I

.field private mMinReconnectDelayShort:I

.field private mName:Ljava/lang/String;

.field private mNosyncHeartbeatInterval:I

.field private mPort:I

.field private mReconnectVariantLong:I

.field private mReconnectVariantShort:I

.field private mRmq2IncludeStreamId:Z

.field private mRmqAckInterval:I

.field private mShortNetworkDowntime:I

.field private mSupportRmqAndRmq2:Z

.field private mSyncHeartbeatInterval:I

.field private mUseRmq2:Z

.field private mUsername:Ljava/lang/String;

.field private mWifiHeartbeatInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "new_vc"

    aput-object v2, v1, v3

    const-string v2, "1"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/Account;->CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJILjava/util/Map;)V
    .locals 5
    .parameter "service"
    .parameter "name"
    .parameter "host"
    .parameter "port"
    .parameter "rmqAckInterval"
    .parameter "minReconnectDelayShort"
    .parameter "reconnectVariantShort"
    .parameter "minReconnectDelayLong"
    .parameter "reconnectVariantLong"
    .parameter "maxReconnectDelay"
    .parameter "shortNetworkDowntime"
    .parameter "activeHeartbeat"
    .parameter "idleHeartbeat"
    .parameter "syncHeartbeat"
    .parameter "nosyncHeartbeat"
    .parameter "wifiHeartbeat"
    .parameter "heartbeatAckTimeout"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"
    .parameter "useRmq2"
    .parameter "supportRmqAndRmq2"
    .parameter "rmq2IncludeStreamId"
    .parameter "clockSkewThresholdMs"
    .parameter "maxConnectionHistoryRecords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gsf/gtalkservice/service/GTalkService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p27, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mName:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    .line 125
    iput p4, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    .line 126
    iput p5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    .line 127
    iput p6, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    .line 128
    iput p7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    .line 129
    iput p8, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    .line 130
    iput p9, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    .line 131
    iput p10, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    .line 132
    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    .line 134
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    .line 135
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    .line 136
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    .line 137
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mNosyncHeartbeatInterval:I

    .line 138
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mWifiHeartbeatInterval:I

    .line 139
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    .line 141
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    .line 144
    if-nez p20, :cond_0

    .line 145
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "deviceId must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    .line 149
    move/from16 v0, p21

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    .line 150
    move/from16 v0, p22

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    .line 151
    move/from16 v0, p23

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    .line 153
    move-wide/from16 v0, p24

    move-object v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/Account;->mClockSkewThresholdMs:J

    .line 154
    move/from16 v0, p26

    move-object v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mMaxConnectionHistoryRecords:I

    .line 156
    move-object/from16 v0, p27

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    .line 157
    return-void
.end method

.method public static createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 34
    .parameter "service"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"

    .prologue
    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 465
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v5, "gtalk_hostname"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, host:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 468
    const-string v5, "GTalkService"

    .end local v5           #host:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    const-string v5, "GTalkService"

    const-string v6, "createAccountFromSettings: gservices has no hostname!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    const-string v5, "mtalk.google.com"

    .line 475
    .restart local v5       #host:Ljava/lang/String;
    :cond_1
    const-string v6, "gtalk_secure_port"

    const/16 v7, 0x146c

    invoke-static {v4, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 488
    .local v6, port:I
    const-string v7, "gtalk_rmq_ack_interval"

    const/16 v8, 0xa

    invoke-static {v4, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 491
    .local v7, rmqAckInterval:I
    const-string v8, "gtalk_min_reconnect_delay_short"

    const/16 v9, 0x3a98

    invoke-static {v4, v8, v9}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 495
    .local v8, minReconnectDelayShort:I
    const-string v9, "gtalk_reconnect_variant_short"

    const/16 v10, 0x3a98

    invoke-static {v4, v9, v10}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 499
    .local v9, reconnectVariantShort:I
    const-string v10, "gtalk_min_reconnect_delay_long"

    const/16 v11, 0x7530

    invoke-static {v4, v10, v11}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 503
    .local v10, minReconnectDelayLong:I
    const-string v11, "gtalk_reconnect_variant_long"

    const v12, 0x15f90

    invoke-static {v4, v11, v12}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 507
    .local v11, reconnectVariantLong:I
    const-string v12, "gtalk_short_network_downtime"

    const v13, 0x2932e0

    invoke-static {v4, v12, v13}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 511
    .local v13, shortNetworkDowntime:I
    const-string v12, "gtalk_max_reconnect_delay"

    const v14, 0x927c0

    invoke-static {v4, v12, v14}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 515
    .local v12, maxReconnectDelay:I
    const-string v14, "gtalk_active_heartbeat_ping_interval_ms"

    const v15, 0x6ddd0

    invoke-static {v4, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 519
    .local v14, activeHeartbeat:I
    const-string v15, "gtalk_heartbeat_ping_interval_ms"

    const v16, 0xdbba0

    move-object v0, v4

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 523
    .local v15, idleHeartbeat:I
    const-string v16, "gtalk_sync_heartbeat_ping_interval_ms"

    const v17, 0xdbba0

    move-object v0, v4

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 527
    .local v16, syncHeartbeat:I
    const-string v17, "gtalk_nosync_heartbeat_ping_interval_ms"

    const v18, 0x19a280

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 531
    .local v17, nosyncHeartbeat:I
    const-string v18, "gtalk_wifi_max_heartbeat_ping_interval_ms"

    const v19, 0xdbba0

    move-object v0, v4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 535
    .local v18, wifiHeartbeat:I
    const-string v19, "gtalk_heartbeat_ack_timeout_ms"

    const v20, 0xea60

    move-object v0, v4

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 539
    .local v19, heartbeatAck:I
    const-string v20, "gtalk_rmq2"

    const/16 v21, 0x1

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v23

    .line 542
    .local v23, useRmq2:Z
    const-string v20, "gtalk_support_rmq_and_rmq2"

    const/16 v21, 0x1

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v24

    .line 545
    .local v24, supportRmqAndRmq2:Z
    const-string v20, "gtalk_rmq2_include_stream_id"

    const/16 v21, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v25

    .line 548
    .local v25, rmq2IncludeStreamId:Z
    const-string v20, "gtalk_clock_skew_threshold_ms"

    const-wide/16 v21, 0x7530

    move-object v0, v4

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v26

    .line 552
    .local v26, clockSkewThresholdMs:J
    const-string v20, "gtalk_max_conn_history_records"

    const/16 v21, 0xa

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 557
    .local v28, maxConnectionHistoryRecords:I
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v29, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "gtalk:"

    aput-object v22, v20, v21

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 559
    .local v4, expSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    .line 560
    .local v20, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 561
    .local v21, name:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 562
    .local v22, value:Ljava/lang/String;
    sget-boolean v30, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v30, :cond_2

    .line 563
    const-string v30, "GTalkService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[Account] createAccountFromSettings: expSetting name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", val="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_2
    const-string v30, "gtalk:"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .end local v21           #name:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    .end local v22           #value:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/android/gsf/gtalkservice/Account;->CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;

    .local v4, arr$:[[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    move/from16 v21, v20

    .end local v20           #i$:I
    .local v21, i$:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v20, v4, v21

    .line 570
    .local v20, clientSettings:[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v20, v30

    .line 571
    .local v30, name:Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v20, v20, v31

    .line 572
    .local v20, value:Ljava/lang/String;
    sget-boolean v31, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v31, :cond_4

    .line 573
    const-string v31, "GTalkService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[Account] createAccountFromSettings:  clientSpecificSettings name="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", val="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_4
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    add-int/lit8 v20, v21, 0x1

    .end local v21           #i$:I
    .local v20, i$:I
    move/from16 v21, v20

    .end local v20           #i$:I
    .restart local v21       #i$:I
    goto :goto_1

    .end local v30           #name:Ljava/lang/String;
    :cond_5
    move-object/from16 v4, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    .line 580
    invoke-static/range {v4 .. v29}, Lcom/google/android/gsf/gtalkservice/Account;->createGTalkAccount(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;IIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJILjava/util/Map;)Lcom/google/android/gsf/gtalkservice/Account;

    .end local v4           #arr$:[[Ljava/lang/String;
    .end local v21           #i$:I
    .end local v22           #len$:I
    move-result-object p0

    .line 608
    .local p0, account:Lcom/google/android/gsf/gtalkservice/Account;
    return-object p0
.end method

.method private static createGTalkAccount(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;IIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJILjava/util/Map;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 31
    .parameter "service"
    .parameter "host"
    .parameter "port"
    .parameter "rmqAckInterval"
    .parameter "minReconnectDelayShort"
    .parameter "reconnectVariantShort"
    .parameter "minReconnectDelayLong"
    .parameter "reconnectVariantLong"
    .parameter "maxReconnectDelay"
    .parameter "shortNetworkDowntime"
    .parameter "heartbeatActive"
    .parameter "heartbeatIdle"
    .parameter "heartbeatSync"
    .parameter "heartbeatLong"
    .parameter "heartbeatWifi"
    .parameter "heartbeatAck"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"
    .parameter "useRmq2"
    .parameter "supportRmqAndRmq2"
    .parameter "rmq2IncludeStreamId"
    .parameter "clockSkewThreshold"
    .parameter "maxConnectionHistoryRecords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gsf/gtalkservice/service/GTalkService;",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gsf/gtalkservice/Account;"
        }
    .end annotation

    .prologue
    .line 303
    .local p25, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "GTalkService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create GTalk account: HOST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RMQ_ACK_INTERVAL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MIN_RECONNECT_DELAY_SHORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RECONNECT_VARIANT_SHORT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MIN_RECONNECT_DELAY_LONG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RECONNECT_VARIANT_LONG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MAX_RECONNECT_DELAY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SHORT_NETWORK_DOWNTIME="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_ACTIVE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_IDLE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_SYNC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_LONG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_WIFI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", HEART_BEAT_ACK="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", USERNAME="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DEVICE_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", USE_RMQ2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SUPPORT_RMQ_AND_RMQ2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RMQ2_INCL_STREAM_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CLOCK_SKEW_THRESHOLD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MAX_CONN_HISTORY_REC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/android/gsf/gtalkservice/Account;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move-object/from16 v21, p16

    move-object/from16 v22, p17

    move-object/from16 v23, p18

    move/from16 v24, p19

    move/from16 v25, p20

    move/from16 v26, p21

    move-wide/from16 v27, p22

    move/from16 v29, p24

    move-object/from16 v30, p25

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gsf/gtalkservice/Account;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v3

    .line 339
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 337
    .restart local p0
    .restart local p1
    .restart local p2
    :catch_0
    move-exception p0

    .line 338
    .local p0, ex:Ljava/lang/Exception;
    const-string p1, "GTalkService"

    .end local p1
    const-string p2, "Unable to create GTalk account"

    .end local p2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const/16 p0, 0x0

    goto :goto_0
.end method

.method private loginSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z
    .locals 10
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    .line 405
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getLoginSettings()Ljava/util/Map;

    move-result-object v3

    .line 408
    .local v3, otherLoginSetting:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 409
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 411
    .local v4, otherNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_0

    move v7, v9

    .line 430
    :goto_0
    return v7

    .line 415
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 416
    .local v1, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 417
    .local v5, value1:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 419
    .local v6, value2:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    .line 420
    :cond_2
    if-eq v5, v6, :cond_1

    move v7, v9

    .line 421
    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 425
    goto :goto_0

    .line 430
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #value1:Ljava/lang/String;
    .end local v6           #value2:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z
    .locals 9
    .parameter "other"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x2f

    .line 344
    if-nez p1, :cond_0

    move v4, v7

    .line 396
    :goto_0
    return v4

    .line 350
    :cond_0
    iget-object v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 351
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    if-nez v4, :cond_9

    move v0, v8

    .line 356
    .local v0, hostMatch:Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Account;->loginSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v1

    .line 358
    .local v1, isLoginSettingMatch:Z
    const-string v4, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "GTalkService"

    const-string v5, "Account.settingsMatch():"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-nez v0, :cond_1

    .line 364
    const-string v4, " mHost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    iget v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    if-eq v4, v5, :cond_2

    .line 367
    const-string v4, " mPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    :cond_2
    iget v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    if-eq v4, v5, :cond_3

    .line 370
    const-string v4, " mRmqAckInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_3
    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    if-eq v4, v5, :cond_4

    .line 374
    const-string v4, " mUseRmq2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 376
    :cond_4
    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    if-eq v4, v5, :cond_5

    .line 377
    const-string v4, " mSupportRmqAndRmq2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    :cond_5
    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    if-eq v4, v5, :cond_6

    .line 381
    const-string v4, " mRmq2IncludeStreamId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 384
    :cond_6
    if-nez v1, :cond_7

    .line 385
    const-string v4, " loginSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, out:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 390
    const-string v4, "GTalkService"

    const-string v5, "[Account] connectionSettingsMatch: no material changes"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v2           #out:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_8
    :goto_2
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    iget v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    if-ne v4, v5, :cond_c

    iget v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    if-ne v4, v5, :cond_c

    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    if-ne v4, v5, :cond_c

    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    if-ne v4, v5, :cond_c

    iget-boolean v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    if-ne v4, v5, :cond_c

    move v4, v8

    goto/16 :goto_0

    .end local v0           #hostMatch:Z
    .end local v1           #isLoginSettingMatch:Z
    :cond_9
    move v0, v7

    .line 351
    goto/16 :goto_1

    .line 353
    :cond_a
    iget-object v4, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0       #hostMatch:Z
    goto/16 :goto_1

    .line 392
    .restart local v1       #isLoginSettingMatch:Z
    .restart local v2       #out:Ljava/lang/String;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_b
    const-string v4, "GTalkService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #out:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_c
    move v4, v7

    .line 396
    goto/16 :goto_0
.end method

.method public getActiveHeartbeatInterval()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getClockSkewThresholdMs()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mClockSkewThresholdMs:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartbeatAckTimeout()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleHeartbeatInterval()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    return v0
.end method

.method public getLoginSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxConnectionHistoryRecords()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxConnectionHistoryRecords:I

    return v0
.end method

.method public getMaxReconnectDelay()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    return v0
.end method

.method public getMinReconnectDelayLong()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    return v0
.end method

.method public getMinReconnectDelayShort()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    return v0
.end method

.method public getNosyncHeartbeatInterval()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mNosyncHeartbeatInterval:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    return v0
.end method

.method public getReconnectVariantLong()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    return v0
.end method

.method public getReconnectVariantShort()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    return v0
.end method

.method public getRmq2IncludeStreamId()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    return v0
.end method

.method public getRmqAckInterval()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    return v0
.end method

.method public getShortNetworkDowntime()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    return v0
.end method

.method public getSupportRmqAndRmq2()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    return v0
.end method

.method public getSyncHeartbeatInterval()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    return v0
.end method

.method public getUseRmq2()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiHeartbeatInterval()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mWifiHeartbeatInterval:I

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRmqAckInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUseRmq2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportRmqAndRmq2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRmq2IncludeStreamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMinReconnectDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReconnectVariantShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMinReconnectDelayLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReconnectVariantLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaxReconnectDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mShortNetworkDowntime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mActiveHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIdleHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSyncHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNosyncHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mNosyncHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHeartbeatAckTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
