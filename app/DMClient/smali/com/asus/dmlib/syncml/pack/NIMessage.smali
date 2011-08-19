.class public Lcom/asus/dmlib/syncml/pack/NIMessage;
.super Ljava/lang/Object;
.source "NIMessage.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field public static final DM_VERSION_1_1:Ljava/lang/String; = "1.1"

.field public static final DM_VERSION_1_2:Ljava/lang/String; = "1.2"

.field public static final INITIATOR_CLIENT:I = 0x1

.field public static final INITIATOR_SERVER:I = 0x0

.field public static final UI_MODE_BACKGROUND:I = 0x1

.field public static final UI_MODE_INFORMATIVE:I = 0x2

.field public static final UI_MODE_NOT_SPECIFIED:I = 0x0

.field public static final UI_MODE_USER_INTERACTION:I = 0x3


# instance fields
.field private mDMSessionID:I

.field private mDigest:[B

.field private mInitiator:I

.field private mNonce:[B

.field private mServerIdentifier:Ljava/lang/String;

.field private mServerPassword:[B

.field private mUIMode:I

.field private mVendorInfo:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;[B[B)V
    .locals 2
    .parameter "dmSessionID"
    .parameter "serverIdentifier"
    .parameter "serverPassword"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments to Package0Creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    .line 38
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    .line 40
    iput-object p4, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mNonce:[B

    .line 41
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVersion:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    .line 43
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B[BLjava/lang/String;)V
    .locals 2
    .parameter "dmSessionID"
    .parameter "serverIdentifier"
    .parameter "serverPassword"
    .parameter "nonce"
    .parameter "dmVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments to Package0Creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p0, p5}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setDMVersion(Ljava/lang/String;)V

    .line 53
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    .line 54
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    .line 56
    iput-object p4, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mNonce:[B

    .line 57
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    .line 58
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B[BLjava/lang/String;IILjava/lang/String;)V
    .locals 2
    .parameter "dmSessionID"
    .parameter "serverIdentifier"
    .parameter "serverPassword"
    .parameter "nonce"
    .parameter "dmVersion"
    .parameter "uiMode"
    .parameter "initiator"
    .parameter "vendorInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments to Package0Creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-virtual {p0, p5}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setDMVersion(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p6}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setUIMode(I)V

    .line 84
    invoke-virtual {p0, p7}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setInitiator(I)V

    .line 85
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    .line 86
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    .line 88
    iput-object p4, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mNonce:[B

    .line 89
    iput-object p8, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "dmSessionID"
    .parameter "serverIdentifier"
    .parameter "serverPassword"
    .parameter "nonce"
    .parameter "dmVersion"
    .parameter "vendorInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments to Package0Creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    invoke-virtual {p0, p5}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setDMVersion(Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    .line 69
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    .line 71
    iput-object p4, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mNonce:[B

    .line 72
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    .line 73
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    .line 74
    iput-object p6, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .parameter "digest"
    .parameter "dmSessionID"
    .parameter "serverIdentifier"
    .parameter "dmVersion"
    .parameter "uiMode"
    .parameter "initiator"
    .parameter "vendorInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    if-nez p3, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments to Package0Creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    invoke-virtual {p0, p4}, Lcom/asus/dmlib/syncml/pack/NIMessage;->setDMVersion(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDigest:[B

    .line 100
    iput p2, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    .line 101
    iput-object p3, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    .line 102
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    .line 103
    iput v1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    .line 104
    iput-object p7, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private calculateDigest([B)[B
    .locals 8
    .parameter "trigger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    .line 267
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 274
    .local v2, digest:Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 275
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 276
    iget-object v6, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 277
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 280
    .local v3, md5_first:[B
    const-string v6, "utf-8"

    invoke-static {v3, v6}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 282
    .local v0, b64_first:[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 285
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 286
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 289
    .local v4, md5_last:[B
    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 291
    .local v1, b64_last:[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 295
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 296
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 297
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 299
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    return-object v6

    .line 268
    .end local v0           #b64_first:[B
    .end local v1           #b64_last:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v3           #md5_first:[B
    .end local v4           #md5_last:[B
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 270
    .local v5, nsae:Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Could not get java.security.MessageDigest instance for calculating MD5 hash."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static parse([B)Lcom/asus/dmlib/syncml/pack/NIMessage;
    .locals 10
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 158
    .local v1, digest:[B
    array-length v0, p0

    const/16 v2, 0x10

    sub-int/2addr v0, v2

    new-array v7, v0, [B

    .line 159
    .local v7, trigger:[B
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    const/16 v0, 0x10

    const/4 v2, 0x0

    array-length v3, v7

    invoke-static {p0, v0, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, version:Ljava/lang/String;
    const/4 v5, -0x1

    .line 165
    .local v5, uiMode:I
    const/4 v6, -0x1

    .line 166
    .local v6, initiator:I
    const/4 v2, -0x1

    .line 167
    .local v2, sessionID:I
    const/4 p0, -0x1

    .line 168
    .local p0, servIdLength:I
    const/4 v3, 0x0

    .line 169
    .local v3, serverID:Ljava/lang/String;
    const/4 p0, 0x0

    .line 171
    .local p0, vendorInfo:Ljava/lang/String;
    const/4 p0, 0x0

    aget-byte p0, v7, p0

    .local p0, temp:I
    and-int/lit16 p0, p0, 0xff

    .line 172
    shl-int/lit8 v0, p0, 0x2

    .line 173
    .local v0, ver:I
    const/4 p0, 0x1

    aget-byte p0, v7, p0

    and-int/lit16 p0, p0, 0xff

    ushr-int/lit8 p0, p0, 0x6

    or-int/2addr p0, v0

    .line 174
    .end local v0           #ver:I
    .local p0, ver:I
    int-to-double v2, p0

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .end local v2           #sessionID:I
    .end local v4           #version:Ljava/lang/String;
    move-result-object v4

    .line 175
    .restart local v4       #version:Ljava/lang/String;
    const/4 p0, 0x1

    aget-byte p0, v7, p0

    .local p0, temp:I
    and-int/lit8 p0, p0, 0x3f

    ushr-int/lit8 v5, p0, 0x4

    .line 176
    const/4 p0, 0x1

    aget-byte p0, v7, p0

    and-int/lit8 p0, p0, 0xf

    ushr-int/lit8 v6, p0, 0x3

    .line 177
    const/4 p0, 0x5

    aget-byte p0, v7, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x8

    const/4 p0, 0x6

    aget-byte p0, v7, p0

    and-int/lit16 p0, p0, 0xff

    or-int v2, v0, p0

    .line 178
    .restart local v2       #sessionID:I
    const/4 p0, 0x7

    aget-byte p0, v7, p0

    and-int/lit16 p0, p0, 0xff

    .line 180
    .local p0, servIdLength:I
    new-array v0, p0, [B

    .line 181
    .local v0, tempBytes:[B
    const/16 v3, 0x8

    const/4 v8, 0x0

    invoke-static {v7, v3, v0, v8, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .end local v3           #serverID:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 184
    .restart local v3       #serverID:Ljava/lang/String;
    array-length v0, v7

    .end local v0           #tempBytes:[B
    add-int/lit8 v8, p0, 0x8

    sub-int/2addr v0, v8

    new-array v0, v0, [B

    .line 185
    .restart local v0       #tempBytes:[B
    add-int/lit8 p0, p0, 0x8

    const/4 v8, 0x0

    array-length v9, v0

    .end local p0           #servIdLength:I
    invoke-static {v7, p0, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 198
    .local p0, vendorInfo:Ljava/lang/String;
    new-instance v0, Lcom/asus/dmlib/syncml/pack/NIMessage;

    .end local v0           #tempBytes:[B
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/asus/dmlib/syncml/pack/NIMessage;-><init>([BILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .end local v7           #trigger:[B
    return-object v0
.end method


# virtual methods
.method public getDMSessionID()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDigest:[B

    return-object v0
.end method

.method public getInitiator()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    return v0
.end method

.method public getNIMsgOverSmsContent()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, pkg0:[B
    const-string v3, ""

    .line 307
    .local v3, retVal:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/syncml/pack/NIMessage;->getPackage0()[B

    move-result-object v2

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 311
    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    :goto_1
    add-int/lit8 v5, v1, 0x1

    array-length v6, v2

    if-ne v5, v6, :cond_2

    .line 326
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 330
    .end local v1           #i:I
    :goto_2
    return-object v3

    .line 315
    .restart local v1       #i:I
    .restart local v4       #str:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 320
    :cond_2
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 324
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_3

    .line 327
    .end local v1           #i:I
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 328
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getNonce()[B
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mNonce:[B

    return-object v0
.end method

.method public getPackage0()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 208
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 212
    .local v8, temp:I
    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVersion:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 213
    .local v1, d_version:D
    const-wide/high16 v11, 0x4024

    mul-double/2addr v11, v1

    double-to-int v5, v11

    .line 215
    .local v5, i_version:I
    shl-int/lit8 v8, v5, 0x16

    .line 216
    iget v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    shl-int/lit8 v11, v11, 0x14

    or-int/2addr v8, v11

    .line 217
    iget v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    shl-int/lit8 v11, v11, 0x13

    or-int/2addr v8, v11

    .line 220
    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    and-int/lit16 v11, v8, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 224
    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    iget v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mDMSessionID:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 231
    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 235
    .local v7, si:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v7

    if-ge v4, v11, :cond_0

    .line 236
    aget-byte v11, v7, v4

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 241
    iget-object v11, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 243
    .local v10, vi:[B
    const/4 v4, 0x0

    :goto_1
    array-length v11, v10

    if-ge v4, v11, :cond_1

    .line 244
    aget-byte v11, v10, v4

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    .end local v10           #vi:[B
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 249
    .local v9, trigger:[B
    invoke-direct {p0, v9}, Lcom/asus/dmlib/syncml/pack/NIMessage;->calculateDigest([B)[B

    move-result-object v3

    .line 251
    .local v3, digest:[B
    array-length v11, v3

    array-length v12, v9

    add-int/2addr v11, v12

    new-array v6, v11, [B

    .line 252
    .local v6, result:[B
    array-length v11, v3

    invoke-static {v3, v13, v6, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    array-length v11, v3

    array-length v12, v9

    invoke-static {v9, v13, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-object v6
.end method

.method public getServerIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPassword()[B
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mServerPassword:[B

    return-object v0
.end method

.method public getUIMode()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    return v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDMVersion(Ljava/lang/String;)V
    .locals 5
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 111
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 112
    .local v0, doubleValue:D
    const-wide v3, 0x3ff199999999999aL

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value when setting the DM version."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #doubleValue:D
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 116
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value when setting the DM version."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #doubleValue:D
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVersion:Ljava/lang/String;

    .line 123
    return-void

    .line 121
    .end local v0           #doubleValue:D
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value when setting the DM version."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setInitiator(I)V
    .locals 3
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 136
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 137
    :cond_0
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mInitiator:I

    .line 141
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the illegal initiator value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUIMode(I)V
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 127
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 128
    iput p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mUIMode:I

    .line 132
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ui mode must be one one of the predefined values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "vendorInfo"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/NIMessage;->mVendorInfo:Ljava/lang/String;

    goto :goto_0
.end method
