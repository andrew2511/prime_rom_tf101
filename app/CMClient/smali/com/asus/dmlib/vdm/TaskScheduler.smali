.class public Lcom/asus/dmlib/vdm/TaskScheduler;
.super Landroid/os/Handler;
.source "TaskScheduler.java"


# static fields
.field public static final NETWORK_INITIAL_TRIGGER_DM_SESSION:I = 0x1

.field public static final RESUME_DOWNLOAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskScheduler"

.field public static final TRIGGER_DL_SESSION:I = 0x3

.field public static final TRIGGER_REPORT_SESSION:I = 0x4

.field public static final USER_INITIAL_TRIGGER_DM_SESSION:I

.field private static mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

.field private static mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

.field private static mScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private static mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;


# instance fields
.field private mPengingMessage:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/asus/dmlib/vdm/SessionStateNotifier;)V
    .locals 1
    .parameter "scheduleLoopder"
    .parameter "sscNotifier"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/asus/dmlib/vdm/TaskScheduler;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;Lcom/asus/dmlib/vdm/SessionStateNotifier;Lcom/asus/dmlib/vdm/PLFactory;)Lcom/asus/dmlib/vdm/TaskScheduler;
    .locals 1
    .parameter "looper"
    .parameter "sscNotifier"
    .parameter "plFactory"

    .prologue
    .line 61
    new-instance v0, Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-direct {v0, p0, p1}, Lcom/asus/dmlib/vdm/TaskScheduler;-><init>(Landroid/os/Looper;Lcom/asus/dmlib/vdm/SessionStateNotifier;)V

    sput-object v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 62
    sput-object p2, Lcom/asus/dmlib/vdm/TaskScheduler;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    .line 63
    sput-object p1, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    .line 65
    sget-object v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    return-object v0
.end method

.method private handleRespons(Lcom/asus/dmlib/syncml/pack/BearerPackage;Lcom/asus/dmlib/syncml/pack/ClientPackage;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/transport/HttpLinkChannel;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 17
    .parameter "rcvBearerPkg"
    .parameter "pkgOne"
    .parameter "dmAcc"
    .parameter "httpLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/asus/dmlib/syncml/exception/MsgParseException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "Content-Type"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 387
    .local v7, contentType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 388
    .local v10, rcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;
    const/4 v9, 0x0

    .line 390
    .local v9, outBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B

    move-result-object v5

    .line 392
    .local v5, bearerMsgBody:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 394
    .local v4, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v7

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->parseRcvMsg(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/HashMap;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v10

    .line 395
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setSyncML(Lcom/asus/dmlib/syncml/message/container/SyncML;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v12

    invoke-virtual {v12}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, clientSessionID:Ljava/lang/String;
    const-string v12, "TaskScheduler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rcv SyncMLMsg is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v10, :cond_1

    const-string v14, "null"

    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, servSessionID:Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 404
    new-instance v12, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;

    invoke-static {}, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->getInstance()Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    move-result-object v13

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;-><init>(Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;Lcom/asus/dmlib/mo/DMAcc;)V

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->process(Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v9

    .line 411
    if-nez v9, :cond_0

    .line 413
    :try_start_0
    const-string v12, "TaskScheduler"

    const-string v13, "============= DMTree.getDMTree().writeToPersistentStorage() ============="

    invoke-static {v12, v13}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v12

    invoke-virtual {v12}, Lcom/asus/dmlib/tree/DMTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_1
    sget-object v12, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v13, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v14, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v15, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    sget-object v16, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v12 .. v16}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 427
    const/4 v12, 0x0

    sput-object v12, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    move-object v12, v0

    if-eqz v12, :cond_0

    .line 430
    const-string v12, "TaskScheduler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add mPengingMessage to queue: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    move-object v14, v0

    iget v14, v14, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    move-object v12, v0

    const-wide/16 v13, 0x64

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    .line 438
    :cond_0
    return-object v9

    .line 398
    .end local v11           #servSessionID:Ljava/lang/String;
    :cond_1
    const-string v14, "not null"

    goto/16 :goto_0

    .line 406
    .restart local v11       #servSessionID:Ljava/lang/String;
    :cond_2
    new-instance v12, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The SessionID of received SyncML msg is not correct. (Client\'s init SessionID is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Server responsed SessionID is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 415
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 416
    .local v8, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V
    .locals 1
    .parameter "initialCode"
    .parameter "dmAcc"
    .parameter "pkgOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;[Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;[Ljava/lang/String;)V
    .locals 20
    .parameter "initialCode"
    .parameter "dmAcc"
    .parameter "pkgOne"
    .parameter "extData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/asus/dmlib/mo/DMAcc;->getInstances()Ljava/util/HashMap;

    move-result-object v5

    .line 263
    .local v5, accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 264
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 265
    .local v12, outPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    const/4 v7, 0x0

    .line 266
    .local v7, errCode:Ljava/lang/String;
    const/4 v10, 0x0

    .line 268
    .local v10, isDMSessionAborted:Z
    sget-object v15, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_0

    .line 269
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 270
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/asus/dmlib/mo/DMAcc;

    .line 280
    .restart local p2
    :cond_0
    if-nez p3, :cond_1

    .line 281
    if-eqz p4, :cond_4

    .line 282
    new-instance p3, Lcom/asus/dmlib/syncml/pack/ClientPackage;

    .end local p3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/syncml/pack/ClientPackage;-><init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;[Ljava/lang/String;)V

    .line 288
    .restart local p3
    :cond_1
    :goto_0
    const-string v15, "TaskScheduler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Package One:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v9, Lcom/asus/dmlib/transport/HttpLinkChannel;

    invoke-direct {v9}, Lcom/asus/dmlib/transport/HttpLinkChannel;-><init>()V

    .line 293
    .local v9, httpLink:Lcom/asus/dmlib/transport/HttpLinkChannel;
    sget-object v15, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v16, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v17, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v18, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    sget-object v19, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v15 .. v19}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 300
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/asus/dmlib/vdm/VdmConfig;->getEncodeWBXMLMsg()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toByteArray(Ljava/lang/String;)[B

    move-result-object v15

    move-object v13, v15

    .line 303
    .local v13, pkgOneContent:[B
    :goto_1
    new-instance v6, Lcom/asus/dmlib/syncml/pack/BearerPackage;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v6, v15, v13}, Lcom/asus/dmlib/syncml/pack/BearerPackage;-><init>(Ljava/util/HashMap;[B)V

    .line 304
    .local v6, bearerPkgOne:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    invoke-virtual/range {p2 .. p2}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15, v6}, Lcom/asus/dmlib/transport/HttpLinkChannel;->sendSyncMLMsg(Ljava/lang/String;Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v14

    .line 306
    .local v14, rcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :cond_2
    if-eqz v14, :cond_8

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleRespons(Lcom/asus/dmlib/syncml/pack/BearerPackage;Lcom/asus/dmlib/syncml/pack/ClientPackage;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/transport/HttpLinkChannel;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :try_end_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/MsgParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/asus/dmlib/syncml/exception/DMException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v12

    .line 310
    if-nez v12, :cond_6

    .line 368
    :goto_2
    return-void

    .line 272
    .end local v6           #bearerPkgOne:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .end local v9           #httpLink:Lcom/asus/dmlib/transport/HttpLinkChannel;
    .end local v13           #pkgOneContent:[B
    .end local v14           #rcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :cond_3
    const-string v15, "TaskScheduler"

    const-string v16, "No DMAcc exists."

    invoke-static/range {v15 .. v16}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v15, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v16, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_TREE_NODE_MISSING:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual/range {v16 .. v16}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 285
    :cond_4
    new-instance p3, Lcom/asus/dmlib/syncml/pack/ClientPackage;

    .end local p3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;-><init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;)V

    .restart local p3
    goto/16 :goto_0

    .line 300
    .restart local v9       #httpLink:Lcom/asus/dmlib/transport/HttpLinkChannel;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v15

    invoke-virtual {v15}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    move-object v13, v15

    goto :goto_1

    .line 313
    .restart local v6       #bearerPkgOne:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .restart local v13       #pkgOneContent:[B
    .restart local v14       #rcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :cond_6
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15, v12}, Lcom/asus/dmlib/transport/HttpLinkChannel;->sendSyncMLMsg(Ljava/lang/String;Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v14

    .line 314
    invoke-virtual {v12}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse()Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    .line 315
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setHmacInUse(Z)V
    :try_end_1
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/asus/dmlib/syncml/exception/MsgParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/asus/dmlib/syncml/exception/DMException; {:try_start_1 .. :try_end_1} :catch_5

    .line 344
    :cond_7
    :goto_3
    if-eqz v10, :cond_2

    .line 346
    sget-object v15, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v16, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v17, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v18

    sget-object v19, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v15 .. v19}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 353
    const/4 v15, 0x0

    sput-object v15, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    goto :goto_2

    .line 318
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 319
    .local v8, ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 320
    const/4 v10, 0x1

    .line 321
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/exception/SyncMLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 322
    .end local v8           #ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    :catch_1
    move-exception v15

    move-object v8, v15

    .line 323
    .local v8, ex:Ljava/lang/IllegalStateException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 324
    const/4 v10, 0x1

    .line 325
    sget-object v15, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INTERNAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v15}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 326
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v15

    move-object v8, v15

    .line 327
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 328
    const/4 v10, 0x1

    .line 329
    sget-object v15, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INVALID_CALL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v15}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 330
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v15

    move-object v8, v15

    .line 331
    .local v8, ex:Lcom/asus/dmlib/syncml/exception/MsgParseException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 332
    const/4 v10, 0x1

    .line 333
    sget-object v15, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_SYNCML_PARSE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v15}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 334
    .end local v8           #ex:Lcom/asus/dmlib/syncml/exception/MsgParseException;
    :catch_4
    move-exception v15

    move-object v8, v15

    .line 335
    .local v8, ex:Ljava/io/IOException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 336
    const/4 v10, 0x1

    .line 337
    sget-object v15, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INTERNAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v15}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 338
    .end local v8           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v15

    move-object v8, v15

    .line 339
    .local v8, ex:Lcom/asus/dmlib/syncml/exception/DMException;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 340
    const/4 v10, 0x1

    .line 341
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/exception/DMException;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 360
    .end local v8           #ex:Lcom/asus/dmlib/syncml/exception/DMException;
    :cond_8
    sget-object v15, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v16, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v17, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v18, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_NON_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    sget-object v19, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v15 .. v19}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 367
    const/4 v15, 0x0

    sput-object v15, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    goto/16 :goto_2
.end method

.method private parseRcvMsg(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/HashMap;)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 5
    .parameter "in"
    .parameter "contentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/asus/dmlib/syncml/exception/MsgParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    .local p3, rcvHttpHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 372
    .local v0, parceResult:Lcom/asus/dmlib/syncml/message/container/SyncML;
    new-instance v1, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;

    invoke-direct {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;-><init>()V

    .line 374
    .local v1, parser:Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;
    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const-string v2, "Accept-Charset"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;->parseBinaryXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 376
    .restart local p0
    :cond_0
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    const-string v2, "Accept-Charset"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/asus/dmlib/syncml/message/SyncMLMsgParser;->parseTextXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    goto :goto_0

    .line 379
    .restart local p0
    :cond_1
    const-string v2, "TaskScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ContenType (i.e., "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not correct!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addPendingMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 253
    const-string v0, "TaskScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add message to pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/asus/dmlib/vdm/TaskScheduler;->mPengingMessage:Landroid/os/Message;

    .line 255
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 73
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 241
    .end local p1
    :goto_0
    return-void

    .line 76
    .restart local p1
    :pswitch_0
    :try_start_0
    const-string v18, "TaskScheduler"

    const-string v19, "======== USER_INITIAL_TRIGGER_DM_SESSION ========"

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 79
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/asus/dmlib/vdm/SessionInitiator;

    sput-object v5, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    .line 80
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "c2dm_reg_id"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v11, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "c2dm_reg_app_name"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v11, v18

    const/16 v18, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "vibe_reg_id"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v11, v18

    .line 85
    .local v11, extData:[Ljava/lang/String;
    sget-object v18, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    .end local v11           #extData:[Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v10, v18

    .line 90
    .local v10, ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 93
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/exception/SyncMLException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    sget-object v22, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 100
    const/16 v18, 0x0

    sput-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    goto :goto_0

    .line 88
    .end local v10           #ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    :cond_0
    :try_start_1
    sget-object v18, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V
    :try_end_1
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v18

    move-object/from16 v10, v18

    .line 102
    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 105
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    sget-object v22, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 112
    const/16 v18, 0x0

    sput-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mInitiator:Lcom/asus/dmlib/vdm/SessionInitiator;

    goto/16 :goto_0

    .line 118
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    :try_start_2
    sget-object v18, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->NETWORK_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/asus/dmlib/mo/DMAcc;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V
    :try_end_2
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 119
    :catch_2
    move-exception v18

    move-object/from16 v10, v18

    .line 120
    .local v10, ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 123
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/exception/SyncMLException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto/16 :goto_0

    .line 129
    .end local v10           #ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    :catch_3
    move-exception v18

    move-object/from16 v10, v18

    .line 130
    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 133
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto/16 :goto_0

    .line 143
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local p1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/asus/dmlib/fumo/FotaDLExecuter;

    .line 144
    .local v16, pDLHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;
    invoke-static {}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->values()[Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setHandleType(Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V

    .line 145
    sget-object v18, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 146
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v21, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto/16 :goto_0

    .line 154
    .end local v16           #pDLHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/asus/dmlib/fumo/FotaDLExecuter;

    .line 155
    .local v7, dlHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v18

    sget-object v19, Lcom/asus/dmlib/fumo/FumoExecHandler;->PREF_FOTA_HANDLE_TYPE:Ljava/lang/String;

    invoke-interface/range {v18 .. v19}, Lcom/asus/dmlib/vdm/PLRegistry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, handleType:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 159
    :try_start_3
    invoke-static {v12}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->valueOf(Ljava/lang/String;)Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setHandleType(Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V

    .line 160
    invoke-virtual {v7}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->findStatus()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 161
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v21, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 170
    :catch_4
    move-exception v18

    move-object/from16 v9, v18

    .line 171
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "TaskScheduler"

    const-string v19, "Unknow handleType"

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_4
    const-string v18, "TaskScheduler"

    const-string v19, "Can\'t resume."

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 175
    :cond_2
    const-string v18, "TaskScheduler"

    const-string v19, "handleType is null"

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v7           #dlHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;
    .end local v12           #handleType:Ljava/lang/String;
    :pswitch_4
    const/4 v8, 0x0

    .line 181
    .local v8, dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    :try_start_5
    invoke-static {}, Lcom/asus/dmlib/mo/DMAcc;->getInstances()Ljava/util/HashMap;

    move-result-object v5

    .line 182
    .local v5, accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 184
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 185
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/asus/dmlib/mo/DMAcc;

    move-object v8, v0

    .line 194
    new-instance v17, Lcom/asus/dmlib/syncml/pack/ClientPackage;

    sget-object v18, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;-><init>(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;)V

    .line 197
    .local v17, pkgOne:Lcom/asus/dmlib/syncml/pack/ClientPackage;
    new-instance v15, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    invoke-direct {v15}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>()V

    .line 198
    .local v15, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    const-string v18, "int"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setFormat(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    .end local v5           #accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v18, v5, v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setType(Ljava/lang/String;)V

    .line 200
    const-string v18, "Mark"

    const-string v19, "indeterminate"

    const-string v20, "xmlns"

    const-string v21, "syncml:metinf"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v13, Lcom/asus/dmlib/syncml/dm/message/description/Item;

    invoke-direct {v13}, Lcom/asus/dmlib/syncml/dm/message/description/Item;-><init>()V

    .line 204
    .local v13, item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    new-instance v18, Lcom/asus/dmlib/syncml/message/common/Source;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v19, v5, v19

    invoke-direct/range {v18 .. v19}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    .line 205
    invoke-virtual {v13, v15}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 206
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/message/description/Item;->setData(Ljava/lang/String;)V

    .line 209
    new-instance v6, Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-direct {v6}, Lcom/asus/dmlib/syncml/message/command/Alert;-><init>()V

    .line 210
    .local v6, alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    const-string v18, "3"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/command/Alert;->setCmdID(Ljava/lang/String;)V

    .line 211
    const/16 v18, 0x4ca

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/command/Alert;->setAlertCode(I)V

    .line 212
    invoke-virtual {v6, v13}, Lcom/asus/dmlib/syncml/message/command/Alert;->addItem(Lcom/asus/dmlib/syncml/dm/message/description/Item;)V

    .line 214
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->addCommand(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 216
    sget-object v18, Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;->CLIENT_INITIAL:Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->handleTriggerSession(Lcom/asus/dmlib/syncml/pack/ClientPackage$AlertInitialCode;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V
    :try_end_5
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 217
    .end local v6           #alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    .end local v13           #item:Lcom/asus/dmlib/syncml/dm/message/description/Item;
    .end local v14           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v17           #pkgOne:Lcom/asus/dmlib/syncml/pack/ClientPackage;
    :catch_5
    move-exception v18

    move-object/from16 v10, v18

    .line 218
    .local v10, ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 221
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/exception/SyncMLException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto/16 :goto_0

    .line 187
    .end local v10           #ex:Lcom/asus/dmlib/syncml/exception/SyncMLException;
    .restart local v5       #accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    .restart local v14       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :try_start_6
    const-string v18, "TaskScheduler"

    const-string v19, "No DMAcc exists."

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v18, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_TREE_NODE_MISSING:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual/range {v19 .. v19}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6
    .catch Lcom/asus/dmlib/syncml/exception/SyncMLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    .line 227
    .end local v5           #accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    .end local v14           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_6
    move-exception v18

    move-object/from16 v10, v18

    .line 228
    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 231
    sget-object v18, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v19, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    sget-object v20, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->fromErrCode(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    .locals 3
    .parameter "state"
    .parameter "lastError"

    .prologue
    .line 244
    sget-object v0, Lcom/asus/dmlib/vdm/TaskScheduler;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 250
    return-void
.end method
