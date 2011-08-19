.class public Lcom/asus/cm/fota/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field fs_length:I

.field fs_sig:[B

.field fw_length:I

.field fw_priority:Lcom/asus/cm/fota/Common$priority;

.field fw_sig:[B

.field mForceUpdate:Z

.field mFromVersion:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToVersion:Ljava/lang/String;

.field mUpdatedImei:Ljava/lang/String;

.field mUserBuild:Z

.field ua_length:I

.field ua_sig:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/asus/cm/fota/Header;->ua_length:I

    .line 20
    iput v0, p0, Lcom/asus/cm/fota/Header;->fs_length:I

    .line 21
    iput v0, p0, Lcom/asus/cm/fota/Header;->fw_length:I

    .line 33
    sget-object v0, Lcom/asus/cm/fota/Common$priority;->Normal:Lcom/asus/cm/fota/Common$priority;

    iput-object v0, p0, Lcom/asus/cm/fota/Header;->fw_priority:Lcom/asus/cm/fota/Common$priority;

    return-void
.end method

.method private byteArraytoHex([B)Ljava/lang/String;
    .locals 3
    .parameter "bary"

    .prologue
    .line 127
    if-nez p1, :cond_0

    const-string v2, "######### No Such File #########"

    .line 132
    :goto_0
    return-object v2

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 130
    aget-byte v2, p1, v0

    invoke-direct {p0, v2}, Lcom/asus/cm/fota/Header;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private toHex(B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFromVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->mFromVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFs_length()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/cm/fota/Header;->fs_length:I

    return v0
.end method

.method public getFs_sig()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->fs_sig:[B

    return-object v0
.end method

.method public getFw_length()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/cm/fota/Header;->fw_length:I

    return v0
.end method

.method public getFw_sig()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->fw_sig:[B

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->mToVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUa_length()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/asus/cm/fota/Header;->ua_length:I

    return v0
.end method

.method public getUa_sig()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/asus/cm/fota/Header;->ua_sig:[B

    return-object v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/asus/cm/fota/Header;->mForceUpdate:Z

    return v0
.end method

.method public isUserBuild()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/cm/fota/Header;->mUserBuild:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "ua_sig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-direct {p0, v1}, Lcom/asus/cm/fota/Header;->byteArraytoHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\nfs_sig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-direct {p0, v1}, Lcom/asus/cm/fota/Header;->byteArraytoHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\nfw_sig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-direct {p0, v1}, Lcom/asus/cm/fota/Header;->byteArraytoHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "\nua_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/asus/cm/fota/Header;->ua_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\nfs_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/asus/cm/fota/Header;->fs_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\nfw_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lcom/asus/cm/fota/Header;->fw_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\npriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->fw_priority:Lcom/asus/cm/fota/Common$priority;

    invoke-virtual {v1}, Lcom/asus/cm/fota/Common$priority;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "\nsku: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\nTo Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->mToVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "\nFrom Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/asus/cm/fota/Header;->mFromVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\nForceUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-boolean v1, p0, Lcom/asus/cm/fota/Header;->mForceUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
