.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private accountManager:Ljava/lang/Object;

.field private cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private headerFactory:Ljavax/sip/header/HeaderFactory;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .parameter "sipStack"
    .parameter "accountManager"
    .parameter "headerFactory"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 98
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 99
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .registers 6
    .parameter "sipStack"
    .parameter "accountManager"
    .parameter "headerFactory"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    .line 113
    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 115
    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    .line 116
    return-void
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .registers 23
    .parameter "method"
    .parameter "uri"
    .parameter "requestBody"
    .parameter "authHeader"
    .parameter "userCredentials"

    .prologue
    .line 363
    const/16 v16, 0x0

    .line 367
    .local v16, response:Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, qopList:Ljava/lang/String;
    if-eqz v15, :cond_97

    const-string v3, "auth"

    move-object v11, v3

    .line 369
    .local v11, qop:Ljava/lang/String;
    :goto_b
    const-string v6, "00000001"

    .line 370
    .local v6, nc_value:Ljava/lang/String;
    const-string v7, "xyz"

    .line 372
    .local v7, cnonce:Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, v0

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v12}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v16

    .line 377
    const/4 v13, 0x0

    .line 379
    .local v13, authorization:Ljavax/sip/header/AuthorizationHeader;
    :try_start_2f
    move-object/from16 v0, p4

    instance-of v0, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    move v3, v0

    if-eqz v3, :cond_9b

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    move-object v3, v0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v13

    .line 386
    :goto_43
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 387
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 388
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 389
    const-string v3, "uri"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 391
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 392
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 395
    :cond_74
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 396
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 400
    :cond_81
    if-eqz v11, :cond_90

    .line 401
    invoke-interface {v13, v11}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 402
    invoke-interface {v13, v7}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 406
    :cond_90
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 412
    return-object v13

    .line 368
    .end local v6           #nc_value:Ljava/lang/String;
    .end local v7           #cnonce:Ljava/lang/String;
    .end local v11           #qop:Ljava/lang/String;
    .end local v13           #authorization:Ljavax/sip/header/AuthorizationHeader;
    :cond_97
    const/4 v3, 0x0

    move-object v11, v3

    goto/16 :goto_b

    .line 383
    .restart local v6       #nc_value:Ljava/lang/String;
    .restart local v7       #cnonce:Ljava/lang/String;
    .restart local v11       #qop:Ljava/lang/String;
    .restart local v13       #authorization:Ljavax/sip/header/AuthorizationHeader;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    move-object v3, v0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_a7
    .catch Ljava/text/ParseException; {:try_start_2f .. :try_end_a7} :catch_a9

    move-result-object v13

    goto :goto_43

    .line 408
    :catch_a9
    move-exception v3

    move-object v14, v3

    .line 409
    .local v14, ex:Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create an authorization header!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .registers 25
    .parameter "method"
    .parameter "uri"
    .parameter "requestBody"
    .parameter "authHeader"
    .parameter "userCredentials"

    .prologue
    .line 296
    const/16 v18, 0x0

    .line 300
    .local v18, response:Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, qopList:Ljava/lang/String;
    if-eqz v17, :cond_9f

    const-string v3, "auth"

    move-object v13, v3

    .line 302
    .local v13, qop:Ljava/lang/String;
    :goto_b
    const-string v8, "00000001"

    .line 303
    .local v8, nc_value:Ljava/lang/String;
    const-string v9, "xyz"

    .line 305
    .local v9, cnonce:Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v3 .. v14}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v18

    .line 311
    const/4 v15, 0x0

    .line 313
    .local v15, authorization:Ljavax/sip/header/AuthorizationHeader;
    :try_start_37
    move-object/from16 v0, p4

    instance-of v0, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    move v3, v0

    if-eqz v3, :cond_a3

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    move-object v3, v0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v15

    .line 320
    :goto_4b
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 321
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 322
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 323
    const-string v3, "uri"

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 325
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 326
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 329
    :cond_7c
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 330
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 334
    :cond_89
    if-eqz v13, :cond_98

    .line 335
    invoke-interface {v15, v13}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 336
    invoke-interface {v15, v9}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    .line 337
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    .line 340
    :cond_98
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 346
    return-object v15

    .line 301
    .end local v8           #nc_value:Ljava/lang/String;
    .end local v9           #cnonce:Ljava/lang/String;
    .end local v13           #qop:Ljava/lang/String;
    .end local v15           #authorization:Ljavax/sip/header/AuthorizationHeader;
    :cond_9f
    const/4 v3, 0x0

    move-object v13, v3

    goto/16 :goto_b

    .line 317
    .restart local v8       #nc_value:Ljava/lang/String;
    .restart local v9       #cnonce:Ljava/lang/String;
    .restart local v13       #qop:Ljava/lang/String;
    .restart local v15       #authorization:Ljavax/sip/header/AuthorizationHeader;
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    move-object v3, v0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_af
    .catch Ljava/text/ParseException; {:try_start_37 .. :try_end_af} :catch_b1

    move-result-object v15

    goto :goto_4b

    .line 342
    :catch_b1
    move-exception v3

    move-object/from16 v16, v3

    .line 343
    .local v16, ex:Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create an authorization header!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private removeBranchID(Ljavax/sip/message/Request;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 423
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 425
    .local v0, viaHeader:Ljavax/sip/header/ViaHeader;
    const-string v1, "branch"

    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    .line 427
    return-void
.end method


# virtual methods
.method public handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .registers 37
    .parameter "challenge"
    .parameter "challengedTransaction"
    .parameter "transactionCreator"
    .parameter "cacheTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleChallenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_2d
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v19

    check-cast v19, Lgov/nist/javax/sip/message/SIPRequest;

    .line 135
    .local v19, challengedRequest:Lgov/nist/javax/sip/message/SIPRequest;
    const/16 v26, 0x0

    .line 141
    .local v26, reoriginatedRequest:Ljavax/sip/message/Request;
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4d

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    if-eqz v4, :cond_4d

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    sget-object v5, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v4, v5, :cond_6a

    .line 144
    :cond_4d
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    move-result-object v26

    .end local v26           #reoriginatedRequest:Ljavax/sip/message/Request;
    check-cast v26, Ljavax/sip/message/Request;

    .line 169
    .restart local v26       #reoriginatedRequest:Ljavax/sip/message/Request;
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    .line 171
    if-eqz p1, :cond_5e

    if-nez v26, :cond_cc

    .line 172
    :cond_5e
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "A null argument was passed to handle challenge."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_66
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_66} :catch_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_ab

    .line 270
    .end local v19           #challengedRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v26           #reoriginatedRequest:Ljavax/sip/message/Request;
    .end local p1
    :catch_66
    move-exception v4

    move-object/from16 v20, v4

    .line 271
    .local v20, ex:Ljavax/sip/SipException;
    throw v20

    .line 151
    .end local v20           #ex:Ljavax/sip/SipException;
    .restart local v19       #challengedRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v26       #reoriginatedRequest:Ljavax/sip/message/Request;
    .restart local p1
    :cond_6a
    :try_start_6a
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v26

    .line 153
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    move-result-object v22

    .line 154
    .local v22, headerNames:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 155
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 156
    .local v21, headerName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 157
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v24

    .line 158
    .local v24, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    :goto_98
    invoke-interface/range {v24 .. v24}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 159
    invoke-interface/range {v24 .. v24}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/Header;

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_aa
    .catch Ljavax/sip/SipException; {:try_start_6a .. :try_end_aa} :catch_66
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_aa} :catch_ab

    goto :goto_98

    .line 272
    .end local v19           #challengedRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v21           #headerName:Ljava/lang/String;
    .end local v22           #headerNames:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljavax/sip/header/Header;>;"
    .end local v26           #reoriginatedRequest:Ljavax/sip/message/Request;
    .end local p1
    :catch_ab
    move-exception v4

    move-object/from16 v20, v4

    .line 273
    .local v20, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Unexpected exception "

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 274
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Unexpected exception "

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 175
    .end local v20           #ex:Ljava/lang/Exception;
    .restart local v19       #challengedRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v26       #reoriginatedRequest:Ljavax/sip/message/Request;
    .restart local p1
    :cond_cc
    const/16 v16, 0x0

    .line 177
    .local v16, authHeaders:Ljava/util/ListIterator;
    :try_start_ce
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_e9

    .line 178
    const-string v4, "WWW-Authenticate"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v16

    .line 185
    :goto_df
    if-nez v16, :cond_103

    .line 186
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_e9
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v4

    const/16 v5, 0x197

    if-ne v4, v5, :cond_fb

    .line 180
    const-string v4, "Proxy-Authenticate"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v16

    goto :goto_df

    .line 182
    :cond_fb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected status code "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_103
    const-string v4, "Authorization"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 193
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 199
    const-string v4, "CSeq"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v18

    check-cast v18, Ljavax/sip/header/CSeqHeader;
    :try_end_11e
    .catch Ljavax/sip/SipException; {:try_start_ce .. :try_end_11e} :catch_66
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_11e} :catch_ab

    .line 201
    .local v18, cSeq:Ljavax/sip/header/CSeqHeader;
    :try_start_11e
    invoke-interface/range {v18 .. v18}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, v18

    move-wide v1, v4

    invoke-interface {v0, v1, v2}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_12b
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_11e .. :try_end_12b} :catch_210
    .catch Ljavax/sip/SipException; {:try_start_11e .. :try_end_12b} :catch_66
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_12b} :catch_ab

    .line 211
    :try_start_12b
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v4

    if-nez v4, :cond_169

    .line 212
    move-object/from16 v0, p2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v23

    .line 213
    .local v23, hop:Ljavax/sip/address/Hop;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v30

    check-cast v30, Ljavax/sip/address/SipURI;

    .line 215
    .local v30, sipUri:Ljavax/sip/address/SipURI;
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v30 .. v30}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_158

    .line 217
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    .line 218
    :cond_158
    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_169

    invoke-interface/range {v23 .. v23}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    move-object/from16 v0, v30

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 220
    .end local v23           #hop:Ljavax/sip/address/Hop;
    .end local v30           #sipUri:Ljavax/sip/address/SipURI;
    :cond_169
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v28

    .line 223
    .local v28, retryTran:Ljavax/sip/ClientTransaction;
    const/4 v8, 0x0

    .line 224
    .local v8, authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v27

    check-cast v27, Ljavax/sip/address/SipURI;

    .line 225
    .end local p1
    .local v27, requestUri:Ljavax/sip/address/SipURI;
    :goto_17c
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_284

    .line 226
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    check-cast v8, Ljavax/sip/header/WWWAuthenticateHeader;

    .line 227
    .restart local v8       #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    invoke-interface {v8}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v25

    .line 228
    .local v25, realm:Ljava/lang/String;
    const/16 v17, 0x0

    .line 230
    .local v17, authorization:Ljavax/sip/header/AuthorizationHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    move-object v4, v0

    instance-of v4, v4, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    if-eqz v4, :cond_23b

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    move-result-object v9

    .line 233
    .local v9, credHash:Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v31

    .line 234
    .local v31, uri:Ljavax/sip/address/URI;
    invoke-interface {v9}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    move-result-object v29

    .line 235
    .local v29, sipDomain:Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_230

    const-string v4, ""

    move-object v7, v4

    :goto_1c2
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v17

    .line 254
    .end local v9           #credHash:Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v31           #uri:Ljavax/sip/address/URI;
    :goto_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created authorization header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 258
    :cond_1f6
    if-eqz p4, :cond_207

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    .line 262
    :cond_207
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto/16 :goto_17c

    .line 202
    .end local v8           #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    .end local v17           #authorization:Ljavax/sip/header/AuthorizationHeader;
    .end local v25           #realm:Ljava/lang/String;
    .end local v27           #requestUri:Ljavax/sip/address/SipURI;
    .end local v28           #retryTran:Ljavax/sip/ClientTransaction;
    .end local v29           #sipDomain:Ljava/lang/String;
    .restart local p1
    :catch_210
    move-exception v4

    move-object/from16 v20, v4

    .line 203
    .local v20, ex:Ljavax/sip/InvalidArgumentException;
    new-instance v4, Ljavax/sip/SipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CSeq -- could not increment : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v18 .. v18}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v20           #ex:Ljavax/sip/InvalidArgumentException;
    .end local p1
    .restart local v8       #authHeader:Ljavax/sip/header/WWWAuthenticateHeader;
    .restart local v9       #credHash:Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .restart local v17       #authorization:Ljavax/sip/header/AuthorizationHeader;
    .restart local v25       #realm:Ljava/lang/String;
    .restart local v27       #requestUri:Ljavax/sip/address/SipURI;
    .restart local v28       #retryTran:Ljavax/sip/ClientTransaction;
    .restart local v29       #sipDomain:Ljava/lang/String;
    .restart local v31       #uri:Ljavax/sip/address/URI;
    :cond_230
    new-instance v4, Ljava/lang/String;

    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    move-object v7, v4

    goto :goto_1c2

    .line 240
    .end local v9           #credHash:Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;
    .end local v29           #sipDomain:Ljava/lang/String;
    .end local v31           #uri:Ljavax/sip/address/URI;
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    move-result-object v15

    .line 241
    .local v15, userCreds:Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    invoke-interface {v15}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    move-result-object v29

    .line 242
    .restart local v29       #sipDomain:Ljava/lang/String;
    if-nez v15, :cond_25b

    .line 243
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Cannot find user creds for the given user name and realm"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_25b
    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_279

    const-string v4, ""

    move-object v13, v4

    :goto_270
    move-object/from16 v10, p0

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v17

    goto/16 :goto_1c8

    :cond_279
    new-instance v4, Ljava/lang/String;

    invoke-interface/range {v26 .. v26}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v13, v4

    goto :goto_270

    .line 265
    .end local v15           #userCreds:Lgov/nist/javax/sip/clientauthutils/UserCredentials;
    .end local v17           #authorization:Ljavax/sip/header/AuthorizationHeader;
    .end local v25           #realm:Ljava/lang/String;
    .end local v29           #sipDomain:Ljava/lang/String;
    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2b1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returning authorization transaction."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2b1
    .catch Ljavax/sip/SipException; {:try_start_12b .. :try_end_2b1} :catch_66
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_2b1} :catch_ab

    .line 269
    :cond_2b1
    return-object v28
.end method

.method public removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .registers 4
    .parameter "callId"

    .prologue
    .line 461
    if-nez p1, :cond_a

    .line 462
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callId argument "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .registers 11
    .parameter "request"

    .prologue
    .line 435
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v5, v0

    .line 437
    .local v5, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, callId:Ljava/lang/String;
    const-string v6, "Authorization"

    invoke-interface {p1, v6}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    .line 440
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v6, v3}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 442
    .local v2, authHeaders:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/sip/header/AuthorizationHeader;>;"
    if-nez v2, :cond_3e

    .line 443
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 444
    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find authentication headers for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 453
    :cond_3d
    return-void

    .line 449
    :cond_3e
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/AuthorizationHeader;

    .line 450
    .local v1, authHeader:Ljavax/sip/header/AuthorizationHeader;
    invoke-interface {p1, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_42
.end method
