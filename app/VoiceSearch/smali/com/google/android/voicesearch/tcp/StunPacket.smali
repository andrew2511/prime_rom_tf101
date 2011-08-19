.class public Lcom/google/android/voicesearch/tcp/StunPacket;
.super Ljava/lang/Object;
.source "StunPacket.java"


# static fields
.field private static final HEADER_SIZE:I = 0x14


# instance fields
.field private messageAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/voicesearch/tcp/StunAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private messageLength:I

.field private messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field private transactionId:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    .line 42
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 43
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move v1, v4

    .line 48
    :goto_0
    if-ge v1, v5, :cond_0

    .line 49
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iput v4, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 52
    return-void
.end method

.method private equalsStunPacket(Lcom/google/android/voicesearch/tcp/StunPacket;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 100
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v3

    .line 86
    goto :goto_0

    :cond_2
    move v0, v3

    .line 88
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 89
    iget-object v1, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_3

    move v0, v3

    .line 90
    goto :goto_0

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 93
    :goto_2
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 94
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 96
    goto :goto_0

    .line 93
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 100
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>()V

    .line 184
    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readHeader([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not read stun header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readBody([B)V

    .line 188
    return-object v0
.end method

.method public static headerFromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 2
    .parameter

    .prologue
    .line 174
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>()V

    .line 175
    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->readHeader([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readHeader([B)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    array-length v0, p1

    if-ge v0, v5, :cond_0

    move v0, v3

    .line 142
    :goto_0
    return v0

    .line 132
    :cond_0
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 133
    invoke-static {v0}, Lcom/google/android/voicesearch/tcp/StunMessageType;->fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 134
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 135
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    array-length v1, p1

    sub-int/2addr v1, v5

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-nez v0, :cond_2

    move v0, v3

    .line 140
    goto :goto_0

    :cond_2
    move v0, v4

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public asByteArray()[B
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v0

    new-array v1, v0, [B

    .line 105
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->writeHeader([B)V

    .line 106
    const/16 v0, 0x14

    .line 107
    const/4 v2, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;->writeIntoArray([BI)V

    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v0

    add-int/2addr v0, v3

    .line 107
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunPacket;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->equalsStunPacket(Lcom/google/android/voicesearch/tcp/StunPacket;)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttribute(Lcom/google/android/voicesearch/tcp/StunAttributeType;)Lcom/google/android/voicesearch/tcp/StunAttribute;
    .locals 3
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getType()Lcom/google/android/voicesearch/tcp/StunAttributeType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 203
    :goto_1
    return-object v0

    .line 197
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 160
    const/16 v0, 0x14

    .line 161
    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v0

    add-int/2addr v0, v2

    .line 161
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :cond_0
    return v2
.end method

.method public getMessageLength()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    const-string v0, ""

    .line 208
    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-object v1
.end method

.method public getType()Lcom/google/android/voicesearch/tcp/StunMessageType;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    return-object v0
.end method

.method public readBody([B)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x14

    move v0, v3

    .line 147
    :goto_0
    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_0

    .line 148
    invoke-static {p1, v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttribute;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageLength:I

    .line 153
    return-void
.end method

.method public setTransactionIDForResponse(Lcom/google/android/voicesearch/tcp/StunPacket;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    iget-object v2, p1, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stun Packet:\ntype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunMessageType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method

.method protected writeHeader([B)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunMessageType;->getWireValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 116
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->messageType:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunMessageType;->getWireValue()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getLength()I

    move-result v0

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    .line 118
    const/4 v1, 0x2

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 119
    const/4 v1, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunPacket;->transactionId:[B

    const/4 v1, 0x4

    const/16 v2, 0x10

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-void
.end method
