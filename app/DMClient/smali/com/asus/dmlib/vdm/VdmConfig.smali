.class public Lcom/asus/dmlib/vdm/VdmConfig;
.super Ljava/lang/Object;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;,
        Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;,
        Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;,
        Lcom/asus/dmlib/vdm/VdmConfig$HttpAuthLevel;
    }
.end annotation


# static fields
.field private static mInst:Lcom/asus/dmlib/vdm/VdmConfig;


# instance fields
.field private isEncodeWBXMLMsg:Z

.field private mCharset:Ljava/lang/String;

.field private mConTimeoutMillis:I

.field private mMaxMsgSize:I

.field private mMaxObjSize:I

.field private mSoTimoutMillis:I

.field private mUserAgentName:Ljava/lang/String;

.field private maxNetRetryCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x7530

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "Asus DM Client V0.1"

    iput-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mUserAgentName:Ljava/lang/String;

    .line 7
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->maxNetRetryCount:I

    .line 8
    iput v1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mConTimeoutMillis:I

    .line 9
    iput v1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mSoTimoutMillis:I

    .line 10
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxMsgSize:I

    .line 11
    const v0, 0x186a0

    iput v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxObjSize:I

    .line 12
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mCharset:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/asus/dmlib/vdm/VdmConfig;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/asus/dmlib/vdm/VdmConfig;->mInst:Lcom/asus/dmlib/vdm/VdmConfig;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-direct {v0}, Lcom/asus/dmlib/vdm/VdmConfig;-><init>()V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig;->mInst:Lcom/asus/dmlib/vdm/VdmConfig;

    .line 55
    :cond_0
    sget-object v0, Lcom/asus/dmlib/vdm/VdmConfig;->mInst:Lcom/asus/dmlib/vdm/VdmConfig;

    return-object v0
.end method


# virtual methods
.method public getAbortIfClientCommandFailed()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowChallengeWithPkg1()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getB64EncodeBinDataOverWBXML()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getConTimeoutMillis()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mConTimeoutMillis:I

    return v0
.end method

.method public getDDVersionCheck()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getDMAccSingle()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getDlProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDlUserAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDmAccConfiguration()Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;

    invoke-direct {v0, p0}, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;-><init>(Lcom/asus/dmlib/vdm/VdmConfig;)V

    .line 161
    .local v0, config:Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;
    const/4 v1, 0x1

    .line 162
    .local v1, dmVersion:I
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;->values()[Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;

    .line 163
    return-object v0
.end method

.method public getDmProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDmUserAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mUserAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeWBXMLMsg()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->isEncodeWBXMLMsg:Z

    return v0
.end method

.method public getIfRangeInsteadOfIfMatch()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getIsClientNoncePerMessage()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getIsOMADLAbsoluteURL()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getIsServerNoncePerMessage()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxMsgSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxMsgSize:I

    return v0
.end method

.method public getMaxNetRetries()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->maxNetRetryCount:I

    return v0
.end method

.method public getMaxObjSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxObjSize:I

    return v0
.end method

.method public getNotificationVerificationMode()Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    return-object v0
.end method

.method public getSessionIDAsDec()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getSoTimoutMillis()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mSoTimoutMillis:I

    return v0
.end method

.method public getmUserAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mUserAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public setAbortIfClientCommandFailed(Z)V
    .locals 0
    .parameter "abort"

    .prologue
    .line 262
    return-void
.end method

.method public setAllowChallengeWithPkg1(Z)V
    .locals 0
    .parameter "isAllowed"

    .prologue
    .line 314
    return-void
.end method

.method public setB64EncodeBinDataOverWBXML(Z)V
    .locals 0
    .parameter "isB64"

    .prologue
    .line 301
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mCharset:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setConTimeoutMillis(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 40
    iput p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mConTimeoutMillis:I

    .line 41
    return-void
.end method

.method public setDDVersionCheck(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 340
    return-void
.end method

.method public setDMAccSingle(Z)V
    .locals 0
    .parameter "isSingle"

    .prologue
    .line 101
    return-void
.end method

.method public setDlHttpAuthentication(Lcom/asus/dmlib/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "level"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 187
    return-void
.end method

.method public setDlProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 194
    return-void
.end method

.method public setDlProxyAuthentication(Lcom/asus/dmlib/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "level"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 211
    return-void
.end method

.method public setDlUserAgentName(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 170
    return-void
.end method

.method public setDmAccConfiguration(Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 154
    return-void
.end method

.method public setDmHttpAuthentication(Lcom/asus/dmlib/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "level"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 234
    return-void
.end method

.method public setDmProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 240
    return-void
.end method

.method public setDmProxyAuthentication(Lcom/asus/dmlib/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "level"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 256
    return-void
.end method

.method public setDmUserAgentName(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mUserAgentName:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setEncodeWBXMLMsg(Z)V
    .locals 0
    .parameter "isWBXML"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->isEncodeWBXMLMsg:Z

    .line 115
    return-void
.end method

.method public setIfRangeInsteadOfIfMatch(Z)V
    .locals 0
    .parameter "useIfRange"

    .prologue
    .line 128
    return-void
.end method

.method public setIsClientNoncePerMessage(Z)V
    .locals 0
    .parameter "isPerMessage"

    .prologue
    .line 275
    return-void
.end method

.method public setIsDMAccNameOptional(Z)V
    .locals 0
    .parameter "optional"

    .prologue
    .line 373
    return-void
.end method

.method public setIsOMADLAbsoluteURL(Z)V
    .locals 0
    .parameter "absolute"

    .prologue
    .line 353
    return-void
.end method

.method public setIsServerNoncePerMessage(Z)V
    .locals 0
    .parameter "isPerMessage"

    .prologue
    .line 288
    return-void
.end method

.method public setIsUsingWedmServer(ZLjava/lang/String;)V
    .locals 0
    .parameter "usingWedmServer"
    .parameter "placeHolder"

    .prologue
    .line 367
    return-void
.end method

.method public setMaxMsgSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 59
    iput p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxMsgSize:I

    .line 60
    return-void
.end method

.method public setMaxNetRetries(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 87
    iput p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->maxNetRetryCount:I

    .line 88
    return-void
.end method

.method public setMaxObjSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 73
    iput p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mMaxObjSize:I

    .line 74
    return-void
.end method

.method public setNotificationVerificationMode(Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 141
    return-void
.end method

.method public setSessionIDAsDec(Z)V
    .locals 0
    .parameter "decimal"

    .prologue
    .line 327
    return-void
.end method

.method public setSoTimoutMillis(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 48
    iput p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mSoTimoutMillis:I

    .line 49
    return-void
.end method

.method public setmUserAgentName(Ljava/lang/String;)V
    .locals 0
    .parameter "mUserAgentName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/dmlib/vdm/VdmConfig;->mUserAgentName:Ljava/lang/String;

    .line 33
    return-void
.end method
