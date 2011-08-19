.class public Lgov/nist/javax/sip/SipStackImpl;
.super Lgov/nist/javax/sip/stack/SIPTransactionStack;
.source "SipStackImpl.java"

# interfaces
.implements Ljavax/sip/SipStack;
.implements Lgov/nist/javax/sip/SipStackExt;


# static fields
.field public static final MAX_DATAGRAM_SIZE:Ljava/lang/Integer;


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field deliverTerminatedEventForAck:Z

.field deliverUnsolicitedNotify:Z

.field private enabledProtocols:[Ljava/lang/String;

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/ListeningPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field reEntrantListener:Z

.field sipListener:Ljavax/sip/SipListener;

.field private sipProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private stackSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 447
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    .line 457
    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    .line 461
    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    .line 464
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v1, v3

    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v4

    const-string v2, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    aput-object v2, v1, v5

    const-string v2, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v6

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    .line 481
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SSLv3"

    aput-object v2, v1, v3

    const-string v2, "SSLv2Hello"

    aput-object v2, v1, v4

    const-string v2, "TLSv1"

    aput-object v2, v1, v5

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 493
    new-instance v0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 495
    .local v0, msgFactory:Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V

    .line 496
    new-instance v1, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 497
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 498
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 500
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 68
    .parameter "configurationProperties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;-><init>()V

    .line 535
    const-string v61, "javax.sip.IP_ADDRESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 539
    .local v7, address:Ljava/lang/String;
    if-eqz v7, :cond_15

    .line 543
    :try_start_f
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setHostAddress(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_15} :catch_29

    .line 551
    :cond_15
    const-string v61, "javax.sip.STACK_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 553
    .local v37, name:Ljava/lang/String;
    if-nez v37, :cond_46

    .line 554
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "stack name is missing"

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 546
    .end local v37           #name:Ljava/lang/String;
    :catch_29
    move-exception v23

    .line 547
    .local v23, ex:Ljava/net/UnknownHostException;
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "bad address "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 555
    .end local v23           #ex:Ljava/net/UnknownHostException;
    .restart local v37       #name:Ljava/lang/String;
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackName(Ljava/lang/String;)V

    .line 556
    const-string v61, "gov.nist.javax.sip.STACK_LOGGER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 559
    .local v54, stackLoggerClassName:Ljava/lang/String;
    if-nez v54, :cond_5b

    .line 560
    const-string v54, "gov.nist.core.LogWriter"

    .line 562
    :cond_5b
    :try_start_5b
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v53

    .line 563
    .local v53, stackLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 564
    .local v19, constructorArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 566
    .local v18, cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 567
    .local v8, args:[Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lgov/nist/core/StackLogger;

    .line 568
    .local v52, stackLogger:Lgov/nist/core/StackLogger;
    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->setStackProperties(Ljava/util/Properties;)V

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackLogger(Lgov/nist/core/StackLogger;)V
    :try_end_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5b .. :try_end_8d} :catch_206
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8d} :catch_232

    .line 584
    const-string v61, "gov.nist.javax.sip.SERVER_LOGGER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 587
    .local v49, serverLoggerClassName:Ljava/lang/String;
    if-nez v49, :cond_9b

    .line 588
    const-string v49, "gov.nist.javax.sip.stack.ServerLog"

    .line 590
    :cond_9b
    :try_start_9b
    invoke-static/range {v49 .. v49}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 592
    .local v48, serverLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 593
    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 595
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 596
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/ServerLogger;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setSipStack(Ljavax/sip/SipStack;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverLogger:Lgov/nist/core/ServerLogger;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setStackProperties(Ljava/util/Properties;)V
    :try_end_de
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9b .. :try_end_de} :catch_25e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_de} :catch_28a

    .line 615
    const-string v61, "javax.sip.OUTBOUND_PROXY"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    .line 618
    new-instance v61, Lgov/nist/javax/sip/stack/DefaultRouter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    move-object/from16 v2, v62

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/stack/DefaultRouter;-><init>(Ljavax/sip/SipStack;Ljava/lang/String;)V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    .line 621
    const-string v61, "javax.sip.ROUTER_PATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 623
    .local v46, routerPath:Ljava/lang/String;
    if-nez v46, :cond_113

    .line 624
    const-string v46, "gov.nist.javax.sip.stack.DefaultRouter"

    .line 627
    :cond_113
    :try_start_113
    invoke-static/range {v46 .. v46}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v45

    .line 628
    .local v45, routerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 629
    const/16 v61, 0x0

    const-class v62, Ljavax/sip/SipStack;

    aput-object v62, v19, v61

    .line 630
    const/16 v61, 0x1

    const-class v62, Ljava/lang/String;

    aput-object v62, v19, v61

    .line 631
    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 632
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 633
    const/16 v61, 0x0

    aput-object p0, v8, v61

    .line 634
    const/16 v61, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->outboundProxy:Ljava/lang/String;

    move-object/from16 v62, v0

    aput-object v62, v8, v61

    .line 635
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljavax/sip/address/Router;

    .line 636
    .local v44, router:Ljavax/sip/address/Router;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setRouter(Ljavax/sip/address/Router;)V
    :try_end_158
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_113 .. :try_end_158} :catch_2b6
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_158} :catch_2dc

    .line 652
    const-string v61, "javax.sip.USE_ROUTER_FOR_ALL_URIS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 654
    .local v60, useRouterForAll:Ljava/lang/String;
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    .line 655
    if-eqz v60, :cond_17c

    .line 656
    const-string v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->useRouterForAll:Z

    .line 663
    :cond_17c
    const-string v61, "javax.sip.EXTENSION_METHODS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 666
    .local v25, extensionMethods:Ljava/lang/String;
    if-eqz v25, :cond_30b

    .line 667
    new-instance v51, Ljava/util/StringTokenizer;

    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 669
    .local v51, st:Ljava/util/StringTokenizer;
    :goto_191
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_30b

    .line 670
    const-string v61, ":"

    move-object/from16 v0, v51

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 671
    .local v22, em:Ljava/lang/String;
    const-string v61, "BYE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_1e9

    const-string v61, "INVITE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_1e9

    const-string v61, "SUBSCRIBE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_1e9

    const-string v61, "NOTIFY"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_1e9

    const-string v61, "ACK"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_1e9

    const-string v61, "OPTIONS"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_302

    .line 677
    :cond_1e9
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Bad extension method "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 570
    .end local v8           #args:[Ljava/lang/Object;
    .end local v18           #cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v19           #constructorArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v22           #em:Ljava/lang/String;
    .end local v25           #extensionMethods:Ljava/lang/String;
    .end local v44           #router:Ljavax/sip/address/Router;
    .end local v45           #routerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v46           #routerPath:Ljava/lang/String;
    .end local v48           #serverLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v49           #serverLoggerClassName:Ljava/lang/String;
    .end local v51           #st:Ljava/util/StringTokenizer;
    .end local v52           #stackLogger:Lgov/nist/core/StackLogger;
    .end local v53           #stackLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v60           #useRouterForAll:Ljava/lang/String;
    :catch_206
    move-exception v61

    move-object/from16 v24, v61

    .line 571
    .local v24, ex1:Ljava/lang/reflect/InvocationTargetException;
    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate stack logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 576
    .end local v24           #ex1:Ljava/lang/reflect/InvocationTargetException;
    :catch_232
    move-exception v61

    move-object/from16 v23, v61

    .line 577
    .local v23, ex:Ljava/lang/Exception;
    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate stack logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 599
    .end local v23           #ex:Ljava/lang/Exception;
    .restart local v8       #args:[Ljava/lang/Object;
    .restart local v18       #cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v19       #constructorArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v49       #serverLoggerClassName:Ljava/lang/String;
    .restart local v52       #stackLogger:Lgov/nist/core/StackLogger;
    .restart local v53       #stackLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_25e
    move-exception v61

    move-object/from16 v24, v61

    .line 600
    .restart local v24       #ex1:Ljava/lang/reflect/InvocationTargetException;
    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate server logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 605
    .end local v24           #ex1:Ljava/lang/reflect/InvocationTargetException;
    :catch_28a
    move-exception v61

    move-object/from16 v23, v61

    .line 606
    .restart local v23       #ex:Ljava/lang/Exception;
    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate server logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 637
    .end local v23           #ex:Ljava/lang/Exception;
    .restart local v46       #routerPath:Ljava/lang/String;
    .restart local v48       #serverLoggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2b6
    move-exception v61

    move-object/from16 v24, v61

    .line 638
    .restart local v24       #ex1:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "could not instantiate router -- invocation target problem"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Exception;

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 642
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Cound not instantiate router - check constructor"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 644
    .end local v24           #ex1:Ljava/lang/reflect/InvocationTargetException;
    .restart local p0
    :catch_2dc
    move-exception v61

    move-object/from16 v23, v61

    .line 645
    .restart local v23       #ex:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "could not instantiate router"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Exception;

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 647
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Could not instantiate router"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    .line 680
    .end local v23           #ex:Ljava/lang/Exception;
    .restart local v22       #em:Ljava/lang/String;
    .restart local v25       #extensionMethods:Ljava/lang/String;
    .restart local v44       #router:Ljavax/sip/address/Router;
    .restart local v45       #routerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v51       #st:Ljava/util/StringTokenizer;
    .restart local v60       #useRouterForAll:Ljava/lang/String;
    .restart local p0
    :cond_302
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addExtensionMethod(Ljava/lang/String;)V

    goto/16 :goto_191

    .line 683
    .end local v22           #em:Ljava/lang/String;
    .end local v51           #st:Ljava/util/StringTokenizer;
    :cond_30b
    const-string v61, "javax.net.ssl.keyStore"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 685
    .local v32, keyStoreFile:Ljava/lang/String;
    const-string v61, "javax.net.ssl.trustStore"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 687
    .local v59, trustStoreFile:Ljava/lang/String;
    if-eqz v32, :cond_352

    .line 688
    if-nez v59, :cond_325

    .line 689
    move-object/from16 v59, v32

    .line 691
    :cond_325
    const-string v61, "javax.net.ssl.keyStorePassword"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 694
    .local v33, keyStorePassword:Ljava/lang/String;
    :try_start_32f
    new-instance v61, Lgov/nist/core/net/SslNetworkLayer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toCharArray()[C

    move-result-object v62

    const-string v63, "javax.net.ssl.keyStoreType"

    move-object/from16 v0, p1

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    move-object/from16 v2, v32

    move-object/from16 v3, v62

    move-object/from16 v4, v63

    invoke-direct {v0, v1, v2, v3, v4}, Lgov/nist/core/net/SslNetworkLayer;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_352
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_352} :catch_3ca

    .line 705
    .end local v33           #keyStorePassword:Ljava/lang/String;
    :cond_352
    :goto_352
    const-string v61, "javax.sip.AUTOMATIC_DIALOG_SUPPORT"

    const-string v62, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "on"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    .line 709
    const-string v61, "gov.nist.javax.sip.AUTOMATIC_DIALOG_ERROR_HANDLING"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    sget-object v62, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 712
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    move/from16 v61, v0

    if-eqz v61, :cond_39a

    .line 713
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 716
    :cond_39a
    const-string v61, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    if-eqz v61, :cond_3de

    .line 718
    const-string v61, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 721
    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    move/from16 v61, v0

    if-gtz v61, :cond_3e6

    .line 722
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Bad configuration parameter gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME : should be positive"

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 698
    .restart local v33       #keyStorePassword:Ljava/lang/String;
    :catch_3ca
    move-exception v61

    move-object/from16 v21, v61

    .line 699
    .local v21, e1:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "could not instantiate SSL networking"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_352

    .line 725
    .end local v21           #e1:Ljava/lang/Exception;
    .end local v33           #keyStorePassword:Ljava/lang/String;
    :cond_3de
    const/16 v61, -0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 730
    :cond_3e6
    const-string v61, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_ACK"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    .line 735
    const-string v61, "gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    .line 739
    const-string v61, "javax.sip.FORKABLE_EVENTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 741
    .local v27, forkedSubscriptions:Ljava/lang/String;
    if-eqz v27, :cond_447

    .line 742
    new-instance v51, Ljava/util/StringTokenizer;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 743
    .restart local v51       #st:Ljava/util/StringTokenizer;
    :goto_42f
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_447

    .line 744
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v38

    .line 745
    .local v38, nextEvent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->forkedEvents:Ljava/util/HashSet;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_42f

    .line 756
    .end local v38           #nextEvent:Ljava/lang/String;
    .end local v51           #st:Ljava/util/StringTokenizer;
    :cond_447
    const-string v6, "gov.nist.javax.sip.NETWORK_LAYER"

    .line 758
    .local v6, NETWORK_LAYER_KEY:Ljava/lang/String;
    const-string v61, "gov.nist.javax.sip.NETWORK_LAYER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_488

    .line 759
    const-string v61, "gov.nist.javax.sip.NETWORK_LAYER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 762
    .local v40, path:Ljava/lang/String;
    :try_start_45f
    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 763
    .local v14, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object v0, v14

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 764
    .local v12, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object v0, v12

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/net/NetworkLayer;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_488
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_488} :catch_716

    .line 772
    .end local v12           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v14           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v40           #path:Ljava/lang/String;
    :cond_488
    const-string v5, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    .line 774
    .local v5, ADDRESS_RESOLVER_KEY:Ljava/lang/String;
    const-string v61, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_4c9

    .line 775
    const-string v61, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 778
    .restart local v40       #path:Ljava/lang/String;
    :try_start_4a0
    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 779
    .restart local v14       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object v0, v14

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 780
    .restart local v12       #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object v0, v12

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ADDRESS_RESOLVER_KEY:Ljava/lang/String;
    check-cast v5, Lgov/nist/core/net/AddressResolver;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->addressResolver:Lgov/nist/core/net/AddressResolver;
    :try_end_4c9
    .catch Ljava/lang/Exception; {:try_start_4a0 .. :try_end_4c9} :catch_736

    .line 789
    .end local v12           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v14           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v40           #path:Ljava/lang/String;
    :cond_4c9
    const-string v61, "gov.nist.javax.sip.MAX_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 791
    .local v34, maxConnections:Ljava/lang/String;
    if-eqz v34, :cond_4e8

    .line 793
    :try_start_4d5
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->maxConnections:I
    :try_end_4e8
    .catch Ljava/lang/NumberFormatException; {:try_start_4d5 .. :try_end_4e8} :catch_756

    .line 801
    :cond_4e8
    :goto_4e8
    const-string v61, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 803
    .local v57, threadPoolSize:Ljava/lang/String;
    if-eqz v57, :cond_507

    .line 805
    :try_start_4f4
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->threadPoolSize:I
    :try_end_507
    .catch Ljava/lang/NumberFormatException; {:try_start_4f4 .. :try_end_507} :catch_77f

    .line 813
    :cond_507
    :goto_507
    const-string v61, "gov.nist.javax.sip.MAX_SERVER_TRANSACTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 815
    .local v50, serverTransactionTableSize:Ljava/lang/String;
    if-eqz v50, :cond_7d1

    .line 817
    :try_start_513
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableHighwaterMark:I

    move/from16 v61, v0

    mul-int/lit8 v61, v61, 0x50

    div-int/lit8 v61, v61, 0x64

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->serverTransactionTableLowaterMark:I
    :try_end_536
    .catch Ljava/lang/NumberFormatException; {:try_start_513 .. :try_end_536} :catch_7a8

    .line 834
    :cond_536
    :goto_536
    const-string v61, "gov.nist.javax.sip.MAX_CLIENT_TRANSACTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 836
    .local v15, clientTransactionTableSize:Ljava/lang/String;
    if-eqz v15, :cond_804

    .line 838
    :try_start_542
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableHiwaterMark:I

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I

    move/from16 v61, v0

    mul-int/lit8 v61, v61, 0x50

    div-int/lit8 v61, v61, 0x64

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/SipStackImpl;->clientTransactionTableLowaterMark:I
    :try_end_564
    .catch Ljava/lang/NumberFormatException; {:try_start_542 .. :try_end_564} :catch_7db

    .line 853
    :cond_564
    :goto_564
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 854
    const-string v61, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 857
    .local v26, flag:Ljava/lang/String;
    if-eqz v26, :cond_58c

    const-string v61, "false"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_58c

    .line 858
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 861
    :cond_58c
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 862
    const-string v61, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 865
    .local v13, cacheflag:Ljava/lang/String;
    if-eqz v13, :cond_5b4

    const-string v61, "false"

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_5b4

    .line 866
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 869
    :cond_5b4
    const-string v61, "gov.nist.javax.sip.READ_TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 871
    .local v42, readTimeout:Ljava/lang/String;
    if-eqz v42, :cond_5d2

    .line 874
    :try_start_5c0
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 875
    .local v47, rt:I
    const/16 v61, 0x64

    move/from16 v0, v47

    move/from16 v1, v61

    if-lt v0, v1, :cond_80e

    .line 876
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I
    :try_end_5d2
    .catch Ljava/lang/NumberFormatException; {:try_start_5c0 .. :try_end_5d2} :catch_82c

    .line 889
    .end local v47           #rt:I
    :cond_5d2
    :goto_5d2
    const-string v61, "gov.nist.javax.sip.STUN_SERVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 892
    .local v56, stunAddr:Ljava/lang/String;
    if-eqz v56, :cond_5e7

    .line 893
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Ignoring obsolete property gov.nist.javax.sip.STUN_SERVER"

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 897
    :cond_5e7
    const-string v61, "gov.nist.javax.sip.MAX_MESSAGE_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 901
    .local v35, maxMsgSize:Ljava/lang/String;
    if-eqz v35, :cond_855

    .line 902
    :try_start_5f3
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    move/from16 v61, v0

    const/16 v62, 0x1000

    move/from16 v0, v61

    move/from16 v1, v62

    if-ge v0, v1, :cond_61c

    .line 904
    const/16 v61, 0x1000

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_61c
    .catch Ljava/lang/NumberFormatException; {:try_start_5f3 .. :try_end_61c} :catch_85f

    .line 915
    :cond_61c
    :goto_61c
    const-string v61, "gov.nist.javax.sip.REENTRANT_LISTENER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 917
    .local v43, rel:Ljava/lang/String;
    if-eqz v43, :cond_888

    const-string v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_888

    const/16 v61, 0x1

    :goto_636
    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    .line 920
    const-string v61, "gov.nist.javax.sip.THREAD_AUDIT_INTERVAL_IN_MILLISECS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 922
    .local v31, interval:Ljava/lang/String;
    if-eqz v31, :cond_65b

    .line 926
    :try_start_648
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v61

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v62

    const-wide/16 v64, 0x2

    div-long v62, v62, v64

    invoke-virtual/range {v61 .. v63}, Lgov/nist/core/ThreadAuditor;->setPingIntervalInMillisecs(J)V
    :try_end_65b
    .catch Ljava/lang/NumberFormatException; {:try_start_648 .. :try_end_65b} :catch_88c

    .line 937
    :cond_65b
    :goto_65b
    const-string v61, "gov.nist.javax.sip.PASS_INVITE_NON_2XX_ACK_TO_LISTENER"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->setNon2XXAckPassedToListener(Z)V

    .line 945
    const-string v61, "gov.nist.javax.sip.AUTO_GENERATE_TIMESTAMP"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->generateTimeStampHeader:Z

    .line 950
    const-string v61, "gov.nist.javax.sip.LOG_FACTORY"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 952
    .local v36, messageLogFactoryClasspath:Ljava/lang/String;
    if-eqz v36, :cond_8e2

    .line 954
    :try_start_6a0
    invoke-static/range {v36 .. v36}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 955
    .restart local v14       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object v0, v14

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 956
    .restart local v12       #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object v0, v12

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/LogRecordFactory;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;
    :try_end_6c9
    .catch Ljava/lang/Exception; {:try_start_6a0 .. :try_end_6c9} :catch_8c3

    .line 970
    .end local v12           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v14           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6c9
    const-string v61, "gov.nist.javax.sip.COMPUTE_CONTENT_LENGTH_FROM_MESSAGE_BODY"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 973
    .local v16, computeContentLength:Z
    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/parser/StringMsgParser;->setComputeContentLengthFromMessage(Z)V

    .line 976
    const-string v61, "gov.nist.javax.sip.TLS_CLIENT_PROTOCOLS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 978
    .local v58, tlsClientProtocols:Ljava/lang/String;
    if-eqz v58, :cond_8f5

    .line 980
    new-instance v51, Ljava/util/StringTokenizer;

    const-string v61, " ,"

    move-object/from16 v0, v51

    move-object/from16 v1, v58

    move-object/from16 v2, v61

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    .restart local v51       #st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v61

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 983
    .local v41, protocols:[Ljava/lang/String;
    const/16 v28, 0x0

    .line 984
    .local v28, i:I
    :goto_705
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_8ef

    .line 985
    add-int/lit8 v29, v28, 0x1

    .end local v28           #i:I
    .local v29, i:I
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v61

    aput-object v61, v41, v28

    move/from16 v28, v29

    .end local v29           #i:I
    .restart local v28       #i:I
    goto :goto_705

    .line 765
    .end local v13           #cacheflag:Ljava/lang/String;
    .end local v15           #clientTransactionTableSize:Ljava/lang/String;
    .end local v16           #computeContentLength:Z
    .end local v26           #flag:Ljava/lang/String;
    .end local v28           #i:I
    .end local v31           #interval:Ljava/lang/String;
    .end local v34           #maxConnections:Ljava/lang/String;
    .end local v35           #maxMsgSize:Ljava/lang/String;
    .end local v36           #messageLogFactoryClasspath:Ljava/lang/String;
    .end local v41           #protocols:[Ljava/lang/String;
    .end local v42           #readTimeout:Ljava/lang/String;
    .end local v43           #rel:Ljava/lang/String;
    .end local v50           #serverTransactionTableSize:Ljava/lang/String;
    .end local v51           #st:Ljava/util/StringTokenizer;
    .end local v56           #stunAddr:Ljava/lang/String;
    .end local v57           #threadPoolSize:Ljava/lang/String;
    .end local v58           #tlsClientProtocols:Ljava/lang/String;
    .restart local v40       #path:Ljava/lang/String;
    :catch_716
    move-exception v61

    move-object/from16 v20, v61

    .line 766
    .local v20, e:Ljava/lang/Exception;
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "can\'t find or instantiate NetworkLayer implementation: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 782
    .end local v20           #e:Ljava/lang/Exception;
    :catch_736
    move-exception v61

    move-object/from16 v20, v61

    .line 783
    .restart local v20       #e:Ljava/lang/Exception;
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "can\'t find or instantiate AddressResolver implementation: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 794
    .end local v20           #e:Ljava/lang/Exception;
    .end local v40           #path:Ljava/lang/String;
    .restart local v34       #maxConnections:Ljava/lang/String;
    :catch_756
    move-exception v61

    move-object/from16 v23, v61

    .line 795
    .local v23, ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_4e8

    .line 796
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "max connections - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_4e8

    .line 806
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    .restart local v57       #threadPoolSize:Ljava/lang/String;
    :catch_77f
    move-exception v61

    move-object/from16 v23, v61

    .line 807
    .restart local v23       #ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_507

    .line 808
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "thread pool size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_507

    .line 821
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    .restart local v50       #serverTransactionTableSize:Ljava/lang/String;
    :catch_7a8
    move-exception v61

    move-object/from16 v23, v61

    .line 822
    .restart local v23       #ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_536

    .line 823
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "transaction table size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_536

    .line 831
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    :cond_7d1
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedServerTransactionTableSize:Z

    goto/16 :goto_536

    .line 842
    .restart local v15       #clientTransactionTableSize:Ljava/lang/String;
    :catch_7db
    move-exception v61

    move-object/from16 v23, v61

    .line 843
    .restart local v23       #ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_564

    .line 844
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "transaction table size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_564

    .line 850
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    :cond_804
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->unlimitedClientTransactionTableSize:Z

    goto/16 :goto_564

    .line 878
    .restart local v13       #cacheflag:Ljava/lang/String;
    .restart local v26       #flag:Ljava/lang/String;
    .restart local v42       #readTimeout:Ljava/lang/String;
    .restart local v47       #rt:I
    :cond_80e
    :try_start_80e
    sget-object v61, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Value too low "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_82a
    .catch Ljava/lang/NumberFormatException; {:try_start_80e .. :try_end_82a} :catch_82c

    goto/16 :goto_5d2

    .line 880
    .end local v47           #rt:I
    :catch_82c
    move-exception v61

    move-object/from16 v39, v61

    .line 882
    .local v39, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_5d2

    .line 883
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Bad read timeout "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_5d2

    .line 907
    .end local v39           #nfe:Ljava/lang/NumberFormatException;
    .restart local v35       #maxMsgSize:Ljava/lang/String;
    .restart local v56       #stunAddr:Ljava/lang/String;
    :cond_855
    const/16 v61, 0x0

    :try_start_857
    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_85d
    .catch Ljava/lang/NumberFormatException; {:try_start_857 .. :try_end_85d} :catch_85f

    goto/16 :goto_61c

    .line 909
    :catch_85f
    move-exception v61

    move-object/from16 v23, v61

    .line 910
    .restart local v23       #ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_61c

    .line 911
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "maxMessageSize - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_61c

    .line 917
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    .restart local v43       #rel:Ljava/lang/String;
    :cond_888
    const/16 v61, 0x0

    goto/16 :goto_636

    .line 928
    .restart local v31       #interval:Ljava/lang/String;
    :catch_88c
    move-exception v61

    move-object/from16 v23, v61

    .line 929
    .restart local v23       #ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_65b

    .line 930
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "THREAD_AUDIT_INTERVAL_IN_MILLISECS - bad value ["

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "] "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_65b

    .line 958
    .end local v23           #ex:Ljava/lang/NumberFormatException;
    .restart local v36       #messageLogFactoryClasspath:Ljava/lang/String;
    :catch_8c3
    move-exception v61

    move-object/from16 v23, v61

    .line 959
    .local v23, ex:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_8d5

    .line 960
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Bad configuration value for LOG_FACTORY -- using default logger"

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 963
    :cond_8d5
    new-instance v61, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct/range {v61 .. v61}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    goto/16 :goto_6c9

    .line 967
    .end local v23           #ex:Ljava/lang/Exception;
    :cond_8e2
    new-instance v61, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct/range {v61 .. v61}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    goto/16 :goto_6c9

    .line 987
    .restart local v16       #computeContentLength:Z
    .restart local v28       #i:I
    .restart local v41       #protocols:[Ljava/lang/String;
    .restart local v51       #st:Ljava/util/StringTokenizer;
    .restart local v58       #tlsClientProtocols:Ljava/lang/String;
    :cond_8ef
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 990
    .end local v28           #i:I
    .end local v41           #protocols:[Ljava/lang/String;
    .end local v51           #st:Ljava/util/StringTokenizer;
    :cond_8f5
    const-string v61, "gov.nist.javax.sip.RFC_2543_SUPPORT_ENABLED"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 994
    const-string v61, "gov.nist.javax.sip.CANCEL_CLIENT_TRANSACTION_CHECKED"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 998
    const-string v61, "gov.nist.javax.sip.LOG_STACK_TRACE_ON_MESSAGE_SEND"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_967

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "created Sip stack. Properties = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1004
    :cond_967
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v61

    const-string v62, "/TIMESTAMP"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v30

    .line 1005
    .local v30, in:Ljava/io/InputStream;
    if-eqz v30, :cond_998

    .line 1006
    new-instance v55, Ljava/io/BufferedReader;

    new-instance v61, Ljava/io/InputStreamReader;

    move-object/from16 v0, v61

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1010
    .local v55, streamReader:Ljava/io/BufferedReader;
    :try_start_985
    invoke-virtual/range {v55 .. v55}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 1011
    .local v11, buildTimeStamp:Ljava/lang/String;
    if-eqz v30, :cond_98e

    .line 1012
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 1014
    :cond_98e
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    move-object/from16 v0, v61

    move-object v1, v11

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->setBuildTimeStamp(Ljava/lang/String;)V
    :try_end_998
    .catch Ljava/io/IOException; {:try_start_985 .. :try_end_998} :catch_a69

    .line 1020
    .end local v11           #buildTimeStamp:Ljava/lang/String;
    .end local v55           #streamReader:Ljava/io/BufferedReader;
    :cond_998
    :goto_998
    const-string v61, "gov.nist.javax.sip.RECEIVE_UDP_BUFFER_SIZE"

    sget-object v62, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1023
    .local v9, bufferSize:Ljava/lang/String;
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1024
    .local v10, bufferSizeInteger:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setReceiveUdpBufferSize(I)V

    .line 1026
    const-string v61, "gov.nist.javax.sip.SEND_UDP_BUFFER_SIZE"

    sget-object v62, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1029
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1030
    move-object/from16 v0, p0

    move v1, v10

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setSendUdpBufferSize(I)V

    .line 1032
    const-string v61, "gov.nist.javax.sip.CONGESTION_CONTROL_ENABLED"

    sget-object v62, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1036
    .local v17, congetstionControlEnabled:Z
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 1038
    const-string v61, "gov.nist.javax.sip.IS_BACK_TO_BACK_USER_AGENT"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 1042
    const-string v61, "gov.nist.javax.sip.REJECT_STRAY_RESPONSES"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    .line 1046
    const-string v61, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_NULL_DIALOG"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 1050
    const-string v61, "gov.nist.javax.sip.MAX_FORK_TIME_SECONDS"

    const-string v62, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 1053
    return-void

    .line 1015
    .end local v9           #bufferSize:Ljava/lang/String;
    .end local v10           #bufferSizeInteger:I
    .end local v17           #congetstionControlEnabled:Z
    .restart local v55       #streamReader:Ljava/io/BufferedReader;
    :catch_a69
    move-exception v61

    move-object/from16 v23, v61

    .line 1016
    .local v23, ex:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Could not open build timestamp."

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_998
.end method

.method private reInitialize()V
    .registers 2

    .prologue
    .line 506
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->reInit()V

    .line 507
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 508
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 509
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    .line 512
    return-void
.end method


# virtual methods
.method public acquireSem()Z
    .registers 6

    .prologue
    .line 1483
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 1485
    :goto_a
    return v1

    .line 1484
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1485
    .local v0, ex:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .registers 5
    .parameter "port"
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stack does not have a default IP Address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lgov/nist/javax/sip/SipStackImpl;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .registers 13
    .parameter "address"
    .parameter "port"
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1065
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createListeningPoint : address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1069
    :cond_35
    if-nez p1, :cond_42

    .line 1070
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Address for listening point is null!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3f

    .line 1064
    :catchall_3f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1072
    :cond_42
    if-nez p3, :cond_4c

    .line 1073
    :try_start_44
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null transport"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1074
    :cond_4c
    if-gtz p2, :cond_56

    .line 1075
    new-instance v6, Ljavax/sip/InvalidArgumentException;

    const-string v7, "bad port"

    invoke-direct {v6, v7}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1077
    :cond_56
    const-string v6, "UDP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    const-string v6, "TLS"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    const-string v6, "TCP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    const-string v6, "SCTP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 1081
    new-instance v6, Ljavax/sip/TransportNotSupportedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/sip/TransportNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1085
    :cond_8f
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 1086
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgov/nist/javax/sip/SipStackImpl;->toExit:Z

    .line 1087
    invoke-direct {p0}, Lgov/nist/javax/sip/SipStackImpl;->reInitialize()V

    .line 1090
    :cond_9b
    invoke-static {p1, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;
    :try_end_a7
    .catchall {:try_start_44 .. :try_end_a7} :catchall_3f

    .line 1093
    .local v3, lip:Lgov/nist/javax/sip/ListeningPointImpl;
    if-eqz v3, :cond_ac

    move-object v4, v3

    .line 1112
    .end local v3           #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    :goto_aa
    monitor-exit p0

    return-object v4

    .line 1097
    .restart local v3       #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_ac
    :try_start_ac
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1098
    .local v1, inetAddr:Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2, p3}, Lgov/nist/javax/sip/SipStackImpl;->createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v5

    .line 1100
    .local v5, messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 1101
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created Message Processor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1106
    :cond_e8
    new-instance v4, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-direct {v4, p0, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_ac .. :try_end_ed} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ed} :catch_fc

    .line 1107
    .end local v3           #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    .local v4, lip:Lgov/nist/javax/sip/ListeningPointImpl;
    :try_start_ed
    iput-object v5, v4, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1108
    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V

    .line 1109
    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->start()V
    :try_end_fa
    .catchall {:try_start_ed .. :try_end_fa} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_fa} :catch_13c

    move-object v3, v4

    .line 1112
    .end local v4           #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v3       #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    goto :goto_aa

    .line 1113
    .end local v1           #inetAddr:Ljava/net/InetAddress;
    .end local v5           #messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_fc
    move-exception v6

    move-object v0, v6

    .line 1114
    .local v0, ex:Ljava/io/IOException;
    :goto_fe
    :try_start_fe
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_132

    .line 1115
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid argument address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1118
    :cond_132
    new-instance v6, Ljavax/sip/InvalidArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_13c
    .catchall {:try_start_fe .. :try_end_13c} :catchall_3f

    .line 1113
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v1       #inetAddr:Ljava/net/InetAddress;
    .restart local v4       #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v5       #messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_13c
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v3       #lip:Lgov/nist/javax/sip/ListeningPointImpl;
    goto :goto_fe
.end method

.method public createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .registers 8
    .parameter "listeningPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1130
    if-nez p1, :cond_a

    .line 1131
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null listeningPoint"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1132
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1133
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSipProvider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1135
    :cond_2a
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v1, v0

    .line 1136
    .local v1, listeningPointImpl:Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v3, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v3, :cond_3a

    .line 1137
    new-instance v3, Ljavax/sip/ObjectInUseException;

    const-string v4, "Provider already attached!"

    invoke-direct {v3, v4}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1139
    :cond_3a
    new-instance v2, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 1141
    .local v2, provider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/SipProviderImpl;->setListeningPoint(Ljavax/sip/ListeningPoint;)V

    .line 1142
    iput-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1143
    iget-object v3, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1144
    return-object v2
.end method

.method public deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .registers 7
    .parameter "listeningPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1154
    if-nez p1, :cond_a

    .line 1155
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null listeningPoint arg"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1156
    :cond_a
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v2, v0

    .line 1158
    .local v2, lip:Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v3, v2, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1159
    invoke-virtual {v2}, Lgov/nist/javax/sip/ListeningPointImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1160
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    return-void
.end method

.method public deleteSipProvider(Ljavax/sip/SipProvider;)V
    .registers 6
    .parameter "sipProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .prologue
    .line 1172
    if-nez p1, :cond_a

    .line 1173
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null provider arg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1174
    :cond_a
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipProviderImpl;

    move-object v1, v0

    .line 1180
    .local v1, sipProviderImpl:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1181
    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "SipProvider still has an associated SipListener!"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1185
    :cond_1c
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipProviderImpl;->removeListeningPoints()V

    .line 1188
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipProviderImpl;->stop()V

    .line 1189
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1190
    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1191
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1193
    :cond_32
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1249
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1250
    return-void
.end method

.method public getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .registers 4
    .parameter "accountManager"
    .parameter "headerFactory"

    .prologue
    .line 1375
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1420
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1453
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventScanner()Lgov/nist/javax/sip/EventScanner;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1363
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1202
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListeningPoints()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1211
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLogRecordFactory()Lgov/nist/javax/sip/LogRecordFactory;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    return-object v0
.end method

.method public getSecureAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .registers 4
    .parameter "accountManager"
    .parameter "headerFactory"

    .prologue
    .line 1387
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .registers 2

    .prologue
    .line 1311
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public getSipProviders()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getStackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1239
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutomaticDialogErrorHandlingEnabled()Z
    .registers 2

    .prologue
    .line 1478
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    return v0
.end method

.method isAutomaticDialogSupportEnabled()Z
    .registers 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    return v0
.end method

.method public isBackToBackUserAgent()Z
    .registers 2

    .prologue
    .line 1474
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    return v0
.end method

.method public isRetransmissionFilterActive()Z
    .registers 2

    .prologue
    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public releaseSem()V
    .registers 2

    .prologue
    .line 1490
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1491
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 2
    .parameter "newCipherSuites"

    .prologue
    .line 1411
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    .line 1412
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 2
    .parameter "newProtocols"

    .prologue
    .line 1444
    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    .line 1445
    return-void
.end method

.method public setIsBackToBackUserAgent(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1464
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 1465
    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-nez v0, :cond_b

    .line 1297
    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 1300
    :cond_b
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 1273
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1274
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "stopStack -- stoppping the stack"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1276
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    .line 1277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    .line 1278
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    .line 1283
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-eqz v0, :cond_29

    .line 1284
    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->forceStop()V

    .line 1285
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 1287
    return-void
.end method
