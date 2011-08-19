.class public abstract Lcom/asus/dmlib/syncml/dm/DMCommunicator;
.super Ljava/lang/Object;
.source "DMCommunicator.java"


# static fields
.field private static final AUTHENTICATION_STATE_AUTHENTCATION_REQUIRED:I = 0x4

.field private static final AUTHENTICATION_STATE_AUTHENTICATE_SUCCESS:I = 0x0

.field private static final AUTHENTICATION_STATE_AUTHENTICATION_ALREADY:I = 0x1

.field private static final AUTHENTICATION_STATE_REACH_CHELLENGE_MAX_COUNT:I = 0x5

.field private static final AUTHENTICATION_STATE_UNAUTHORIZE:I = 0x3

.field private static final BINARY_XML_OVERHEAD:I = 0x6

.field private static final CLEAR_TEXT_XML_OVERHEAD:I = 0x32

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_HMAC_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final MAX_CHALLENGE_COUNT:I = 0x1

.field private static final MAX_RESEND_CRED_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DMCommunicator"


# instance fields
.field private isServAuthOK:Z

.field protected mAcceptCharset:Ljava/lang/String;

.field protected mAcceptType:Ljava/lang/String;

.field protected mAuthType:Ljava/lang/String;

.field protected mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

.field protected mContentType:Ljava/lang/String;

.field protected mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

.field protected mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

.field private mHmacAlgorithm:Ljava/lang/String;

.field private mHmacUsername:Ljava/lang/String;

.field private mHmacValue:Ljava/lang/String;

.field protected mLastMessage:Z

.field protected mOverhead:I

.field private mRcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;

.field private mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

.field private mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

.field private mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

.field protected mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

.field protected mSessionHandler:Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;

.field protected mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private authenticate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    const-string v0, "DMCommunicator"

    const-string v1, "Entering method authenticate()."

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isCredentialsSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAuthType:Ljava/lang/String;

    .line 196
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials of received message set. AuthType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->syncMLAuthMatches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "DMCommunicator"

    const-string v1, "Rceived credentials OK."

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0, v4}, Lcom/asus/dmlib/syncml/dm/DMSession;->setAuthenticated(Z)V

    .line 201
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->setChallengeCount(I)V

    move v0, v3

    .line 218
    :goto_0
    return v0

    .line 206
    :cond_0
    const-string v0, "DMCommunicator"

    const-string v1, "Rceived credentials is not OK, challenging."

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/syncml/dm/DMSession;->setAuthenticated(Z)V

    .line 209
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->challengeProcedure(I)I

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "Client credentials not set."

    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSession;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 215
    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/syncml/dm/DMSession;->setAuthenticated(Z)V

    .line 218
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->challengeProcedure(I)I

    move-result v0

    goto :goto_0
.end method

.method private challengeProcedure(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->maxChallengesDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x5

    .line 649
    :goto_0
    return v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->increaseChallengeCount()V

    move v0, p1

    .line 649
    goto :goto_0
.end method

.method private checkStatusCorrespondingToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncBody;Lcom/asus/dmlib/syncml/pack/BearerPackage;)V
    .locals 11
    .parameter "pSyncBodyFromInMsg"
    .parameter "bearerPkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 485
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v5

    .line 487
    .local v5, statusArray:[Lcom/asus/dmlib/syncml/message/management/Status;
    array-length v7, v5

    if-nez v7, :cond_0

    .line 488
    const-string v7, "DMCommunicator"

    const-string v8, "OMA DM Protocol error. Client send pkg without Status corresponding to SyncHdr."

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v7, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_AUTHENTICATION:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 495
    :cond_0
    aget-object v4, v5, v9

    .line 496
    .local v4, status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v6

    .line 498
    .local v6, statusCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    const/16 v7, 0xd4

    if-ne v6, v7, :cond_4

    .line 500
    :cond_1
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/management/Status;->getChal()Lcom/asus/dmlib/syncml/common/Chal;

    move-result-object v0

    .line 501
    .local v0, chal:Lcom/asus/dmlib/syncml/common/Chal;
    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/common/Chal;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v2

    .line 503
    .local v2, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "syncml:auth-md5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 504
    const-string v7, "NextNonce"

    invoke-virtual {v2, v7}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, nextClientNonce:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 507
    const-string v7, "DMCommunicator"

    const-string v8, "Protocol error. Client challenged without NextNonce."

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v7, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_VIOLATE_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 512
    :cond_2
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v7, v3}, Lcom/asus/dmlib/mo/DMAcc;->setClientNonce(Ljava/lang/String;)V

    .line 517
    .end local v2           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .end local v3           #nextClientNonce:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v7, v9}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->setSendCredCount(I)V

    .line 537
    .end local v0           #chal:Lcom/asus/dmlib/syncml/common/Chal;
    :goto_0
    return-void

    .line 522
    :cond_4
    const/16 v7, 0x191

    if-eq v6, v7, :cond_5

    const/16 v7, 0x197

    if-ne v6, v7, :cond_8

    .line 523
    :cond_5
    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/management/Status;->getChal()Lcom/asus/dmlib/syncml/common/Chal;

    move-result-object v1

    .line 524
    .local v1, inMsgChal:Lcom/asus/dmlib/syncml/common/Chal;
    const/4 v2, 0x0

    .line 525
    .restart local v2       #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/common/Chal;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 526
    const-string v7, "DMCommunicator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSessionState.getSendCredCount() < MAX_RESEND_CRED_COUNT ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getSendCredCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getSendCredCount()I

    move-result v7

    if-ge v7, v10, :cond_6

    .line 529
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v7}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createResponseToChallenge(Lcom/asus/dmlib/syncml/pack/BearerPackage;Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;)V

    .line 535
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->increaseSendCredCount()V

    goto :goto_0

    .line 531
    :cond_6
    new-instance v7, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_AUTHENTICATION:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 540
    :cond_7
    const-string v7, "DMCommunicator"

    const-string v8, "OMA DM Protocol error. Client send Status corresponding to SyncHdr without correct <Chal> element."

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v7, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_AUTHENTICATION:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 546
    .end local v1           #inMsgChal:Lcom/asus/dmlib/syncml/common/Chal;
    .end local v2           #meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    :cond_8
    const-string v7, "DMCommunicator"

    const-string v8, "OMA DM Protocol error. Client send Status corresponding to SyncHdr without status code 200, 212, 401 or 407."

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v7, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_VIOLATE_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private checkSyncHdrStatus(Lcom/asus/dmlib/syncml/message/container/SyncML;Ljava/util/HashMap;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 13
    .parameter "pMessageOut"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/asus/dmlib/syncml/pack/BearerPackage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    .local p2, brearerHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v12, 0xc8

    const/4 v11, 0x1

    const/16 v10, 0xd4

    const/4 v9, 0x0

    .line 425
    new-instance v0, Lcom/asus/dmlib/syncml/pack/BearerPackage;

    invoke-direct {v0, p2, p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;-><init>(Ljava/util/HashMap;Lcom/asus/dmlib/syncml/message/container/SyncML;)V

    .line 428
    .local v0, bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {p0, v7, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->checkStatusCorrespondingToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncBody;Lcom/asus/dmlib/syncml/pack/BearerPackage;)V

    .line 430
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v5

    .line 432
    .local v5, statusArray:[Lcom/asus/dmlib/syncml/message/management/Status;
    iget-boolean v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isServAuthOK:Z

    if-eqz v7, :cond_3

    .line 434
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAuthType:Ljava/lang/String;

    const-string v8, "syncml:auth-md5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    aget-object v7, v5, v9

    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createChallenge(Ljava/lang/String;)Lcom/asus/dmlib/syncml/common/Chal;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/asus/dmlib/syncml/message/management/Status;->setChal(Lcom/asus/dmlib/syncml/common/Chal;)V

    .line 437
    :cond_0
    aget-object v7, v5, v9

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 440
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v6

    .line 442
    .local v6, syncHdrStatusCode:I
    array-length v7, v5

    if-ne v7, v11, :cond_2

    if-eq v6, v12, :cond_1

    if-ne v6, v10, :cond_2

    .line 443
    :cond_1
    const/4 v0, 0x0

    .line 445
    :cond_2
    iput-boolean v9, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isServAuthOK:Z

    move-object v1, v0

    .line 479
    .end local v0           #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .end local v6           #syncHdrStatusCode:I
    .local v1, bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :goto_0
    return-object v1

    .line 457
    .end local v1           #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .restart local v0       #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :cond_3
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_5

    .line 458
    iget-object v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v4

    .line 460
    .local v4, rcvStatusArray:[Lcom/asus/dmlib/syncml/message/management/Status;
    const/4 v3, 0x1

    .line 462
    .local v3, isNeedResponse:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v4

    if-ge v2, v7, :cond_4

    .line 463
    aget-object v7, v4, v2

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v7

    if-eq v7, v12, :cond_6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/management/Status;->getStatusCode()I

    move-result v7

    if-eq v7, v10, :cond_6

    .line 472
    :cond_4
    if-nez v3, :cond_5

    .line 473
    const/4 v0, 0x0

    .end local v2           #i:I
    .end local v3           #isNeedResponse:Z
    .end local v4           #rcvStatusArray:[Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_5
    move-object v1, v0

    .line 479
    .end local v0           #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .restart local v1       #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    goto :goto_0

    .line 468
    .end local v1           #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .restart local v0       #bearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .restart local v2       #i:I
    .restart local v3       #isNeedResponse:Z
    .restart local v4       #rcvStatusArray:[Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_6
    array-length v7, v4

    sub-int/2addr v7, v11

    if-ne v2, v7, :cond_7

    .line 469
    const/4 v3, 0x0

    .line 462
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createAlertResponse(Lcom/asus/dmlib/syncml/message/container/SyncHdr;IZ)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 8
    .parameter "pRcvSyncHdr"
    .parameter "pAlertCode"
    .parameter "pAuthCase"

    .prologue
    const/4 v7, 0x1

    .line 660
    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v6}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getResponseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v2

    .line 662
    .local v2, header:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    new-instance v3, Lcom/asus/dmlib/syncml/message/management/Status;

    invoke-direct {v3}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>()V

    .line 663
    .local v3, status:Lcom/asus/dmlib/syncml/message/management/Status;
    const-string v5, "1"

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setCmdID(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setMsgRef(Ljava/lang/String;)V

    .line 665
    const-string v5, "0"

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setCmdRef(Ljava/lang/String;)V

    .line 666
    const-string v5, "SyncHdr"

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setCmd(Ljava/lang/String;)V

    .line 667
    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 669
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->addSourceRef(Ljava/lang/String;)V

    .line 672
    new-instance v0, Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-direct {v0}, Lcom/asus/dmlib/syncml/message/command/Alert;-><init>()V

    .line 673
    .local v0, alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/syncml/message/command/Alert;->setAlertCode(I)V

    .line 675
    new-instance v1, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>()V

    .line 677
    .local v1, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    const/16 v5, 0x4c7

    if-ne p2, v5, :cond_2

    .line 678
    if-eqz p3, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isCredentialsSet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    const/16 v5, 0x191

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 686
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mLastMessage:Z

    .line 687
    invoke-virtual {v1, v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    .line 692
    :goto_1
    invoke-virtual {v1, v3}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 693
    invoke-virtual {v1, v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 695
    new-instance v4, Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-direct {v4, v2, v1}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V

    .line 696
    .local v4, sync:Lcom/asus/dmlib/syncml/message/container/SyncML;
    return-object v4

    .line 682
    .end local v4           #sync:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :cond_1
    const/16 v5, 0x197

    invoke-virtual {v3, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    goto :goto_0

    .line 689
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    goto :goto_1
.end method

.method private createChallengeMessage(I)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 12
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getResponseHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v9

    .line 290
    .local v9, header:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    new-instance v0, Lcom/asus/dmlib/syncml/message/management/Status;

    const-string v1, "-1"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "SyncHdr"

    const-string v6, ""

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 292
    .local v0, status:Lcom/asus/dmlib/syncml/message/management/Status;
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createChallenge(Ljava/lang/String;)Lcom/asus/dmlib/syncml/common/Chal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->setChal(Lcom/asus/dmlib/syncml/common/Chal;)V

    .line 293
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addTargetRef(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/message/management/Status;->addSourceRef(Ljava/lang/String;)V

    .line 296
    new-instance v7, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>()V

    .line 298
    .local v7, body:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    invoke-virtual {v7, v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 299
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    .line 301
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v8

    .line 303
    .local v8, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v1, v8

    if-ge v10, v1, :cond_0

    .line 304
    new-instance v0, Lcom/asus/dmlib/syncml/message/management/Status;

    .end local v0           #status:Lcom/asus/dmlib/syncml/message/management/Status;
    const-string v1, "-1"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v8, v10

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->getCmdID()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v8, v10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/asus/dmlib/syncml/message/management/Status;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 307
    .restart local v0       #status:Lcom/asus/dmlib/syncml/message/management/Status;
    invoke-virtual {v7, v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatus(Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 303
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v11, Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-direct {v11, v9, v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V

    .line 311
    .local v11, sync:Lcom/asus/dmlib/syncml/message/container/SyncML;
    invoke-virtual {p0, v11}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->prepareRespMsg(Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v1

    return-object v1
.end method

.method private createResponseToChallenge(Lcom/asus/dmlib/syncml/pack/BearerPackage;Lcom/asus/dmlib/syncml/dm/message/description/Meta;Ljava/lang/String;)V
    .locals 8
    .parameter "bearerPkg"
    .parameter "meta"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/DMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 555
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v1

    .line 556
    .local v1, msgOutSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v0

    .line 557
    .local v0, bearerHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Type"

    invoke-virtual {p2, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, type:Ljava/lang/String;
    const-string v4, "DMCommunicator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Challenge type is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v4, "syncml:auth-mac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    const-string v4, "NextNonce"

    invoke-virtual {p2, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, nextClientNonceB64:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 565
    const-string v4, "DMCommunicator"

    const-string v5, "Protocol error. Client challenged without NextNonce."

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v4, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_VIOLATE_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v4, v2}, Lcom/asus/dmlib/mo/DMAcc;->setClientNonce(Ljava/lang/String;)V

    .line 572
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;

    invoke-virtual {v4, v7}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setHmacInUse(Z)V

    .line 603
    .end local v2           #nextClientNonceB64:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    const-string v4, "syncml:auth-basic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 582
    const-string v4, "syncml:auth-basic"

    invoke-virtual {p0, v1, v7, v4, p3}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCredToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncHdr;ZLjava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 585
    const-string v4, "DMCommunicator"

    const-string v5, "in createResponseToChallenge(): getLocName() is null"

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_3
    new-instance v4, Lcom/asus/dmlib/syncml/message/common/Source;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocURI()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/asus/dmlib/syncml/message/common/Source;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setSource(Lcom/asus/dmlib/syncml/message/common/Source;)V

    goto :goto_0

    .line 590
    :cond_4
    const-string v4, "syncml:auth-md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    const-string v4, "NextNonce"

    invoke-virtual {p2, v4}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2       #nextClientNonceB64:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 594
    const-string v4, "DMCommunicator"

    const-string v5, "Protocol error. Client challenged without NextNonce."

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v4, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_VIOLATE_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 600
    :cond_5
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v4, v2}, Lcom/asus/dmlib/mo/DMAcc;->setClientNonce(Ljava/lang/String;)V

    .line 601
    const-string v4, "syncml:auth-md5"

    invoke-virtual {p0, v1, v7, v4, p3}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCredToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncHdr;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V
    .locals 1
    .parameter "pSession"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionHandler:Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;

    invoke-interface {v0, p1}, Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;->finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V

    .line 281
    return-void
.end method

.method private getBearerHeaderAttributes(Ljava/util/Map;)V
    .locals 3
    .parameter "pHttpHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "Accept-Charset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "utf-8"

    :goto_0
    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    .line 232
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    .line 234
    const-string v0, "application/vnd.syncml.dm+xml"

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/vnd.syncml.dm+wbxml"

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value for Content-Type - must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_UNKNOWN_MIME_TYPE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_1
    const-string v0, "Accept"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    const-string v1, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    const-string v0, "application/vnd.syncml.dm+wbxml"

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    .line 260
    :goto_2
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    const-string v1, "application/vnd.syncml.dm+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    goto :goto_2

    .line 254
    :cond_4
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown accept content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_UNKNOWN_ACCEPT_MIME_TYPE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRespBearerPkgHdr()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 769
    .local v0, bearerHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "accept"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v1, "content-type"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "accept-charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-object v0
.end method

.method private getSession()Lcom/asus/dmlib/syncml/dm/DMSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionHandler:Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-interface {v0, v1}, Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;->getDMSession(Lcom/asus/dmlib/syncml/message/container/SyncHdr;)Lcom/asus/dmlib/syncml/dm/DMSession;

    move-result-object v0

    return-object v0
.end method

.method private isCredentialsSet()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSessionAbort(Lcom/asus/dmlib/syncml/message/container/SyncBody;)Z
    .locals 9
    .parameter "rcvSyncBody"

    .prologue
    .line 751
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v4

    .line 753
    .local v4, cmds:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    move-object v2, v4

    .local v2, arr$:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v2, v5

    .line 754
    .local v3, cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    instance-of v7, v3, Lcom/asus/dmlib/syncml/message/command/Alert;

    if-eqz v7, :cond_0

    .line 755
    move-object v0, v3

    check-cast v0, Lcom/asus/dmlib/syncml/message/command/Alert;

    move-object v1, v0

    .line 757
    .local v1, alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/command/Alert;->getAlertCode()I

    move-result v7

    const/16 v8, 0x4c7

    if-ne v7, v8, :cond_0

    .line 758
    const-string v7, "DMCommunicator"

    const-string v8, "****** notified ALERT_1223_SESSION_ABORT by server ******"

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v7, 0x1

    .line 764
    .end local v1           #alert:Lcom/asus/dmlib/syncml/message/command/Alert;
    .end local v3           #cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :goto_1
    return v7

    .line 753
    .restart local v3       #cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 764
    .end local v3           #cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private maxChallengesDone()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 653
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionState.getChallengeCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getChallengeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getChallengeCount()I

    move-result v0

    if-lt v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCommandAndMessageIDs(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 7
    .parameter "pSyncMLMsgOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getNextMsgID()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, msgID:Ljava/lang/String;
    const-string v4, "DMCommunicator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setMsgID(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v3

    .line 611
    .local v3, statuses:[Lcom/asus/dmlib/syncml/message/management/Status;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 612
    aget-object v4, v3, v1

    iget-object v5, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v5}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getNextCommandID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/dmlib/syncml/message/management/Status;->setCmdID(Ljava/lang/String;)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v0

    .line 615
    .local v0, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-direct {p0, v0, v2}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCommandIDs([Lcom/asus/dmlib/syncml/message/command/BaseCommand;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private setCommandIDs([Lcom/asus/dmlib/syncml/message/command/BaseCommand;Ljava/lang/String;)V
    .locals 6
    .parameter "commands"
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 622
    .local v1, cmdID:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 623
    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getNextCommandID()Ljava/lang/String;

    move-result-object v1

    .line 624
    aget-object v4, p1, v3

    invoke-virtual {v4, v1}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->setCmdID(Ljava/lang/String;)V

    .line 626
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/asus/dmlib/syncml/message/command/Atomic;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/asus/dmlib/syncml/message/command/Sequence;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    :cond_1
    aget-object v4, p1, v3

    instance-of v4, v4, Lcom/asus/dmlib/syncml/message/command/Atomic;

    if-eqz v4, :cond_2

    .line 632
    aget-object v4, p1, v3

    check-cast v4, Lcom/asus/dmlib/syncml/message/command/Atomic;

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/command/Atomic;->getCmdList()Ljava/util/ArrayList;

    move-result-object v2

    .line 633
    .local v2, cmdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/BaseCommand;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 634
    .local v0, cmdArray:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    invoke-direct {p0, v4, p2}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCommandIDs([Lcom/asus/dmlib/syncml/message/command/BaseCommand;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    .end local v0           #cmdArray:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .end local v2           #cmdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/BaseCommand;>;"
    :cond_2
    aget-object v4, p1, v3

    check-cast v4, Lcom/asus/dmlib/syncml/message/command/Sequence;

    invoke-virtual {v4}, Lcom/asus/dmlib/syncml/message/command/Sequence;->getCmdList()Ljava/util/ArrayList;

    move-result-object v2

    .line 637
    .restart local v2       #cmdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/BaseCommand;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    .line 638
    .restart local v0       #cmdArray:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    invoke-direct {p0, v4, p2}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCommandIDs([Lcom/asus/dmlib/syncml/message/command/BaseCommand;Ljava/lang/String;)V

    goto :goto_1

    .line 641
    .end local v0           #cmdArray:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .end local v2           #cmdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/dmlib/syncml/message/command/BaseCommand;>;"
    :cond_3
    return-void
.end method

.method private syncMLAuthMatches()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, syncMLAuthMatches:Z
    :try_start_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v3}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getCred()Lcom/asus/dmlib/syncml/message/common/Cred;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mAcceptCharset:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/asus/dmlib/syncml/dm/DMSession;->syncMLAuthMatches(Lcom/asus/dmlib/syncml/message/common/Cred;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 276
    return v1

    .line 266
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 267
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v3, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_UNSUPPORT_ENCODING:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 271
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v3, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INVALID_CALL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected combineMessages([Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 13
    .parameter "messages"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 700
    const/4 v9, 0x0

    aget-object v8, p1, v9

    .line 702
    .local v8, temp:Lcom/asus/dmlib/syncml/message/container/SyncML;
    array-length v9, p1

    sub-int/2addr v9, v11

    aget-object v9, p1, v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v5

    .line 704
    .local v5, lastHeader:Lcom/asus/dmlib/syncml/message/container/SyncHdr;
    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v2

    .line 705
    .local v2, firstBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    new-instance v7, Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {v7}, Lcom/asus/dmlib/syncml/message/container/SyncBody;-><init>()V

    .line 707
    .local v7, returnBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatuses([Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 708
    array-length v9, p1

    if-le v9, v11, :cond_0

    .line 709
    const/4 v1, 0x0

    .line 712
    .local v1, current:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_0

    .line 713
    aget-object v9, p1, v3

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v1

    .line 715
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addStatuses([Lcom/asus/dmlib/syncml/message/management/Status;)V

    .line 717
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCommands([Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 712
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 721
    .end local v1           #current:Lcom/asus/dmlib/syncml/message/container/SyncBody;
    .end local v3           #i:I
    :cond_0
    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v0

    .line 722
    .local v0, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const/4 v6, 0x0

    .line 725
    .local v6, results:Lcom/asus/dmlib/syncml/message/command/Results;
    const/4 v4, 0x0

    .end local p0
    .local v4, j:I
    :goto_1
    array-length v9, v0

    if-ge v4, v9, :cond_3

    .line 726
    aget-object v9, v0, v4

    instance-of v9, v9, Lcom/asus/dmlib/syncml/message/command/Results;

    if-eqz v9, :cond_2

    .line 727
    aget-object v6, v0, v4

    .end local v6           #results:Lcom/asus/dmlib/syncml/message/command/Results;
    check-cast v6, Lcom/asus/dmlib/syncml/message/command/Results;

    .line 729
    .restart local v6       #results:Lcom/asus/dmlib/syncml/message/command/Results;
    const/4 v3, 0x1

    .line 732
    .restart local v3       #i:I
    :goto_2
    add-int v9, v4, v3

    array-length v10, v0

    if-ge v9, v10, :cond_1

    add-int v9, v4, v3

    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->getAppCommandRef()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/message/command/Results;->getAppCommandRef()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 733
    invoke-virtual {v6, v12}, Lcom/asus/dmlib/syncml/message/command/Results;->setTargetRef(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v6, v12}, Lcom/asus/dmlib/syncml/message/command/Results;->setSourceRef(Ljava/lang/String;)V

    .line 735
    add-int v9, v4, v3

    aget-object p0, v0, v9

    check-cast p0, Lcom/asus/dmlib/syncml/message/command/Results;

    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/message/command/Results;->getItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/asus/dmlib/syncml/message/command/Results;->addItems(Ljava/util/ArrayList;)V

    .line 736
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 738
    :cond_1
    add-int v9, v4, v3

    sub-int v4, v9, v11

    .line 739
    invoke-virtual {v7, v6}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    .line 725
    .end local v3           #i:I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 741
    :cond_2
    aget-object v9, v0, v4

    invoke-virtual {v7, v9}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->addCmd(Lcom/asus/dmlib/syncml/message/command/BaseCommand;)V

    goto :goto_3

    .line 744
    :cond_3
    invoke-virtual {v7, v11}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    .line 745
    new-instance v8, Lcom/asus/dmlib/syncml/message/container/SyncML;

    .end local v8           #temp:Lcom/asus/dmlib/syncml/message/container/SyncML;
    invoke-direct {v8, v5, v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Lcom/asus/dmlib/syncml/message/container/SyncBody;)V

    .line 747
    .restart local v8       #temp:Lcom/asus/dmlib/syncml/message/container/SyncML;
    return-object v8
.end method

.method protected createChallenge(Ljava/lang/String;)Lcom/asus/dmlib/syncml/common/Chal;
    .locals 7
    .parameter "pCharsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v3}, Lcom/asus/dmlib/mo/DMAcc;->getServerAuthPref()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, authType:Ljava/lang/String;
    new-instance v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v3, "b64"

    invoke-direct {v1, v3, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v1, meta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    const-string v3, "syncml:auth-md5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v3}, Lcom/asus/dmlib/mo/DMAcc;->getNextDMServNonce()[B

    move-result-object v2

    .line 344
    .local v2, nextNonce:[B
    const-string v3, "NextNonce"

    invoke-static {v2, p1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmlns"

    const-string v6, "syncml:metinf"

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->setTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v2           #nextNonce:[B
    :cond_0
    new-instance v3, Lcom/asus/dmlib/syncml/common/Chal;

    invoke-direct {v3, v1}, Lcom/asus/dmlib/syncml/common/Chal;-><init>(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    return-object v3
.end method

.method protected abstract handlePackage(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Z)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected prepareRespMsg(Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 11
    .parameter "pSyncMLMsgOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->getRespBearerPkgHdr()Ljava/util/HashMap;

    move-result-object v0

    .line 352
    .local v0, bearerHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->checkSyncHdrStatus(Lcom/asus/dmlib/syncml/message/container/SyncML;Ljava/util/HashMap;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v6

    .line 354
    .local v6, retVal:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    if-nez v6, :cond_0

    .line 355
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-direct {p0, v8}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V

    .line 356
    const/4 v8, 0x0

    .line 419
    :goto_0
    return-object v8

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->setCommandAndMessageIDs(Lcom/asus/dmlib/syncml/message/container/SyncML;)V

    .line 360
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending package from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getTarget()Lcom/asus/dmlib/syncml/message/common/Target;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/common/Target;->getLocURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v8, "DMCommunicator"

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmConfig;->getEncodeWBXMLMsg()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 367
    const-string v8, "utf-8"

    invoke-virtual {p1, v8}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setBody([B)V

    .line 371
    :goto_1
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;

    invoke-virtual {v8}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 373
    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v1

    .line 374
    .local v1, bearerHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v8}, Lcom/asus/dmlib/mo/DMAcc;->getClientUserName()Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, username:Ljava/lang/String;
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v8}, Lcom/asus/dmlib/mo/DMAcc;->getClientPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 376
    .local v5, password:[B
    iget-object v8, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v8}, Lcom/asus/dmlib/mo/DMAcc;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, nonce:Ljava/lang/String;
    const/4 v2, 0x0

    .line 379
    .local v2, hmac:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setHmacInUse(Z)V

    .line 381
    const-string v8, "MD5"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B

    move-result-object v10

    invoke-static {v8, v7, v5, v9, v10}, Lcom/asus/dmlib/util/DMUtils;->calculateHmac(Ljava/lang/String;Ljava/lang/String;[B[B[B)Ljava/lang/String;

    move-result-object v2

    .line 383
    const-string v8, "DMCommunicator"

    const-string v9, "========== calculate HMAC related data start =========== "

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Client Nonce: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Password: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Msg Body: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Body Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v8, "DMCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculate Result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v8, "DMCommunicator"

    const-string v9, "========== calculate HMAC related data end =========== "

    invoke-static {v8, v9}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v3, "algorithm=MD5, "

    .line 395
    .local v3, hmacHdrValue:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "username=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mac="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    const-string v8, "x-syncml-hmac"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #bearerHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #hmac:Ljava/lang/String;
    .end local v3           #hmacHdrValue:Ljava/lang/String;
    .end local v4           #nonce:Ljava/lang/String;
    .end local v5           #password:[B
    .end local v7           #username:Ljava/lang/String;
    :cond_1
    move-object v8, v6

    .line 419
    goto/16 :goto_0

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->setBody([B)V

    goto/16 :goto_1
.end method

.method public process(Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 5
    .parameter "rcvBearerPkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INVALID_CALL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 90
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->getBearerHeaderAttributes(Ljava/util/Map;)V

    .line 91
    const-string v0, "DMCommunicator"

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncHdr()Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    .line 93
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    .line 94
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvBearerPkg:Lcom/asus/dmlib/syncml/pack/BearerPackage;

    .line 96
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->getSession()Lcom/asus/dmlib/syncml/dm/DMSession;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    .line 97
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionState()Lcom/asus/dmlib/syncml/dm/DMSessionState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    const-string v0, "DMCommunicator"

    const-string v1, "Initializing DMSessionState"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/asus/dmlib/syncml/dm/DMSessionState;

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v1}, Lcom/asus/dmlib/mo/DMAcc;->getServAddr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/dm/DMSessionState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/syncml/dm/DMSession;->setSessionState(Lcom/asus/dmlib/syncml/dm/DMSessionState;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/common/Source;->getLocName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v1}, Lcom/asus/dmlib/mo/DMAcc;->getServerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string v0, "DMCommunicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<LocName> in <Source> must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DMAcc;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/asus/dmlib/syncml/exception/SyncMLException;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_VIOLATE_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/SyncMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionState()Lcom/asus/dmlib/syncml/dm/DMSessionState;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isSessionAbort(Lcom/asus/dmlib/syncml/message/container/SyncBody;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 164
    :goto_1
    return-object v0

    .line 119
    :cond_3
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->authenticate()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V

    move-object v0, v2

    .line 136
    goto :goto_1

    .line 121
    :pswitch_1
    iput-boolean v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->isServAuthOK:Z

    .line 139
    :pswitch_2
    const-string v0, "DMCommunicator"

    const-string v1, "finish authenticate()..."

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 183
    new-instance v0, Lcom/asus/dmlib/syncml/exception/DMException;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_SESSION_STATTE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/exception/DMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_3
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createChallengeMessage(I)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v0

    goto :goto_1

    .line 128
    :pswitch_4
    const/16 v0, 0x197

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createChallengeMessage(I)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v0

    goto :goto_1

    .line 130
    :pswitch_5
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V

    .line 131
    const-string v0, "DMCommunicator"

    const-string v1, "AUTHENTICATION_STATE_REACH_CHELLENGE_MAX_COUNT"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 132
    goto :goto_1

    .line 143
    :pswitch_6
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getInputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {p0, v0, v4}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->handlePackage(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Z)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v0

    goto :goto_1

    .line 152
    :pswitch_7
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncBody:Lcom/asus/dmlib/syncml/message/container/SyncBody;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getInputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    invoke-virtual {p0, v0, v3}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->handlePackage(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Z)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v0

    goto :goto_1

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getInputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncMLMsg:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mRcvSyncHdr:Lcom/asus/dmlib/syncml/message/container/SyncHdr;

    const/16 v1, 0x4c6

    invoke-direct {p0, v0, v1, v3}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->createAlertResponse(Lcom/asus/dmlib/syncml/message/container/SyncHdr;IZ)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->prepareRespMsg(Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v0

    goto/16 :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected setCredToSyncHdr(Lcom/asus/dmlib/syncml/message/container/SyncHdr;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pSyncHdr"
    .parameter "pIsChalByOpposite"
    .parameter "pAuthTypeFromOpposite"
    .parameter "pCharsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v1}, Lcom/asus/dmlib/mo/DMAcc;->getClientAuthPref()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, authType:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 321
    move-object v0, p3

    .line 324
    :cond_0
    const-string v1, "b64"

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DMAcc;->getClientUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v3}, Lcom/asus/dmlib/mo/DMAcc;->getClientPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v4}, Lcom/asus/dmlib/mo/DMAcc;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/asus/dmlib/util/DMUtils;->calculateCred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;)[B

    move-result-object v7

    .line 327
    .local v7, credData:[B
    new-instance v6, Lcom/asus/dmlib/syncml/message/common/Cred;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmConfig;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v6, v1}, Lcom/asus/dmlib/syncml/message/common/Cred;-><init>(Ljava/lang/String;)V

    .line 328
    .local v6, cred:Lcom/asus/dmlib/syncml/message/common/Cred;
    new-instance v1, Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    const-string v2, "b64"

    invoke-direct {v1, v2, v0}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/asus/dmlib/syncml/message/common/Cred;->setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V

    .line 329
    invoke-virtual {p1, v6}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V

    .line 331
    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSource()Lcom/asus/dmlib/syncml/message/common/Source;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMCommunicator;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v2}, Lcom/asus/dmlib/mo/DevInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/syncml/message/common/Source;->setLocName(Ljava/lang/String;)V

    goto :goto_0
.end method
