.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private eventMutex:[I

.field private isStopped:Z

.field private pendingEvents:Ljava/util/LinkedList;

.field private refCount:I

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 5
    .parameter "sipStackImpl"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v0, myThread:Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 74
    const-string v1, "EventScannerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 5
    .parameter "eventWrapper"

    .prologue
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 83
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 85
    :try_start_27
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v0

    .line 92
    return-void

    .line 90
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 20
    .parameter "eventWrapper"

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    move-object v8, v0

    .line 129
    .local v8, sipEvent:Ljava/util/EventObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sipEvent = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "source = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_3d
    const/4 v9, 0x0

    .line 135
    .local v9, sipListener:Ljavax/sip/SipListener;
    instance-of v14, v8, Ljavax/sip/IOExceptionEvent;

    if-nez v14, :cond_23a

    .line 136
    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v9

    .line 141
    :goto_4c
    instance-of v14, v8, Ljavax/sip/RequestEvent;

    if-eqz v14, :cond_461

    .line 145
    :try_start_50
    move-object v0, v8

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/message/SIPRequest;

    .line 148
    .local v10, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_aa

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deliverEvent : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " transaction "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sipEvent.serverTx = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v11, v0

    invoke-virtual {v11}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 168
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v10, v15}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v13

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 171
    .local v13, tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v13, :cond_2fd

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v14

    if-nez v14, :cond_2fd

    .line 180
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_245

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v14

    if-eqz v14, :cond_245

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    const/4 v15, 0x2

    if-eq v14, v15, :cond_e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v14

    if-eqz v14, :cond_245

    .line 185
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_101

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "Detected broken client sending ACK with same branch! Passing..."

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 211
    :cond_101
    :goto_101
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v10, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_109
    .catchall {:try_start_50 .. :try_end_109} :catchall_3c0

    .line 215
    :try_start_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_15c

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Calling listener "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Calling listener "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 223
    :cond_15c
    if-eqz v9, :cond_165

    .line 224
    move-object v0, v8

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v11, v0

    invoke-interface {v9, v11}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    .line 226
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_193

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_193
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_1aa

    .line 233
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 235
    .local v4, dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v4, :cond_1aa

    .line 236
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_1aa
    .catchall {:try_start_109 .. :try_end_1aa} :catchall_3c0
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_1aa} :catch_451

    .line 246
    .end local v4           #dialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1aa
    :goto_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_1e2

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v8, Ljavax/sip/RequestEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_1e2
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_200

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_200

    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_200
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_21a

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_21a
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_239

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    sget-object v15, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    :goto_236
    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 448
    .end local v9           #sipListener:Ljavax/sip/SipListener;
    .end local v10           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v13           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_239
    :goto_239
    return-void

    .line 138
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    .restart local v9       #sipListener:Ljavax/sip/SipListener;
    .restart local p0
    :cond_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v9

    goto/16 :goto_4c

    .line 191
    .restart local v10       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v13       #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_245
    :try_start_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_26f

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "transaction already exists! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_26f
    .catchall {:try_start_245 .. :try_end_26f} :catchall_3c0

    .line 246
    :cond_26f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_2a7

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v8, Ljavax/sip/RequestEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_2a7
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_2c5

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_2c5

    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_2c5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_2df

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_2df
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_239

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    sget-object v15, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_236

    .line 196
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    .restart local p0
    :cond_2fd
    :try_start_2fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v14

    if-eqz v14, :cond_3af

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_321

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "transaction already exists!!"

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_321
    .catchall {:try_start_2fd .. :try_end_321} :catchall_3c0

    .line 246
    :cond_321
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_359

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Done processing Message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v8, Ljavax/sip/RequestEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_359
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_377

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_377

    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_377
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_391

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_391
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ACK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_239

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    sget-object v15, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    goto/16 :goto_236

    .line 206
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    .restart local p0
    :cond_3af
    :try_start_3af
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v12, v0

    check-cast v12, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 207
    .local v12, st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14, v12}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_3be
    .catchall {:try_start_3af .. :try_end_3be} :catchall_3c0

    goto/16 :goto_101

    .line 246
    .end local v10           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12           #st:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v13           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catchall_3c0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v15, v0

    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v15

    if-eqz v15, :cond_3f9

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v15, v0

    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Done processing Message "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    check-cast v8, Ljavax/sip/RequestEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_3f9
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    if-eqz v15, :cond_417

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_417

    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v2, v0

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_417
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    if-eqz v15, :cond_431

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_431
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ACK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_450

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    sget-object v16, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 246
    :cond_450
    throw v14

    .line 239
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    .restart local v10       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v13       #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p0
    :catch_451
    move-exception v14

    move-object v5, v14

    .line 243
    .local v5, ex:Ljava/lang/Exception;
    :try_start_453
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_45f
    .catchall {:try_start_453 .. :try_end_45f} :catchall_3c0

    goto/16 :goto_1aa

    .line 273
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v10           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v13           #tx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_461
    instance-of v14, v8, Ljavax/sip/ResponseEvent;

    if-eqz v14, :cond_5b8

    .line 275
    :try_start_465
    move-object v0, v8

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v6, v0

    .line 276
    .local v6, responseEvent:Ljavax/sip/ResponseEvent;
    invoke-virtual {v6}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v11

    check-cast v11, Lgov/nist/javax/sip/message/SIPResponse;

    .line 278
    .local v11, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v6}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_475
    .catchall {:try_start_465 .. :try_end_475} :catchall_59c

    .line 280
    .local v7, sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_4a3

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Calling listener for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 286
    :cond_4a3
    if-eqz v9, :cond_4b4

    .line 287
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v13, v0

    .line 288
    .local v13, tx:Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v13, :cond_4af

    .line 289
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 291
    :cond_4af
    check-cast v8, Ljavax/sip/ResponseEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    .line 299
    .end local v13           #tx:Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_4b4
    if-eqz v7, :cond_4f4

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v14

    if-eqz v14, :cond_4c8

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v14

    sget-object v15, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v14, v15}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4f4

    :cond_4c8
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    const/16 v15, 0x1e1

    if-eq v14, v15, :cond_4d8

    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    const/16 v15, 0x198

    if-ne v14, v15, :cond_4f4

    .line 303
    :cond_4d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_4f1

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "Removing dialog on 408 or 481 response"

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 307
    :cond_4f1
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V

    .line 327
    :cond_4f4
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_547

    if-eqz v7, :cond_547

    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_547

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_53c

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Warning! unacknowledged dialog. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 338
    :cond_53c
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_547
    .catchall {:try_start_475 .. :try_end_547} :catchall_59c
    .catch Ljava/lang/Exception; {:try_start_475 .. :try_end_547} :catch_58d

    .line 349
    :cond_547
    :goto_547
    :try_start_547
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 350
    .local v3, ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v3, :cond_571

    sget-object v14, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v15

    if-ne v14, v15, :cond_571

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    if-eqz v14, :cond_571

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_571

    .line 359
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_571
    .catchall {:try_start_547 .. :try_end_571} :catchall_59c

    .line 363
    :cond_571
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    if-eqz v14, :cond_239

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v14

    if-eqz v14, :cond_239

    .line 365
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_239

    .line 340
    .end local v3           #ct:Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_58d
    move-exception v14

    move-object v5, v14

    .line 344
    .restart local v5       #ex:Ljava/lang/Exception;
    :try_start_58f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_59b
    .catchall {:try_start_58f .. :try_end_59b} :catchall_59c

    goto :goto_547

    .line 363
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v6           #responseEvent:Ljavax/sip/ResponseEvent;
    .end local v7           #sipDialog:Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v11           #sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_59c
    move-exception v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    if-eqz v15, :cond_5b7

    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v15

    if-eqz v15, :cond_5b7

    .line 365
    move-object/from16 v0, p1

    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v15, v0

    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 363
    :cond_5b7
    throw v14

    .line 369
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    :cond_5b8
    instance-of v14, v8, Ljavax/sip/TimeoutEvent;

    if-eqz v14, :cond_5d5

    .line 373
    if-eqz v9, :cond_239

    .line 374
    :try_start_5be
    check-cast v8, Ljavax/sip/TimeoutEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_5c3
    .catch Ljava/lang/Exception; {:try_start_5be .. :try_end_5c3} :catch_5c5

    goto/16 :goto_239

    .line 375
    :catch_5c5
    move-exception v14

    move-object v5, v14

    .line 379
    .restart local v5       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 382
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    :cond_5d5
    instance-of v14, v8, Lgov/nist/javax/sip/DialogTimeoutEvent;

    if-eqz v14, :cond_5f8

    .line 385
    if-eqz v9, :cond_239

    :try_start_5db
    instance-of v14, v9, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v14, :cond_239

    .line 386
    check-cast v9, Lgov/nist/javax/sip/SipListenerExt;

    .end local v9           #sipListener:Ljavax/sip/SipListener;
    check-cast v8, Lgov/nist/javax/sip/DialogTimeoutEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_5e6
    .catch Ljava/lang/Exception; {:try_start_5db .. :try_end_5e6} :catch_5e8

    goto/16 :goto_239

    .line 388
    :catch_5e8
    move-exception v14

    move-object v5, v14

    .line 392
    .restart local v5       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 395
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    .restart local v9       #sipListener:Ljavax/sip/SipListener;
    :cond_5f8
    instance-of v14, v8, Ljavax/sip/IOExceptionEvent;

    if-eqz v14, :cond_615

    .line 397
    if-eqz v9, :cond_239

    .line 398
    :try_start_5fe
    check-cast v8, Ljavax/sip/IOExceptionEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_603
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_603} :catch_605

    goto/16 :goto_239

    .line 399
    :catch_605
    move-exception v14

    move-object v5, v14

    .line 400
    .restart local v5       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 402
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    :cond_615
    instance-of v14, v8, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v14, :cond_6b6

    .line 404
    :try_start_619
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_680

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "About to deliver transactionTerminatedEvent"

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tx = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tx = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    :cond_680
    if-eqz v9, :cond_239

    .line 418
    check-cast v8, Ljavax/sip/TransactionTerminatedEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_687
    .catch Ljava/lang/AbstractMethodError; {:try_start_619 .. :try_end_687} :catch_689
    .catch Ljava/lang/Exception; {:try_start_619 .. :try_end_687} :catch_6a6

    goto/16 :goto_239

    .line 420
    :catch_689
    move-exception v14

    move-object v2, v14

    .line 422
    .local v2, ame:Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_239

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_239

    .line 427
    .end local v2           #ame:Ljava/lang/AbstractMethodError;
    :catch_6a6
    move-exception v14

    move-object v5, v14

    .line 428
    .restart local v5       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 430
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    :cond_6b6
    instance-of v14, v8, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v14, :cond_6f0

    .line 432
    if-eqz v9, :cond_239

    .line 433
    :try_start_6bc
    check-cast v8, Ljavax/sip/DialogTerminatedEvent;

    .end local v8           #sipEvent:Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_6c1
    .catch Ljava/lang/AbstractMethodError; {:try_start_6bc .. :try_end_6c1} :catch_6c3
    .catch Ljava/lang/Exception; {:try_start_6bc .. :try_end_6c1} :catch_6e0

    goto/16 :goto_239

    .line 435
    :catch_6c3
    move-exception v14

    move-object v2, v14

    .line 437
    .restart local v2       #ame:Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_239

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    const-string v15, "Unable to call sipListener.processDialogTerminated"

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_239

    .line 440
    .end local v2           #ame:Ljava/lang/AbstractMethodError;
    :catch_6e0
    move-exception v14

    move-object v5, v14

    .line 441
    .restart local v5       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    invoke-interface {v14, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 445
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v8       #sipEvent:Ljava/util/EventObject;
    :cond_6f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bad event"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto/16 :goto_239
.end method

.method public forceStop()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 120
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v0

    .line 125
    return-void

    .line 123
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public incrementRefcount()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 61
    :try_start_3
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public run()V
    .registers 11

    .prologue
    .line 459
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v5

    .line 462
    .local v5, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_a
    const/4 v1, 0x0

    .line 465
    .local v1, eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v6
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_e3

    .line 467
    :goto_e
    :try_start_e
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 471
    iget-boolean v7, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-eqz v7, :cond_46

    .line 472
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 473
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Stopped event scanner!!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 475
    :cond_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_fc

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_45

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    :goto_42
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 490
    :cond_45
    return-void

    .line 482
    :cond_46
    :try_start_46
    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 485
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_e

    .line 486
    :catch_53
    move-exception v7

    move-object v3, v7

    .line 488
    .local v3, ex:Ljava/lang/InterruptedException;
    :try_start_55
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 489
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Interrupted!"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_fc

    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v6, :cond_45

    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Event scanner exited abnormally"

    goto :goto_42

    .line 499
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_7e
    :try_start_7e
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 500
    .local v2, eventsToDeliver:Ljava/util/LinkedList;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 501
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_fc

    .line 502
    :try_start_88
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 503
    .local v4, iterator:Ljava/util/ListIterator;
    :cond_8c
    :goto_8c
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 504
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    check-cast v1, Lgov/nist/javax/sip/EventWrapper;

    .line 505
    .restart local v1       #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 506
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nevents "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_88 .. :try_end_ca} :catchall_e3

    .line 511
    :cond_ca
    :try_start_ca
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_ce

    goto :goto_8c

    .line 512
    :catch_ce
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    :try_start_cf
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 514
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e2
    .catchall {:try_start_cf .. :try_end_e2} :catchall_e3

    goto :goto_8c

    .line 521
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    .end local v2           #eventsToDeliver:Ljava/util/LinkedList;
    .end local v4           #iterator:Ljava/util/ListIterator;
    .end local v5           #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_e3
    move-exception v6

    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 522
    iget-boolean v7, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v7, :cond_fb

    .line 523
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Event scanner exited abnormally"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 521
    :cond_fb
    throw v6

    .line 501
    .restart local v1       #eventWrapper:Lgov/nist/javax/sip/EventWrapper;
    .restart local v5       #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_fc
    move-exception v7

    :try_start_fd
    monitor-exit v6
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    :try_start_fe
    throw v7
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_e3
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 102
    :try_start_4
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-lez v1, :cond_d

    .line 103
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 105
    :cond_d
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-nez v1, :cond_19

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 107
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_19
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method
