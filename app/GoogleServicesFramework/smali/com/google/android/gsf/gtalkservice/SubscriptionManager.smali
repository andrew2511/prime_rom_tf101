.class public Lcom/google/android/gsf/gtalkservice/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# static fields
.field private static final CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "subscriptionStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subscriptionType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method private computeWhereClause()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, whereClause:Ljava/lang/StringBuilder;
    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mWhereClause:Ljava/lang/String;

    .line 111
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 375
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubsMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 379
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubsMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method private notifyNewSubscriptionRequest(Ljava/lang/String;J)V
    .locals 1
    .parameter "user"
    .parameter "account"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->notifyInvitationViaStatusNotifier(Ljava/lang/String;J)V

    .line 351
    return-void
.end method

.method private notifySubscriptionRequestRemoved(Ljava/lang/String;J)V
    .locals 2
    .parameter "user"
    .parameter "account"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 369
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 372
    return-void
.end method

.method private processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 21
    .parameter "presence"

    .prologue
    .line 232
    if-eqz p1, :cond_1

    .line 233
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v14

    .line 234
    .local v14, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, from:Ljava/lang/String;
    invoke-static {v10}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v8

    .line 237
    .local v8, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v5

    .line 239
    .local v5, accountId:J
    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v14

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 240
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "got presence SUBSCRIBE from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 241
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->receivedSubscriptionRequestFromContact(Ljava/lang/String;J)V

    .line 345
    .end local v5           #accountId:J
    .end local v7           #bareJid:Ljava/lang/String;
    .end local v8           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v10           #from:Ljava/lang/String;
    .end local v14           #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :cond_1
    :goto_0
    return-void

    .line 242
    .restart local v5       #accountId:J
    .restart local v7       #bareJid:Ljava/lang/String;
    .restart local v8       #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .restart local v10       #from:Ljava/lang/String;
    .restart local v14       #type:Lorg/jivesoftware/smack/packet/Presence$Type;
    :cond_2
    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v14

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 249
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "got presence UNSUBSCRIBE from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 251
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 258
    new-instance v16, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct/range {v16 .. v17}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 259
    .local v16, unsubscribed:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 261
    :try_start_0
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v9

    .line 263
    .local v9, ex:Ljava/lang/IllegalStateException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ProcessPacketCallback: caught "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v9           #ex:Ljava/lang/IllegalStateException;
    .end local v16           #unsubscribed:Lorg/jivesoftware/smack/packet/Presence;
    :cond_4
    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v14

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 269
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "got presence SUBSCRIBED from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 276
    :cond_5
    new-instance v13, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 277
    .local v13, subscribe:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 279
    :try_start_1
    invoke-virtual {v8, v13}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    move-wide v2, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 287
    .local v11, fromContactId:J
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-lez v17, :cond_1

    .line 288
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fromContactId is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 289
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->presenceHasUser(Landroid/content/ContentResolver;J)Z

    move-result v17

    if-nez v17, :cond_1

    .line 290
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_7

    const-string v17, "contact has a pending subscription"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 292
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v17

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object v1, v10

    move-wide v2, v5

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 280
    .end local v11           #fromContactId:J
    :catch_1
    move-exception v9

    .line 281
    .restart local v9       #ex:Ljava/lang/IllegalStateException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ProcessPacketCallback: caught "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 308
    .end local v9           #ex:Ljava/lang/IllegalStateException;
    .end local v13           #subscribe:Lorg/jivesoftware/smack/packet/Presence;
    :cond_8
    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v14

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 316
    sget-boolean v17, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v17, :cond_9

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "got presence UNSUBSCRIBED from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 336
    :cond_9
    new-instance v15, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v17, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 337
    .local v15, unsubscribe:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 339
    :try_start_2
    invoke-virtual {v8, v15}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 340
    :catch_2
    move-exception v9

    .line 341
    .restart local v9       #ex:Ljava/lang/IllegalStateException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ProcessPacketCallback: caught "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSelectionArgs(Ljava/lang/String;J)V
    .locals 3
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 117
    return-void
.end method


# virtual methods
.method public acceptRequestForUser(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "username"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 189
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept subscription request from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 200
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, p5, v3}, Lcom/google/android/gsf/gtalkservice/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 203
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 204
    .local v1, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptRequestForUser caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declineRequestForUser(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "user"

    .prologue
    .line 215
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decline subscription request from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->removeSubscriptionRequestFromUser(Ljava/lang/String;J)V

    .line 220
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 221
    .local v1, response:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 227
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "declineRequestForUser caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 0
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 67
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->computeWhereClause()V

    .line 68
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 97
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSubscribeListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 103
    return-void
.end method

.method public notifyInvitationViaStatusNotifier(Ljava/lang/String;J)V
    .locals 8
    .parameter "user"
    .parameter "account"

    .prologue
    .line 354
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNewSubscriptionRequest ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") call notifier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v7

    .line 357
    .local v7, service:Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 358
    .local v6, resource:Landroid/content/res/Resources;
    const v1, 0x7f080051

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v6, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 361
    .local v0, notifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifySubscriptionRequest(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 363
    return-void
.end method

.method receivedSubscriptionRequestFromContact(Ljava/lang/String;J)V
    .locals 18
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 120
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receivedSubscriptionRequestFromContact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->updateSelectionArgs(Ljava/lang/String;J)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->CONTACT_SUBSCRIPTION_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mWhereClause:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mSelectionArgs:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 130
    .local v13, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 131
    .local v14, exist:Z
    const/16 v16, 0x0

    .line 132
    .local v16, subscriptionStatus:I
    const/16 v17, 0x0

    .line 134
    .local v17, subscriptionType:I
    if-eqz v13, :cond_2

    .line 136
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const/4 v14, 0x1

    .line 138
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 139
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 142
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_2
    const/4 v15, 0x1

    .line 148
    .local v15, notify:Z
    if-nez v14, :cond_5

    .line 149
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to contacts db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    move-wide/from16 v4, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v12}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;

    .line 177
    :goto_0
    if-eqz v15, :cond_4

    .line 178
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->notifyNewSubscriptionRequest(Ljava/lang/String;J)V

    .line 180
    :cond_4
    return-void

    .line 142
    .end local v15           #notify:Z
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 161
    .restart local v15       #notify:Z
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/4 v3, 0x5

    move v0, v3

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 163
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_6

    const-string v3, "receivedSubscriptionRequestFromContact: old invitation"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->log(Ljava/lang/String;)V

    .line 164
    :cond_6
    const/4 v15, 0x0

    goto :goto_0

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    move-wide/from16 v4, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v12}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I

    goto :goto_0
.end method

.method removeSubscriptionRequestFromUser(Ljava/lang/String;J)V
    .locals 1
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->notifySubscriptionRequestRemoved(Ljava/lang/String;J)V

    .line 185
    return-void
.end method
