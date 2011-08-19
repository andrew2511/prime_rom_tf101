.class public final Lorg/apache/harmony/security/asn1/DerOutputStream;
.super Lorg/apache/harmony/security/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V
    .registers 5
    .parameter "asn1"
    .parameter "object"

    .prologue
    const/16 v1, 0x20

    .line 37
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;-><init>()V

    .line 123
    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 125
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 42
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 44
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 47
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 48
    return-void
.end method

.method private final encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .registers 7
    .parameter "collection"

    .prologue
    .line 102
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v2, v3, v4

    .line 103
    .local v2, values:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v3, v4

    .line 105
    .local v0, compLens:[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 108
    aget-object v3, v2, v1

    iput-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 109
    aget v3, v0, v1

    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 111
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 113
    :cond_26
    return-void
.end method

.method private getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .registers 8
    .parameter "collection"

    .prologue
    .line 236
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, cv:[Ljava/lang/Object;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 239
    .local v4, values:[Ljava/lang/Object;
    array-length v5, v4

    new-array v0, v5, [I

    .line 241
    .local v0, compLens:[I
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 242
    const/4 v3, 0x0

    .line 243
    .local v3, seqLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    array-length v5, v4

    if-ge v2, v5, :cond_33

    .line 245
    aget-object v5, v1, v2

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 247
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 249
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v2

    .line 253
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 255
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v3, v5

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 257
    :cond_33
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 258
    return-void
.end method

.method private push([I[Ljava/lang/Object;)V
    .registers 8
    .parameter "lengths"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 129
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 130
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_30

    .line 132
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[I

    .line 133
    .local v0, newLen:[[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    .line 136
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[Ljava/lang/Object;

    .line 137
    .local v1, newVal:[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 140
    .end local v0           #newLen:[[I
    .end local v1           #newVal:[[Ljava/lang/Object;
    :cond_30
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p1, v2, v3

    .line 141
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aput-object p2, v2, v3

    .line 142
    return-void
.end method


# virtual methods
.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 5
    .parameter "choice"

    .prologue
    .line 52
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 54
    .local v0, type:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 56
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 58
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 59
    return-void
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 5
    .parameter "explicit"

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 66
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 68
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 69
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "sequence"

    .prologue
    .line 73
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 75
    .local v2, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v3, v4, v5

    .line 76
    .local v3, values:[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    aget-object v0, v4, v5

    .line 78
    .local v0, compLens:[I
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v4, v2

    if-ge v1, v4, :cond_2d

    .line 81
    aget-object v4, v3, v1

    if-nez v4, :cond_1f

    .line 79
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 85
    :cond_1f
    aget-object v4, v3, v1

    iput-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 86
    aget v4, v0, v1

    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 88
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    goto :goto_1c

    .line 90
    :cond_2d
    return-void
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 2
    .parameter "sequenceOf"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 94
    return-void
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 2
    .parameter "setOf"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 98
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 7
    .parameter "choice"

    .prologue
    const/4 v4, 0x1

    .line 150
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 151
    .local v0, i:I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 153
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 155
    .local v1, values:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 157
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 161
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 162
    return-void
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 6
    .parameter "explicit"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    new-array v1, v2, [Ljava/lang/Object;

    .line 167
    .local v1, values:[Ljava/lang/Object;
    new-array v0, v2, [I

    .line 169
    .local v0, compLens:[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 171
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 173
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 177
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 178
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v2, v0, v3

    .line 180
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 181
    return-void
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "sequence"

    .prologue
    .line 185
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 187
    .local v3, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 188
    .local v4, values:[Ljava/lang/Object;
    array-length v5, v3

    new-array v0, v5, [I

    .line 190
    .local v0, compLens:[I
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, seqLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v5, v3

    if-ge v1, v5, :cond_51

    .line 197
    aget-object v5, v4, v1

    if-nez v5, :cond_28

    .line 198
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_22

    .line 195
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 201
    :cond_22
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 205
    :cond_28
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 206
    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1f

    .line 210
    :cond_38
    aget-object v5, v4, v1

    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 212
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 214
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    aput v5, v0, v1

    .line 218
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 220
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1f

    .line 222
    :cond_51
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    .line 223
    return-void
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 2
    .parameter "sequence"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 227
    return-void
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 2
    .parameter "setOf"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 231
    return-void
.end method
