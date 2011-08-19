.class public Lcom/google/android/voicesearch/tcp/StunAttribute;
.super Ljava/lang/Object;
.source "StunAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$Username;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$Address;
    }
.end annotation


# instance fields
.field private data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

.field private type:Lcom/google/android/voicesearch/tcp/StunAttributeType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/tcp/StunAttributeType;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 37
    return-void
.end method

.method private equalsSTUNAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 148
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-nez v0, :cond_3

    .line 138
    :cond_1
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-ne v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_4

    move v0, v3

    .line 140
    goto :goto_0

    :cond_4
    move v0, v3

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 143
    iget-object v1, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v1

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_5

    move v0, v3

    .line 144
    goto :goto_0

    .line 142
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v4

    .line 148
    goto :goto_0
.end method

.method public static fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;-><init>()V

    .line 90
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    or-int/2addr v1, v2

    .line 91
    invoke-static {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunAttributeType;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 93
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 95
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_MAPPED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_SOURCE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_CHANGED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    .line 113
    :goto_0
    return-object v0

    .line 99
    :cond_1
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_ERROR_CODE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_2

    .line 100
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_3

    .line 102
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$Username;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_0

    .line 103
    :cond_3
    const v3, 0xffff

    and-int/2addr v3, v1

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_4

    .line 104
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mandatory STUN attribute type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    sget-object v1, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_UNKNOWN:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 110
    new-instance v1, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_0
.end method

.method public static newAddress(Ljava/lang/String;)Lcom/google/android/voicesearch/tcp/StunAttributeData;
    .locals 1
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;-><init>(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunAttribute;->equalsSTUNAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Lcom/google/android/voicesearch/tcp/StunAttributeData;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getType()Lcom/google/android/voicesearch/tcp/StunAttributeType;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    .line 62
    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 63
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v2

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return v1
.end method

.method public setData(Lcom/google/android/voicesearch/tcp/StunAttributeData;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeIntoArray([BI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 69
    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 70
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 71
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 72
    add-int/lit8 v0, p2, 0x3

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x4

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-void
.end method
