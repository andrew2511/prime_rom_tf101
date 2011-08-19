.class public Lorg/apache/harmony/security/asn1/BerOutputStream;
.super Ljava/lang/Object;
.source "BerOutputStream.java"


# instance fields
.field public content:Ljava/lang/Object;

.field public encoded:[B

.field public length:I

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public encodeANY()V
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 85
    return-void
.end method

.method public encodeBitString()V
    .registers 8

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    .line 90
    .local v0, bStr:Lorg/apache/harmony/security/asn1/BitString;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v3, v0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 91
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 93
    return-void
.end method

.method public encodeBoolean()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 101
    :goto_11
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 102
    return-void

    .line 99
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_11
.end method

.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 4
    .parameter "choice"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 4
    .parameter "explicit"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeGeneralizedTime()V
    .registers 6

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 115
    return-void
.end method

.method public encodeInteger()V
    .registers 6

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 125
    return-void
.end method

.method public encodeOID()V
    .registers 11

    .prologue
    const/16 v9, 0x7f

    const/4 v8, 0x1

    .line 134
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 136
    .local v3, oid:[I
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 140
    .local v4, oidLen:I
    array-length v5, v3

    sub-int v2, v5, v8

    .local v2, i:I
    :goto_10
    if-le v2, v8, :cond_43

    .line 141
    aget v1, v3, v2

    .line 142
    .local v1, elem:I
    if-le v1, v9, :cond_35

    .line 143
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 144
    shr-int/lit8 v1, v1, 0x7

    .line 145
    :goto_23
    if-lez v1, :cond_3e

    .line 146
    add-int/lit8 v4, v4, -0x1

    .line 147
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    or-int/lit16 v7, v1, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 148
    shr-int/lit8 v1, v1, 0x7

    goto :goto_23

    .line 151
    :cond_35
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 140
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 156
    .end local v1           #elem:I
    :cond_43
    const/4 v5, 0x0

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x28

    aget v6, v3, v8

    add-int v1, v5, v6

    .line 157
    .restart local v1       #elem:I
    if-le v1, v9, :cond_6d

    .line 158
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 159
    shr-int/lit8 v1, v1, 0x7

    .line 160
    :goto_5b
    if-lez v1, :cond_76

    .line 161
    add-int/lit8 v4, v4, -0x1

    .line 162
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    or-int/lit16 v7, v1, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 163
    shr-int/lit8 v1, v1, 0x7

    goto :goto_5b

    .line 166
    :cond_6d
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v8

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 169
    :cond_76
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 170
    return-void
.end method

.method public encodeOctetString()V
    .registers 6

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 130
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "sequence"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 4
    .parameter "sequenceOf"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 4
    .parameter "set"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 4
    .parameter "setOf"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeString()V
    .registers 6

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 191
    return-void
.end method

.method public final encodeTag(I)V
    .registers 9
    .parameter "tag"

    .prologue
    .line 59
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 61
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v5, 0x7f

    if-le v4, v5, :cond_4a

    .line 62
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v4, 0x8

    .line 63
    .local v0, eLen:I
    const/4 v2, 0x1

    .line 64
    .local v2, numOctets:B
    :goto_16
    if-lez v0, :cond_1e

    .line 65
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    .line 64
    shr-int/lit8 v0, v0, 0x8

    goto :goto_16

    .line 68
    :cond_1e
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    or-int/lit16 v6, v2, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 69
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 71
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 72
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 73
    .local v3, numOffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    if-ge v1, v2, :cond_44

    .line 74
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    sub-int v5, v3, v1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 73
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    goto :goto_36

    .line 76
    :cond_44
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 80
    .end local v0           #eLen:I
    .end local v1           #i:I
    .end local v2           #numOctets:B
    .end local v3           #numOffset:I
    :goto_49
    return-void

    .line 78
    :cond_4a
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_49
.end method

.method public encodeUTCTime()V
    .registers 6

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 120
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 4
    .parameter "choice"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 4
    .parameter "sequence"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "sequence"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 4
    .parameter "sequence"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 4
    .parameter "set"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 4
    .parameter "setOf"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringLength(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
