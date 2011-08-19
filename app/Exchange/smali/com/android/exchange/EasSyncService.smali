.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field mAuthString:Ljava/lang/String;

.field private final mBindArguments:[Ljava/lang/String;

.field mCmdString:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field public mIsValid:Z

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I

.field private mPostAborted:Z

.field private mPostReset:Z

.field public mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mSsl:Z

.field private mTrustSsl:Z

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EAS-1.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 201
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 209
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 210
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 212
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 217
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 219
    const/16 v1, 0x122

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 221
    const/16 v1, 0x3f2

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 223
    const/16 v1, 0x1d6

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 225
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 227
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 231
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 233
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 238
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v1, :cond_0

    .line 239
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 243
    .local v0, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v0, :cond_1

    .line 244
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 247
    :cond_1
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 248
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 247
    goto :goto_1

    :cond_3
    move v1, v3

    .line 248
    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 201
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 209
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 217
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 219
    const/16 v0, 0x122

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 221
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 223
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 225
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 227
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 253
    return-void
.end method

.method private acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x38b

    .line 1593
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1594
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1595
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1598
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1600
    const/16 v1, 0x389

    invoke-virtual {v0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1601
    invoke-virtual {v0, v3, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1602
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1603
    if-eqz p3, :cond_0

    .line 1604
    const/16 v1, 0x38c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1605
    const-string v1, "1"

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1606
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1608
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1609
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1610
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1612
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1613
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 1614
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1615
    new-instance v2, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1616
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1618
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1622
    if-eqz v1, :cond_1

    .line 1623
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1627
    :cond_1
    :goto_0
    return-object v0

    .line 1622
    :cond_2
    if-eqz v1, :cond_3

    .line 1623
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1627
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1622
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 1623
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    throw v0
.end method

.method private acknowledgeRemoteWipe(Ljava/lang/String;)V
    .locals 2
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1585
    return-void
.end method

.method private cacheAuthAndCmdString()V
    .locals 4

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&User="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 1289
    return-void
.end method

.method private canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1533
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1534
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1535
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1537
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1538
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1540
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1541
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    .line 1542
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1543
    new-instance v2, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1544
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1547
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    if-eqz v1, :cond_0

    .line 1569
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    move-object v0, v2

    .line 1573
    :goto_0
    return-object v0

    .line 1555
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-direct {p0, v0, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    if-eqz v0, :cond_3

    .line 1559
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->clearUnsupportedPolicies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1568
    if-eqz v1, :cond_2

    .line 1569
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 1568
    :cond_3
    if-eqz v1, :cond_4

    .line 1569
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    move-object v0, v4

    goto :goto_0

    .line 1568
    :cond_5
    if-eqz v1, :cond_6

    .line 1569
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_6
    move-object v0, v4

    .line 1573
    goto :goto_0

    .line 1568
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 1569
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_7
    throw v0
.end method

.method private doProgressCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 924
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doStatusCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"

    .prologue
    .line 916
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private exitStatusToServiceStatus(I)I
    .locals 1
    .parameter "exitStatus"

    .prologue
    .line 1636
    packed-switch p1, :pswitch_data_0

    .line 1642
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1638
    :pswitch_1
    const/16 v0, 0x17

    goto :goto_0

    .line 1640
    :pswitch_2
    const/16 v0, 0x16

    goto :goto_0

    .line 1636
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 1333
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 3
    .parameter "timeout"

    .prologue
    .line 1337
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1338
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1339
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1340
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1341
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1342
    .local v0, client:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MS-WAP-Provisioning-XML"

    goto :goto_0
.end method

.method private getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "resp"
    .parameter "post"

    .prologue
    .line 524
    const-string v2, "X-MS-Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 525
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 526
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v2, p2

    .line 534
    .end local v0           #loc:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLikelyNatFailure(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1913
    if-nez p1, :cond_0

    move v0, v1

    .line 1917
    :goto_0
    return v0

    .line 1914
    :cond_0
    const-string v0, "reset by peer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1917
    goto :goto_0
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v14, 0x3

    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 2170
    new-instance v10, Lcom/android/exchange/adapter/PingParser;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 2171
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2174
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2175
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 2176
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 2177
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v3, v13

    .line 2178
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? and serverId=?"

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2181
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2198
    const/16 v3, 0xe

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2199
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v5

    .line 2201
    if-ne v5, v14, :cond_0

    .line 2202
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v3

    .line 2203
    if-lez v3, :cond_2

    .line 2204
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    :cond_0
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v3, 0x3

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2205
    :cond_2
    if-nez v3, :cond_0

    .line 2208
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2209
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2210
    if-nez v3, :cond_3

    .line 2211
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Last ping reported changes in error for: "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2212
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2229
    :catchall_0
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2213
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v13, :cond_4

    .line 2215
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2229
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2218
    :cond_4
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "Last ping reported changes in error for: "

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2219
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2233
    :cond_5
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v3

    return v3
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter "client"
    .parameter "post"
    .parameter "canRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 551
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 553
    .local v2, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 555
    .local v1, code:I
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_0

    .line 556
    invoke-direct {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 557
    if-eqz p2, :cond_3

    .line 558
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 581
    :goto_0
    return-object v3

    .line 562
    :cond_0
    const/16 v3, 0x191

    if-ne v1, v3, :cond_2

    .line 563
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 566
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 568
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 570
    const-string v3, "Authorization"

    invoke-virtual {p2, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 571
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto :goto_0

    .line 574
    .end local v0           #atSignIndex:I
    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 576
    :cond_2
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_3

    .line 578
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 579
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_3
    move-object v3, v2

    .line 581
    goto :goto_0
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1889
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1890
    if-nez v0, :cond_0

    .line 1903
    :goto_0
    return-void

    .line 1893
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1894
    const/16 v2, 0x19

    .line 1895
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 1896
    const/4 v2, 0x5

    .line 1898
    :cond_1
    const-string v3, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1899
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** PING ERROR LOOP: Set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1902
    const-string v0, "push fallback"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetSecurityPolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2434
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2435
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2436
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    .line 2437
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2439
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    .line 2440
    return-void
.end method

.method private runPingLoop()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;
        }
    .end annotation

    .prologue
    .line 1922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    move v4, v0

    .line 1923
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "runPingLoop"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x1b7740

    add-long v10, v5, v7

    .line 1926
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1927
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    const/4 v5, 0x0

    .line 1930
    const-wide/16 v6, -0x1

    move-wide v15, v6

    move/from16 v17, v5

    move/from16 v18, v4

    .line 1932
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v4, v0

    if-nez v4, :cond_26

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5, v6}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 1936
    const/16 v19, 0x0

    .line 1938
    const/16 v20, 0x0

    .line 1940
    const/16 v21, 0x0

    .line 1942
    new-instance v22, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1946
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1947
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1949
    const-wide/16 v5, -0x1

    cmp-long v5, v15, v5

    if-nez v5, :cond_28

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    move/from16 v7, v19

    move-wide v8, v5

    move/from16 v5, v21

    move/from16 v6, v20

    .line 1954
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1955
    add-int/lit8 v7, v7, 0x1

    .line 1959
    const/4 v15, 0x0

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1960
    invoke-static/range {v15 .. v16}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v15

    .line 1961
    const/16 v16, 0x1

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1962
    if-nez v15, :cond_4

    .line 1963
    const/4 v15, 0x7

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1964
    if-eqz v15, :cond_1

    const-string v19, "0"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1966
    :cond_1
    add-int/lit8 v7, v7, -0x1

    .line 1967
    add-int/lit8 v5, v5, 0x1

    .line 1968
    goto :goto_1

    .line 1971
    :cond_2
    add-int/lit8 v15, v6, 0x1

    if-nez v6, :cond_3

    .line 1973
    const/16 v6, 0x345

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v19, 0x348

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v19, 0x349

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1979
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 1980
    const/16 v19, 0x34a

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x34b

    const/16 v21, 0x2

    move-object v0, v4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x34c

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1984
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v15

    .line 1985
    goto/16 :goto_1

    :cond_4
    const/16 v19, 0x1

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x2

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1987
    :cond_5
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1995
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1988
    :cond_6
    const/16 v19, 0x3

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1989
    add-int/lit8 v7, v7, -0x1

    .line 1990
    const/4 v15, 0x2

    :try_start_1
    new-array v15, v15, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v16, v15, v19

    const/16 v16, 0x1

    const-string v19, " in error state; ignore"

    aput-object v19, v15, v16

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1995
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1998
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_9

    .line 1999
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2000
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ping not ready for: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2002
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2003
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ping ready for: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2009
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x5

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_c

    const/4 v4, 0x1

    .line 2011
    :goto_2
    if-lez v6, :cond_21

    if-eq v6, v7, :cond_a

    if-eqz v4, :cond_21

    .line 2013
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2014
    const/4 v5, 0x0

    .line 2015
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 2016
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 2019
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v6, v0

    if-eqz v6, :cond_d

    .line 2150
    :cond_b
    :goto_3
    return-void

    .line 2009
    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    .line 2021
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2024
    if-eqz v4, :cond_e

    .line 2025
    const/4 v15, 0x1

    :try_start_2
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Forcing ping after waiting for all boxes to be ready"

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2027
    :cond_e
    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    move/from16 v16, v0

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 2029
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 2032
    :try_start_3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 2033
    const-string v17, "Ping response: "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2036
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 2037
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v17, "Stopping pingLoop"

    aput-object v17, v4, v15

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2075
    if-eqz v16, :cond_b

    .line 2076
    :try_start_4
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 2079
    :catch_0
    move-exception v4

    move/from16 v15, v18

    .line 2080
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 2083
    if-eqz v16, :cond_17

    const/16 v17, 0x1

    .line 2084
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException runPingLoop: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v17, :cond_18

    move-object/from16 v21, v16

    :goto_7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2085
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    move v4, v15

    :cond_f
    :goto_8
    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    :goto_9
    move-wide v15, v8

    move/from16 v17, v4

    move/from16 v18, v5

    .line 2146
    goto/16 :goto_0

    :cond_10
    move/from16 v16, v18

    .line 2027
    goto/16 :goto_4

    .line 2041
    :cond_11
    const/16 v17, 0xc8

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 2043
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    .line 2044
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v15, v0

    .line 2045
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 2046
    if-eqz v15, :cond_14

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v15

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v15

    .line 2051
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_27

    if-nez v4, :cond_27

    .line 2052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v4, v0

    move/from16 v0, v18

    move v1, v4

    if-le v0, v1, :cond_12

    .line 2053
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 2054
    const-string v4, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2056
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v4, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    move v4, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_27

    .line 2058
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0xb4

    move v4, v0

    .line 2059
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v15, v0

    if-le v4, v15, :cond_13

    .line 2060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v4, v0

    .line 2062
    :cond_13
    const-string v15, "Increase ping heartbeat to "

    const-string v17, "s"

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2075
    :goto_a
    if-eqz v16, :cond_f

    .line 2076
    :try_start_7
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_8

    .line 2079
    :catch_1
    move-exception v15

    move-object/from16 v23, v15

    move v15, v4

    move-object/from16 v4, v23

    goto/16 :goto_5

    .line 2066
    :cond_14
    const/4 v4, 0x1

    :try_start_8
    new-array v4, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v17, "Ping returned empty result; throwing IOException"

    aput-object v17, v4, v15

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2067
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2075
    :catchall_1
    move-exception v4

    move/from16 v15, v18

    :goto_b
    if-eqz v16, :cond_15

    .line 2076
    :try_start_9
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_15
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2079
    :catch_2
    move-exception v4

    goto/16 :goto_5

    .line 2069
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2070
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2071
    const-string v4, "Authorization error during Ping: "

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2072
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2083
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2084
    :cond_18
    const-string v21, "[no message]"

    goto/16 :goto_7

    .line 2088
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 2089
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v6, v16, v6

    .line 2090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_1c

    .line 2092
    add-int/lit16 v4, v15, -0xb4

    .line 2093
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 2094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v6, v0

    if-ge v4, v6, :cond_1b

    .line 2095
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v4, v0

    .line 2097
    :cond_1b
    const-string v6, "Decreased ping heartbeat to "

    const-string v7, "s"

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    .line 2098
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d

    .line 2104
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Ping aborted; retry"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v15

    goto/16 :goto_8

    .line 2105
    :cond_1d
    const-wide/16 v16, 0x7d0

    cmp-long v6, v6, v16

    if-gez v6, :cond_1e

    .line 2106
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2107
    throw v4

    .line 2109
    :cond_1e
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "NAT type IOException"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v15

    goto/16 :goto_8

    .line 2111
    :cond_1f
    if-eqz v17, :cond_20

    const-string v6, "roken pipe"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    move v4, v15

    goto/16 :goto_8

    .line 2116
    :cond_20
    throw v4

    .line 2119
    :cond_21
    if-eqz v4, :cond_22

    .line 2122
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pingLoop waiting 60s for any pingable boxes"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2123
    const-wide/32 v4, 0xea60

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_9

    .line 2124
    :cond_22
    if-lez v7, :cond_23

    .line 2127
    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 2128
    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v18

    goto/16 :goto_9

    .line 2130
    :cond_23
    if-lez v5, :cond_24

    .line 2134
    const-string v4, "pingLoop waiting for initial sync of "

    const-string v6, " box(es)"

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 2135
    const-wide/16 v4, 0x2710

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_9

    .line 2136
    :cond_24
    const-wide/16 v4, -0x1

    cmp-long v4, v8, v4

    if-nez v4, :cond_25

    .line 2138
    const-wide/32 v4, 0xafc8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_9

    .line 2143
    :cond_25
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Account mailbox sleeping for 20m"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2144
    const-wide/32 v4, 0x124f80

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_9

    .line 2149
    :cond_26
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_3

    .line 2075
    :catchall_2
    move-exception v15

    move-object/from16 v23, v15

    move v15, v4

    move-object/from16 v4, v23

    goto/16 :goto_b

    :cond_27
    move/from16 v4, v18

    goto/16 :goto_a

    :cond_28
    move/from16 v5, v21

    move/from16 v6, v20

    move/from16 v7, v19

    move-wide v8, v15

    goto/16 :goto_1
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 844
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 845
    if-nez v0, :cond_0

    .line 847
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 849
    :cond_0
    if-eqz v0, :cond_7

    .line 851
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    move-object v0, v9

    .line 911
    :goto_0
    return-object v0

    .line 854
    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 855
    new-instance v2, Lcom/android/exchange/EasSyncService;

    const-string v3, "%GalLookupk%"

    invoke-direct {v2, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 859
    :try_start_0
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 860
    if-nez v3, :cond_2

    move-object v0, v9

    .line 861
    goto :goto_0

    .line 863
    :cond_2
    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 864
    invoke-static {v3}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 866
    iput-object p0, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 867
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 868
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 869
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 870
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    move v3, v7

    :goto_1
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 871
    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    move v1, v7

    :goto_2
    iput-boolean v1, v2, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 872
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 873
    iput-object v0, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 874
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 875
    const/16 v1, 0x3c5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v3, 0x3c7

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 876
    const/16 v1, 0x3c8

    const-string v3, "GAL"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v3, 0x3c9

    invoke-virtual {v1, v3, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 877
    const/16 v1, 0x3ca

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 878
    const/16 v1, 0x3cb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p4, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 879
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 881
    const-string v1, "Search"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 882
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 884
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 885
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    .line 886
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 888
    :try_start_2
    new-instance v3, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v3, v0, v2}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 889
    invoke-virtual {v3}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 891
    invoke-virtual {v3}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 896
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 902
    if-eqz v1, :cond_3

    .line 903
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    move v3, v8

    .line 870
    goto/16 :goto_1

    :cond_5
    move v1, v8

    .line 871
    goto/16 :goto_2

    .line 896
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 902
    :goto_3
    if-eqz v1, :cond_7

    .line 903
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_4
    move-object v0, v9

    .line 911
    goto/16 :goto_0

    .line 896
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 902
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    .line 903
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 906
    :catch_0
    move-exception v0

    .line 908
    new-array v1, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GAL lookup exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-virtual {v2, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_4

    .line 899
    :cond_9
    const/4 v3, 0x1

    :try_start_9
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GAL lookup returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1082
    new-instance v0, Lcom/android/emailcommon/mail/PackedString;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1083
    if-nez v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    const-string v1, "ORGMAIL"

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1089
    array-length v2, v1

    if-ne v2, v9, :cond_0

    .line 1090
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1092
    const-string v2, "DTSTAMP"

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    const-string v3, "DTSTART"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    const-string v4, "DTEND"

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1098
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1102
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v2, "dtstart"

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1105
    const-string v2, "dtend"

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1106
    const-string v2, "eventLocation"

    const-string v3, "LOC"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v2, "organizer"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    const-string v3, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    const-string v3, "attendeeEmail"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sget-object v3, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1118
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    const-string v3, "attendeeRelationship"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1121
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v1, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1128
    packed-switch p2, :pswitch_data_0

    .line 1137
    :pswitch_0
    const/16 v1, 0x100

    .line 1140
    :goto_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "UID"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v6, v1, v0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 1130
    :pswitch_1
    const/16 v1, 0x40

    .line 1131
    goto :goto_1

    .line 1133
    :pswitch_2
    const/16 v1, 0x80

    .line 1134
    goto :goto_1

    .line 1128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .locals 10
    .parameter "service"
    .parameter "versionHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, supportedVersions:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Server supports versions: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 385
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, supportedVersionsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 388
    .local v3, ourVersion:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 389
    .local v6, version:Ljava/lang/String;
    const-string v7, "2.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "12.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "12.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    :cond_0
    move-object v3, v6

    .line 388
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v6           #version:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 398
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No supported EAS versions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v7

    .line 401
    :cond_3
    iput-object v3, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 402
    invoke-static {v3}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 403
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v7, :cond_4

    .line 404
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 407
    :cond_4
    return-void
.end method

.method private sleep(JZ)V
    .locals 4
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 2153
    if-eqz p3, :cond_0

    .line 2154
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 2157
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    if-eqz p3, :cond_1

    .line 2162
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2165
    :cond_1
    :goto_0
    return-void

    .line 2158
    :catch_0
    move-exception v0

    .line 2161
    if-eqz p3, :cond_1

    .line 2162
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    goto :goto_0

    .line 2161
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 2162
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    :cond_2
    throw v0
.end method

.method private tryProvision()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1465
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_3

    .line 1468
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    .line 1471
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 1473
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->updatePolicies(Landroid/content/Context;J)V

    .line 1474
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1476
    const-string v1, "!!! Remote wipe request received"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v2, v5}, Lcom/android/exchange/SecurityPolicyDelegate;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1480
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 1483
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/SecurityPolicyDelegate;->isActiveAdmin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1484
    const-string v0, "!!! Not device admin; can\'t wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    move v0, v6

    .line 1517
    :goto_0
    return v0

    .line 1491
    :cond_0
    :try_start_0
    const-string v1, "!!! Acknowledging remote wipe to server"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_1
    const-string v0, "!!! Executing remote wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/SecurityPolicyDelegate;->remoteWipe(Landroid/content/Context;)V

    move v0, v6

    .line 1500
    goto :goto_0

    .line 1501
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-direct {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    if-eqz v0, :cond_3

    .line 1507
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 1509
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move v0, v5

    .line 1510
    goto :goto_0

    .line 1514
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    :cond_3
    move v0, v6

    .line 1517
    goto :goto_0

    .line 1493
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public alarm()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 269
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v5, :cond_0

    move v5, v9

    .line 323
    :goto_0
    return v5

    .line 270
    :cond_0
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, threadName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 277
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_5

    .line 278
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_2

    .line 279
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 280
    .local v4, uri:Ljava/net/URI;
    if-eqz v4, :cond_4

    .line 281
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 283
    const-string v1, "POST"

    .line 285
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ": Alert, aborting "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 291
    .end local v1           #query:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :cond_2
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 292
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 298
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const-wide/16 v5, 0x2710

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_2
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 307
    .local v2, s:Ljava/lang/Thread$State;
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_3

    .line 308
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 314
    :try_start_2
    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v2, v6, :cond_6

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v6, v0, :cond_6

    .line 315
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 316
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 317
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Interrupting..."

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 319
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v10

    goto/16 :goto_0

    .line 287
    .end local v2           #s:Ljava/lang/Thread$State;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_4
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ": Alert, no URI?"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 298
    .end local v0           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #uri:Ljava/net/URI;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 295
    .restart local v0       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Alert, no pending POST"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 296
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v9

    goto/16 :goto_0

    .line 321
    .restart local v2       #s:Ljava/lang/Thread$State;
    :cond_6
    :try_start_5
    monitor-exit v5

    move v5, v9

    .line 323
    goto/16 :goto_0

    .line 321
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 303
    .end local v2           #s:Ljava/lang/Thread$State;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1381
    :try_start_0
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1382
    add-int/lit16 v3, p3, 0x7530

    int-to-long v0, v3

    .line 1383
    .local v0, alarmTime:J
    if-eqz p4, :cond_0

    .line 1384
    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v0, v1}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1388
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :try_start_1
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 1392
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1393
    if-eqz p4, :cond_1

    .line 1394
    :try_start_2
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1398
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1399
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 1386
    :cond_0
    :try_start_3
    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v0, v1}, Lcom/android/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    goto :goto_0

    .line 1388
    .end local v0           #alarmTime:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1396
    .restart local v0       #alarmTime:J
    :cond_1
    :try_start_4
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_1

    .line 1399
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1392
    :catchall_2
    move-exception v2

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1393
    if-eqz p4, :cond_2

    .line 1394
    :try_start_5
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1398
    :goto_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1399
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    .line 1396
    :cond_2
    :try_start_6
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_2

    .line 1399
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1443
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1444
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1445
    const-string v0, "Contacts"

    .line 1449
    :goto_0
    return-object v0

    .line 1446
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 1447
    const-string v0, "Calendar"

    goto :goto_0

    .line 1449
    :cond_1
    const-string v0, "Email"

    goto :goto_0
.end method

.method protected isAuthError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 367
    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProvisionError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 376
    const/16 v0, 0x1c1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAttachment(Lcom/android/exchange/PartRequest;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object v10, v0

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 971
    if-nez v11, :cond_1

    .line 972
    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/16 v9, 0x10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 980
    iget-object v4, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 981
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    const-string v5, "\\+"

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 984
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attachment location after re-encode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetAttachment&AttachmentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 989
    const/4 v5, 0x0

    const/16 v6, 0x7530

    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 995
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 998
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 999
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    .line 1000
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v13, v4

    .line 1001
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 1002
    const/4 v4, 0x0

    .line 1003
    iget-wide v5, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 1004
    const/4 v5, 0x0

    .line 1006
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-virtual {v6, v15}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1007
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attachment filename retrieved as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v4

    .line 1011
    :goto_1
    if-eqz v16, :cond_3

    .line 1014
    if-eqz v13, :cond_2

    .line 1016
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1017
    const/16 v4, 0x4000

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1021
    const/4 v4, 0x0

    .line 1022
    const-string v5, "Attachment content-length: "

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1024
    :goto_2
    const/4 v5, 0x0

    const/16 v6, 0x4000

    move-object v0, v14

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1027
    if-gez v5, :cond_4

    .line 1028
    const-string v5, "Attachment load reached EOF, totalRead: "

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1051
    :goto_3
    const/4 v4, 0x0

    :try_start_4
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1054
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 1055
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 1058
    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1059
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1060
    const-string v5, "contentUri"

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v10, v5, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1062
    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1069
    :cond_3
    :goto_4
    if-eqz v12, :cond_0

    .line 1070
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 990
    :catch_0
    move-exception v12

    .line 991
    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/16 v9, 0x10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 992
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to send http post:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    :catch_1
    move-exception v5

    .line 1009
    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Can\'t get attachment; write file not found?"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v16, v4

    goto/16 :goto_1

    .line 1033
    :cond_4
    add-int v18, v4, v5

    .line 1036
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1040
    if-lez v13, :cond_7

    .line 1042
    move/from16 v0, v18

    move v1, v13

    if-le v0, v1, :cond_6

    .line 1043
    const-string v4, "totalRead is greater than attachment length?"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 1051
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    :try_start_7
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1069
    :catchall_1
    move-exception v4

    if-eqz v12, :cond_5

    .line 1070
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_5
    throw v4

    .line 1046
    :cond_6
    mul-int/lit8 v4, v18, 0x64

    :try_start_8
    div-int v9, v4, v13

    .line 1047
    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    move/from16 v4, v18

    .line 1049
    goto/16 :goto_2

    .line 1066
    :cond_8
    :try_start_9
    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/16 v9, 0x10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1294
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 1296
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v1, :cond_4

    const-string v1, "httpts"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    if-eqz p1, :cond_2

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    :cond_2
    if-eqz p2, :cond_3

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_3
    return-object v0

    .line 1296
    :cond_4
    const-string v1, "https"

    goto :goto_0

    :cond_5
    const-string v1, "http"

    goto :goto_0
.end method

.method protected messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1157
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 1158
    if-nez v6, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "mailboxKey"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1163
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1164
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1168
    if-eqz v1, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_0

    .line 1171
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1172
    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x146

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1173
    const/16 v3, 0x147

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1174
    const/16 v3, 0x148

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1175
    const/16 v3, 0x149

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1176
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1177
    const-string v0, "MoveItems"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1178
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1180
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1181
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    .line 1182
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1183
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1184
    if-eqz v3, :cond_5

    .line 1185
    new-instance v3, Lcom/android/exchange/adapter/MoveItemsParser;

    invoke-direct {v3, v0, p0}, Lcom/android/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1186
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->parse()Z

    .line 1187
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v0

    .line 1188
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    if-ne v0, v9, :cond_6

    .line 1191
    const-string v3, "mailboxKey"

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1203
    :cond_3
    :goto_1
    if-eq v0, v7, :cond_4

    if-ne v0, v9, :cond_5

    .line 1207
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1221
    :cond_5
    if-eqz v2, :cond_0

    .line 1222
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 1166
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1195
    :cond_6
    if-ne v0, v7, :cond_3

    .line 1197
    :try_start_3
    const-string v1, "syncServerId"

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v1, "flags"

    iget v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1221
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_7

    .line 1222
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_7
    throw v0

    .line 1214
    :cond_8
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1215
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 1217
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move items request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1218
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 5
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 768
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    return-void

    .line 770
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 771
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, name:Ljava/lang/String;
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    const-string v2, "Redirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 776
    :cond_2
    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 823
    .local v0, type:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    return-void

    .line 825
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 806
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    return-void

    .line 808
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 809
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, name:Ljava/lang/String;
    const-string v2, "User"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 812
    :cond_2
    const-string v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 9
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 725
    .local v1, mobileSync:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 726
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 747
    return-void

    .line 728
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 729
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, name:Ljava/lang/String;
    const-string v5, "Type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MobileSync"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 732
    const/4 v1, 0x1

    goto :goto_0

    .line 734
    :cond_2
    if-eqz v1, :cond_0

    const-string v5, "Url"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, url:Ljava/lang/String;
    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/microsoft-server-activesync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 740
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 741
    .local v0, lastSlash:I
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 742
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Autodiscover, server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 753
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    return-void

    .line 755
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 756
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, name:Ljava/lang/String;
    const-string v2, "Server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 9
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 786
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 787
    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    return-void

    .line 789
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 790
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, name:Ljava/lang/String;
    const-string v4, "EMailAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 792
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, addr:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 794
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    const-string v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, dn:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 331
    .local v1, uri:Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, query:Ljava/lang/String;
    const-string v3, "Cmd=Ping"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Reset, aborting Ping"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 335
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 336
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 340
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :cond_0
    monitor-exit v2

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method resetHeartbeats(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1855
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1859
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_3

    .line 1863
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 1864
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 1866
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 1867
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 1870
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 1871
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1883
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 1885
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 1886
    return-void

    .line 1873
    :cond_3
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 1876
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1878
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 1879
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3a

    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2447
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2563
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_0

    .line 2450
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 2452
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_f

    .line 2461
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2462
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_6

    .line 2497
    :cond_3
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1f

    .line 2498
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_0

    .line 2523
    :pswitch_0
    const/16 v0, 0x15

    .line 2524
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2533
    :goto_2
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_20

    .line 2539
    :try_start_2
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    if-ne v0, v7, :cond_4

    move v0, v6

    .line 2543
    :cond_4
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_a

    .line 2561
    :cond_5
    :goto_3
    const-string v0, "sync finished"

    :goto_4
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2464
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_9

    .line 2465
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2497
    :goto_5
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_21

    .line 2498
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1

    .line 2523
    :pswitch_1
    const/16 v0, 0x15

    .line 2524
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2533
    :goto_6
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_22

    .line 2539
    :try_start_4
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    if-ne v0, v7, :cond_7

    move v0, v6

    .line 2543
    :cond_7
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_9

    .line 2561
    :cond_8
    :goto_7
    const-string v0, "sync finished"

    goto :goto_4

    .line 2468
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_c

    .line 2469
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 2478
    :cond_a
    :goto_8
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 2479
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Looping for user request..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2480
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 2482
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 2483
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    goto :goto_5

    .line 2470
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_f

    .line 2471
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 2485
    :catch_0
    move-exception v0

    .line 2486
    const/4 v0, 0x1

    :try_start_6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Caught authentication error"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2487
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2497
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_19

    .line 2498
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_2

    .line 2523
    :pswitch_2
    const/16 v0, 0x15

    .line 2524
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2533
    :goto_9
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1a

    .line 2539
    :try_start_7
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    if-ne v0, v7, :cond_d

    move v0, v6

    .line 2543
    :cond_d
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_d

    .line 2561
    :cond_e
    :goto_a
    const-string v0, "sync finished"

    goto/16 :goto_4

    .line 2473
    :cond_f
    :try_start_8
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    .line 2488
    :catch_1
    move-exception v0

    .line 2489
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2490
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Caught IOException: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez v0, :cond_10

    const-string v0, "No message"

    :cond_10
    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2491
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2497
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1b

    .line 2498
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_3

    .line 2523
    :pswitch_3
    const/16 v0, 0x15

    .line 2524
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2533
    :goto_b
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1c

    .line 2539
    :try_start_a
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_11

    if-ne v0, v7, :cond_11

    move v0, v6

    .line 2543
    :cond_11
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_c

    .line 2561
    :cond_12
    :goto_c
    const-string v0, "sync finished"

    goto/16 :goto_4

    .line 2492
    :catch_2
    move-exception v0

    .line 2493
    :try_start_b
    const-string v1, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2497
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1d

    .line 2498
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_4

    .line 2523
    :pswitch_4
    const/16 v0, 0x15

    .line 2524
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2533
    :goto_d
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1e

    .line 2539
    :try_start_c
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_13

    if-ne v0, v7, :cond_13

    move v0, v6

    .line 2543
    :cond_13
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    .line 2561
    :cond_14
    :goto_e
    const-string v0, "sync finished"

    goto/16 :goto_4

    :pswitch_5
    move v1, v7

    .line 2533
    :goto_f
    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_18

    .line 2539
    :try_start_d
    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_15

    if-ne v1, v7, :cond_15

    move v1, v6

    .line 2543
    :cond_15
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_e

    .line 2561
    :cond_16
    :goto_10
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2495
    throw v0

    :catchall_0
    move-exception v0

    .line 2497
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_17

    .line 2498
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Sync finished"

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2500
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_5

    .line 2523
    :pswitch_6
    const/16 v1, 0x15

    .line 2524
    const-string v2, "Sync ended due to an exception."

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_f

    .line 2528
    :cond_17
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Stopped sync finished."

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v1, v6

    .line 2529
    goto :goto_f

    .line 2506
    :pswitch_7
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2509
    const-string v3, "syncStatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v6

    .line 2512
    goto/16 :goto_f

    .line 2514
    :pswitch_8
    const/16 v1, 0x16

    .line 2515
    goto/16 :goto_f

    .line 2517
    :pswitch_9
    const/16 v1, 0x17

    .line 2520
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_f

    .line 2548
    :cond_18
    if-nez v1, :cond_16

    .line 2552
    :try_start_e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_10

    .line 2554
    :catch_3
    move-exception v1

    goto/16 :goto_10

    .line 2528
    :cond_19
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v6

    .line 2529
    goto/16 :goto_9

    .line 2506
    :pswitch_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 2512
    goto/16 :goto_9

    :pswitch_b
    move v0, v7

    .line 2503
    goto/16 :goto_9

    .line 2514
    :pswitch_c
    const/16 v0, 0x16

    .line 2515
    goto/16 :goto_9

    .line 2517
    :pswitch_d
    const/16 v0, 0x17

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_9

    .line 2548
    :cond_1a
    if-nez v0, :cond_e

    .line 2552
    :try_start_f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_a

    .line 2554
    :catch_4
    move-exception v0

    goto/16 :goto_a

    .line 2528
    :cond_1b
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v6

    .line 2529
    goto/16 :goto_b

    .line 2506
    :pswitch_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 2512
    goto/16 :goto_b

    :pswitch_f
    move v0, v7

    .line 2503
    goto/16 :goto_b

    .line 2514
    :pswitch_10
    const/16 v0, 0x16

    .line 2515
    goto/16 :goto_b

    .line 2517
    :pswitch_11
    const/16 v0, 0x17

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_b

    .line 2548
    :cond_1c
    if-nez v0, :cond_12

    .line 2552
    :try_start_10
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_c

    .line 2554
    :catch_5
    move-exception v0

    goto/16 :goto_c

    .line 2528
    :cond_1d
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v6

    .line 2529
    goto/16 :goto_d

    .line 2506
    :pswitch_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 2512
    goto/16 :goto_d

    :pswitch_13
    move v0, v7

    .line 2503
    goto/16 :goto_d

    .line 2514
    :pswitch_14
    const/16 v0, 0x16

    .line 2515
    goto/16 :goto_d

    .line 2517
    :pswitch_15
    const/16 v0, 0x17

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_d

    .line 2548
    :cond_1e
    if-nez v0, :cond_14

    .line 2552
    :try_start_11
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_e

    .line 2554
    :catch_6
    move-exception v0

    goto/16 :goto_e

    .line 2528
    :cond_1f
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v6

    .line 2529
    goto/16 :goto_2

    .line 2506
    :pswitch_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 2512
    goto/16 :goto_2

    :pswitch_17
    move v0, v7

    .line 2503
    goto/16 :goto_2

    .line 2514
    :pswitch_18
    const/16 v0, 0x16

    .line 2515
    goto/16 :goto_2

    .line 2517
    :pswitch_19
    const/16 v0, 0x17

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_2

    .line 2548
    :cond_20
    if-nez v0, :cond_5

    .line 2552
    :try_start_12
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    .line 2554
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 2528
    :cond_21
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v6

    .line 2529
    goto/16 :goto_6

    .line 2506
    :pswitch_1a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2507
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 2512
    goto/16 :goto_6

    :pswitch_1b
    move v0, v7

    .line 2503
    goto/16 :goto_6

    .line 2514
    :pswitch_1c
    const/16 v0, 0x16

    .line 2515
    goto/16 :goto_6

    .line 2517
    :pswitch_1d
    const/16 v0, 0x17

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_6

    .line 2548
    :cond_22
    if-nez v0, :cond_8

    .line 2552
    :try_start_13
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_7

    .line 2554
    :catch_8
    move-exception v0

    goto/16 :goto_7

    .line 2544
    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_e

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v1

    goto/16 :goto_10

    .line 2454
    :catch_f
    move-exception v0

    goto/16 :goto_1

    .line 2500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_4
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v0, 0x0

    .line 1654
    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1657
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 1665
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1848
    :cond_0
    :goto_1
    return-void

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1670
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1671
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Account syncKey INIT to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1672
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1673
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1677
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1678
    if-eqz v0, :cond_3

    .line 1679
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Initial FolderSync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1683
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1684
    const-string v1, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1685
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and syncInterval=-3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 1688
    const-string v1, "change ping boxes to push"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1693
    :cond_4
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    .line 1695
    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Determine EAS protocol version"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1697
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 1698
    const-string v3, "OPTIONS response: "

    invoke-virtual {p0, v3, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1699
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a

    .line 1700
    const-string v2, "MS-ASProtocolCommands"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1701
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1702
    const-string v2, "ms-asprotocolversions"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1704
    :try_start_2
    invoke-direct {p0, p0, v1}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1711
    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1714
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_6

    .line 1716
    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v2, v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    :cond_6
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1720
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1722
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1723
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1731
    :cond_7
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v1, v8, :cond_8

    .line 1732
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1733
    const-string v1, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1734
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type in (0,68,66,65)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 1737
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Push account; set pushable boxes to push..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1741
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 1744
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sending Account syncKey: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1745
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1746
    const/16 v2, 0x1d6

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1748
    const-string v2, "FolderSync"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1749
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 1751
    :try_start_4
    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    .line 1784
    if-eqz v2, :cond_0

    .line 1785
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1831
    :catch_0
    move-exception v0

    .line 1835
    :try_start_6
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_9

    .line 1839
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1846
    :cond_9
    :goto_3
    throw v0

    .line 1705
    :catch_1
    move-exception v0

    .line 1708
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1725
    :cond_a
    const-string v0, "OPTIONS command failed; throwing IOException"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1726
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1752
    :cond_b
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1753
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_c

    .line 1754
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    .line 1755
    if-eqz v1, :cond_10

    .line 1756
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1758
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v4, Lcom/android/exchange/adapter/AccountSyncAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v3, v1, v4}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-eqz v1, :cond_10

    .line 1784
    if-eqz v2, :cond_8

    .line 1785
    :try_start_9
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1763
    :cond_c
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1769
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1771
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1784
    if-eqz v2, :cond_0

    .line 1785
    :try_start_b
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_1

    .line 1784
    :cond_d
    if-eqz v2, :cond_8

    .line 1785
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 1777
    :cond_e
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1778
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1784
    if-eqz v2, :cond_0

    .line 1785
    :try_start_d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 1781
    :cond_f
    :try_start_e
    const-string v3, "FolderSync response error: "

    invoke-virtual {p0, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1784
    :cond_10
    if-eqz v2, :cond_11

    .line 1785
    :try_start_f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1790
    :cond_11
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1791
    const-string v1, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1792
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and syncInterval=-4"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    .line 1795
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Set push/hold boxes to push..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 1799
    :cond_12
    :try_start_10
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-direct {p0, v4}, Lcom/android/exchange/EasSyncService;->exitStatusToServiceStatus(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    .line 1809
    :goto_4
    :try_start_11
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1810
    new-instance v1, Lcom/android/emailcommon/service/PolicySet;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/service/PolicySet;-><init>(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1811
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1812
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    .line 1817
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v1

    .line 1819
    :try_start_12
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_12 .. :try_end_12} :catch_3

    .line 1828
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1784
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_14

    .line 1785
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_14
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1820
    :catch_2
    move-exception v2

    .line 1822
    const/4 v2, 0x1

    :try_start_14
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Ping interrupted; folder list requires sync..."

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1828
    :try_start_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_2

    .line 1823
    :catch_3
    move-exception v2

    .line 1826
    :try_start_16
    iget v2, v2, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1828
    :try_start_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1843
    :catch_4
    move-exception v1

    goto/16 :goto_3

    .line 1802
    :catch_5
    move-exception v1

    goto :goto_4

    .line 1659
    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

.method protected sendHttpClientOptions()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1436
    const-string v1, "OPTIONS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    new-instance v2, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 1438
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1439
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1405
    invoke-direct {p0, p3}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1406
    const-string v1, "Ping"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1409
    const/4 v2, 0x0

    .line 1411
    const-string v3, "SmartForward&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SmartReply&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1412
    :cond_0
    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1413
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1414
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v7

    .line 1420
    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1421
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1424
    if-eqz v2, :cond_3

    .line 1425
    const-string v2, "Content-Type"

    const-string v3, "message/rfc822"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_1
    :goto_1
    const-string v2, "Ping"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v7

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1430
    invoke-virtual {v5, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1431
    invoke-virtual {p0, v0, v5, p3, v1}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 1416
    :cond_2
    const-string v3, "SendMail&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    move-object v4, p1

    move v2, v7

    .line 1417
    goto :goto_0

    .line 1426
    :cond_3
    if-eqz p2, :cond_1

    .line 1427
    const-string v2, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v6

    .line 1429
    goto :goto_2

    :cond_5
    move-object v3, v2

    move-object v4, p1

    move v2, v6

    goto :goto_0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_0

    .line 1239
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1240
    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x209

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1241
    const/16 v3, 0x20c

    iget v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1242
    const/16 v3, 0x206

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1243
    const/16 v1, 0x208

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1244
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1245
    const-string v1, "MeetingResponse"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1246
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1248
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1249
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 1250
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1251
    if-eqz v3, :cond_3

    .line 1252
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1253
    new-instance v3, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v3, v1, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1254
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1255
    if-eqz v1, :cond_2

    .line 1256
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    invoke-direct {v3, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v1, "RESPONSE"

    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1272
    if-eqz v2, :cond_0

    .line 1273
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 1263
    :cond_2
    :try_start_1
    iget v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    :cond_3
    if-eqz v2, :cond_0

    .line 1273
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 1265
    :cond_4
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1266
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1272
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 1273
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_5
    throw v0

    .line 1268
    :cond_6
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meeting response request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1269
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected sendPing([BI)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1355
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1356
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ping, timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1358
    :cond_0
    const-string v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1313
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "User-Agent"

    sget-object v1, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-eqz p2, :cond_1

    .line 1321
    const-string v0, "0"

    .line 1322
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1328
    :cond_0
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_1
    return-void
.end method

.method protected setupService()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2391
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2392
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 2393
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2394
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 2395
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2398
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v2, :cond_0

    move v2, v5

    .line 2425
    :goto_0
    return v2

    .line 2395
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2399
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2400
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 2401
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 2402
    .local v0, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v0, :cond_2

    move v2, v5

    goto :goto_0

    .line 2403
    :cond_2
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2404
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2405
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2408
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2410
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2411
    const-string v2, "2.5"

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2413
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2416
    new-instance v1, Lcom/android/emailcommon/service/PolicySet;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/service/PolicySet;-><init>(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2417
    .local v1, policies:Lcom/android/emailcommon/service/PolicySet;
    iget-boolean v2, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    if-eqz v2, :cond_4

    .line 2423
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    .line 2425
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 350
    :cond_0
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2242
    iget-object v1, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2244
    const/4 v0, 0x1

    .line 2245
    const/4 v2, 0x0

    move v3, v0

    .line 2246
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_15

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2249
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2250
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No connectivity in sync; finishing sync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2388
    :cond_2
    :goto_1
    return-void

    .line 2256
    :cond_3
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1

    .line 2268
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/Request;

    .line 2273
    instance-of v4, v0, Lcom/android/exchange/PartRequest;

    if-eqz v4, :cond_9

    .line 2274
    check-cast v0, Lcom/android/exchange/PartRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->loadAttachment(Lcom/android/exchange/PartRequest;)V

    .line 2283
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    .line 2265
    :cond_6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2287
    if-eqz v3, :cond_0

    .line 2291
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2293
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    .line 2294
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    .line 2295
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "sync, sending "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    const-string v8, " syncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2296
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2300
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x4028333333333333L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    .line 2301
    const/16 v6, 0x10

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2303
    :cond_7
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v6, 0x12

    iget-object v7, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2307
    const/16 v4, 0x7530

    .line 2308
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2314
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {p1, v5, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V

    .line 2320
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 2322
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2323
    const-string v5, "Sync"

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2325
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 2327
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 2328
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_11

    .line 2331
    const-string v5, "content-length"

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 2332
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty sync response; finishing"

    aput-object v6, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2336
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_8

    .line 2337
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Changing mailbox from push to ping"

    aput-object v6, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2339
    const-string v5, "syncInterval"

    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2340
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2344
    :cond_8
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    if-eqz v4, :cond_2

    .line 2383
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_1

    .line 2275
    :cond_9
    instance-of v4, v0, Lcom/android/exchange/MeetingResponseRequest;

    if-eqz v4, :cond_a

    .line 2276
    check-cast v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 2277
    :cond_a
    instance-of v4, v0, Lcom/android/exchange/MessageMoveRequest;

    if-eqz v4, :cond_5

    .line 2278
    check-cast v0, Lcom/android/exchange/MessageMoveRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V

    goto/16 :goto_2

    .line 2317
    :cond_b
    const v4, 0x1d4c0

    goto/16 :goto_3

    .line 2382
    :cond_c
    if-eqz v4, :cond_0

    .line 2383
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_0

    .line 2351
    :cond_d
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 2352
    if-eqz v0, :cond_10

    .line 2353
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v0

    .line 2354
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2355
    add-int/lit8 v2, v2, 0x1

    .line 2356
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** Looping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2359
    if-eqz v0, :cond_16

    const/16 v3, 0x64

    if-le v2, v3, :cond_16

    .line 2360
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "** Looping force stopped"

    aput-object v5, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2361
    const/4 v0, 0x0

    move v10, v2

    move v2, v0

    move v0, v10

    .line 2366
    :goto_4
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2382
    :goto_5
    if-eqz v4, :cond_e

    .line 2383
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_e
    move v3, v2

    move v2, v0

    .line 2386
    goto/16 :goto_0

    .line 2364
    :cond_f
    const/4 v2, 0x0

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_4

    .line 2368
    :cond_10
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty input stream in sync command response"

    aput-object v6, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v2

    move v2, v3

    goto :goto_5

    .line 2371
    :cond_11
    const-string v0, "Sync response error: "

    invoke-virtual {p0, v0, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2372
    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2373
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2382
    :goto_6
    if-eqz v4, :cond_2

    .line 2383
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_1

    .line 2374
    :cond_12
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2375
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 2382
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_13

    .line 2383
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_13
    throw v0

    .line 2377
    :cond_14
    const/4 v0, 0x1

    :try_start_4
    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 2387
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1

    :cond_16
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_4
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 28
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 594
    .local v22, s:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    const/16 v24, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 595
    .local v17, os:Ljava/io/ByteArrayOutputStream;
    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    .line 596
    .local v13, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v5, bundle:Landroid/os/Bundle;
    const-string v24, "autodiscover_error_code"

    const/16 v25, -0x1

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    :try_start_0
    const-string v24, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 602
    const-string v24, "UTF-8"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 603
    const/16 v24, 0x0

    const-string v25, "Autodiscover"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    const/16 v24, 0x0

    const-string v25, "xmlns"

    const-string v26, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    const/16 v24, 0x0

    const-string v25, "Request"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    const/16 v24, 0x0

    const-string v25, "EMailAddress"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "EMailAddress"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    const/16 v24, 0x0

    const-string v25, "AcceptableResponseSchema"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    const-string v24, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    const/16 v24, 0x0

    const-string v25, "AcceptableResponseSchema"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    const/16 v24, 0x0

    const-string v25, "Request"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    const/16 v24, 0x0

    const-string v25, "Autodiscover"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 613
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v20

    .line 616
    .local v20, req:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 617
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 622
    const/16 v24, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 624
    .local v4, amp:I
    if-gez v4, :cond_2

    .line 625
    new-instance v24, Landroid/os/RemoteException;

    invoke-direct/range {v24 .. v24}, Landroid/os/RemoteException;-><init>()V

    throw v24
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 704
    .end local v4           #amp:I
    .end local v20           #req:Ljava/lang/String;
    :catch_0
    move-exception v24

    move-object/from16 v9, v24

    .line 705
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v24, "autodiscover_error_code"

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    move-object/from16 v24, v5

    .line 718
    :cond_1
    :goto_1
    return-object v24

    .line 627
    .restart local v4       #amp:I
    .restart local v20       #req:Ljava/lang/String;
    :cond_2
    add-int/lit8 v24, v4, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, domain:Ljava/lang/String;
    new-instance v19, Lorg/apache/http/client/methods/HttpPost;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "https://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 637
    .local v19, post:Lorg/apache/http/client/methods/HttpPost;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 638
    const-string v24, "Content-Type"

    const-string v25, "text/xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v24, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 640
    const/16 v24, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    .line 643
    .local v6, client:Lorg/apache/http/client/HttpClient;
    const/16 v24, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v21

    .line 653
    .local v21, resp:Lorg/apache/http/HttpResponse;
    :goto_2
    :try_start_3
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v11

    .line 656
    .local v11, entity:Lorg/apache/http/HttpEntity;
    :try_start_4
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 657
    .local v7, code:I
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Code: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    .line 658
    const/16 v24, 0xc8

    move v0, v7

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v24, 0x0

    .line 698
    if-eqz v11, :cond_1

    .line 699
    :try_start_5
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 707
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #code:I
    .end local v8           #domain:Ljava/lang/String;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v20           #req:Ljava/lang/String;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v24

    move-object/from16 v9, v24

    .line 708
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v24, "autodiscover_error_code"

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 644
    .end local v9           #e:Ljava/lang/IllegalStateException;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v19       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v20       #req:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 645
    .local v10, e1:Ljava/io/IOException;
    const/16 v24, 0x1

    :try_start_6
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "IOException in autodiscover; trying alternate address"

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 647
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "https://autodiscover."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 650
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v21

    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    goto/16 :goto_2

    .line 660
    .end local v10           #e1:Ljava/io/IOException;
    .restart local v7       #code:I
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    :cond_3
    :try_start_7
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 663
    .local v15, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 664
    .local v12, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 665
    .local v18, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v24, "UTF-8"

    move-object/from16 v0, v18

    move-object v1, v15

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 666
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v23

    .line 667
    .local v23, type:I
    if-nez v23, :cond_4

    .line 668
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .line 669
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 670
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 671
    .local v16, name:Ljava/lang/String;
    const-string v24, "Autodiscover"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 672
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4

    .line 673
    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .local v14, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 675
    move-object v0, v14

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v14

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v14

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 681
    const/16 v24, 0x1bb

    move/from16 v0, v24

    move-object v1, v14

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 682
    const-string v24, "eas"

    move-object/from16 v0, v24

    move-object v1, v14

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 683
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object v1, v14

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 685
    const-string v24, "autodiscover_host_auth"

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v13, v14

    .line 698
    .end local v14           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v16           #name:Ljava/lang/String;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_4
    :goto_3
    if-eqz v11, :cond_0

    .line 699
    :try_start_9
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 710
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #code:I
    .end local v8           #domain:Ljava/lang/String;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v20           #req:Ljava/lang/String;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .end local v23           #type:I
    :catch_3
    move-exception v24

    move-object/from16 v9, v24

    .line 711
    .local v9, e:Ljava/io/IOException;
    const-string v24, "IOException in Autodiscover"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 712
    const-string v24, "autodiscover_error_code"

    const/16 v25, 0x1

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 688
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v7       #code:I
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v14       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v20       #req:Ljava/lang/String;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    .restart local v23       #type:I
    :cond_5
    :try_start_a
    const-string v24, "autodiscover_error_code"

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6

    move-object v13, v14

    .end local v14           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    goto :goto_3

    .line 694
    .end local v7           #code:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v23           #type:I
    :catch_4
    move-exception v24

    .line 698
    :goto_4
    if-eqz v11, :cond_0

    .line 699
    :try_start_b
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 714
    .end local v4           #amp:I
    .end local v6           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #domain:Ljava/lang/String;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v20           #req:Ljava/lang/String;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    :catch_5
    move-exception v24

    move-object/from16 v9, v24

    .line 715
    .local v9, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v24, "autodiscover_error_code"

    const/16 v25, 0x5

    move-object v0, v5

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 698
    .end local v9           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #amp:I
    .restart local v6       #client:Lorg/apache/http/client/HttpClient;
    .restart local v8       #domain:Ljava/lang/String;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v19       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v20       #req:Ljava/lang/String;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v24

    :goto_5
    if-eqz v11, :cond_6

    .line 699
    :try_start_c
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_6
    throw v24
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_5

    .line 698
    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v7       #code:I
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v14       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23       #type:I
    :catchall_1
    move-exception v24

    move-object v13, v14

    .end local v14           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    goto :goto_5

    .line 694
    .end local v13           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v14       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :catch_6
    move-exception v24

    move-object v13, v14

    .end local v14           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v13       #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    goto :goto_4
.end method

.method public validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    .locals 23
    .parameter "hostAddress"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .parameter "context"

    .prologue
    .line 412
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v5, bundle:Landroid/os/Bundle;
    const/4 v14, -0x1

    .line 415
    .local v14, resultCode:I
    const/16 v19, 0x6

    :try_start_0
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Testing EAS: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object p1, v19, v20

    const/16 v20, 0x2

    const-string v21, ", "

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object p2, v19, v20

    const/16 v20, 0x4

    const-string v21, ", ssl = "

    aput-object v21, v19, v20

    const/16 v20, 0x5

    if-eqz p5, :cond_2

    const-string v21, "1"

    :goto_0
    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 416
    new-instance v16, Lcom/android/exchange/EasSyncService;

    const-string v19, "%TestAccount%"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 417
    .local v16, svc:Lcom/android/exchange/EasSyncService;
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 418
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 419
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 420
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 421
    move/from16 v0, p5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 422
    move/from16 v0, p6

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 425
    const-string v19, "validate"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 426
    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 427
    .local v13, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 429
    .local v10, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 430
    .local v7, code:I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Validation (OPTIONS) response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 431
    const/16 v19, 0xc8

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 433
    const-string v19, "MS-ASProtocolCommands"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 434
    .local v8, commands:Lorg/apache/http/Header;
    const-string v19, "ms-asprotocolversions"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 437
    .local v18, versions:Lorg/apache/http/Header;
    if-eqz v8, :cond_0

    if-nez v18, :cond_3

    .line 438
    :cond_0
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "OPTIONS response without commands or versions"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 440
    new-instance v19, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 443
    :catch_0
    move-exception v19

    move-object/from16 v9, v19

    .line 444
    .local v9, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    const-string v19, "validate_result_code"

    const/16 v20, 0x9

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    if-eqz v10, :cond_1

    .line 499
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 512
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v9           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #svc:Lcom/android/exchange/EasSyncService;
    .end local v18           #versions:Lorg/apache/http/Header;
    :cond_1
    :goto_1
    return-object v5

    .line 415
    :cond_2
    const-string v21, "0"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 442
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    .restart local v16       #svc:Lcom/android/exchange/EasSyncService;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 450
    const/16 v19, 0x1

    :try_start_6
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Try folder sync"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 452
    const-string v17, "0"

    .line 453
    .local v17, syncKey:Ljava/lang/String;
    const-wide/16 v19, -0x1

    move-object/from16 v0, p7

    move-wide/from16 v1, v19

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 455
    .local v11, existingAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v11, :cond_4

    move-object v0, v11

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 456
    move-object v0, v11

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 458
    :cond_4
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 459
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v19, 0x1d6

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1d2

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 461
    const-string v19, "FolderSync"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 462
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 464
    const/16 v19, 0x193

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x1c1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 466
    :cond_5
    invoke-direct/range {v16 .. v16}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v12

    .line 467
    .local v12, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v12, :cond_7

    .line 469
    const/4 v14, 0x7

    .line 470
    const-string v19, "validate_policy_set"

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v11           #existingAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :goto_2
    if-eqz v10, :cond_6

    .line 499
    :try_start_7
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 511
    .end local v7           #code:I
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #svc:Lcom/android/exchange/EasSyncService;
    :cond_6
    :goto_3
    const-string v19, "validate_result_code"

    move-object v0, v5

    move-object/from16 v1, v19

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 474
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #existingAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v16       #svc:Lcom/android/exchange/EasSyncService;
    .restart local v17       #syncKey:Ljava/lang/String;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_7
    const/16 v14, 0x8

    goto :goto_2

    .line 475
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_8
    const/16 v19, 0x194

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 477
    const/16 v14, 0x9

    goto :goto_2

    .line 478
    :cond_9
    const/16 v19, 0xc8

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 480
    :try_start_8
    const-string v19, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 481
    const/4 v14, 0x0

    goto :goto_2

    .line 483
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Validation successful"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 498
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v11           #existingAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :catchall_0
    move-exception v19

    if-eqz v10, :cond_b

    .line 499
    :try_start_9
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_b
    throw v19
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 502
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #svc:Lcom/android/exchange/EasSyncService;
    :catch_1
    move-exception v19

    move-object/from16 v9, v19

    .line 503
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 504
    .local v6, cause:Ljava/lang/Throwable;
    if-eqz v6, :cond_c

    move-object v0, v6

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 505
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 506
    const/4 v14, 0x4

    .line 508
    :cond_c
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "IOException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 509
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 485
    .end local v6           #cause:Ljava/lang/Throwable;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #code:I
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    .restart local v16       #svc:Lcom/android/exchange/EasSyncService;
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 486
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Authentication failed"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 487
    const/4 v14, 0x5

    goto/16 :goto_2

    .line 488
    :cond_e
    const/16 v19, 0x1f4

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 490
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Internal server error"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 491
    const/16 v14, 0xd

    goto/16 :goto_2

    .line 494
    :cond_f
    const-string v19, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 495
    const/4 v14, 0x1

    goto/16 :goto_2
.end method
