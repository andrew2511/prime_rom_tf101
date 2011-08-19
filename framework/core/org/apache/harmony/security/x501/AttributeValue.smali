.class public Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public rawString:Ljava/lang/String;

.field private tag:I

.field public final wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "parsedString"
    .parameter "hasQorE"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 54
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 56
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 8
    .parameter "hexString"
    .parameter "encoded"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 62
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 68
    :try_start_d
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 70
    .local v2, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 72
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 74
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 85
    :goto_32
    return-void

    .line 77
    :cond_33
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_38

    goto :goto_32

    .line 80
    .end local v2           #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 81
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 82
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .registers 5
    .parameter "rawString"
    .parameter "encoded"
    .parameter "tag"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 93
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 94
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 96
    if-nez p1, :cond_1a

    .line 97
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 103
    :goto_19
    return-void

    .line 100
    :cond_1a
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_19
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x5c

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 179
    .local v3, length:I
    if-nez v3, :cond_b

    move-object v4, p1

    .line 219
    :goto_a
    return-object v4

    .line 182
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 184
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_13
    if-ge v2, v3, :cond_41

    .line 185
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_46

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 188
    :sswitch_22
    if-eqz v2, :cond_28

    sub-int v4, v3, v6

    if-ne v2, v4, :cond_2b

    .line 190
    :cond_28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_2b
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 197
    :sswitch_31
    iput-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 198
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 209
    :sswitch_3a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 219
    .end local v1           #ch:C
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 186
    :sswitch_data_46
    .sparse-switch
        0x20 -> :sswitch_22
        0x22 -> :sswitch_31
        0x23 -> :sswitch_3a
        0x2b -> :sswitch_3a
        0x2c -> :sswitch_3a
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3a
        0x3d -> :sswitch_3a
        0x3e -> :sswitch_3a
        0x5c -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuffer;)V
    .registers 7
    .parameter "buf"

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_27

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 156
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, c:C
    if-eq v0, v3, :cond_1e

    if-ne v0, v4, :cond_21

    .line 158
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 163
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_27
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 117
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_73

    .line 119
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_1c

    .line 121
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 122
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 128
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6d

    .line 132
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 133
    .local v1, c:I
    if-ge v1, v5, :cond_5f

    .line 134
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :goto_43
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 140
    if-ge v1, v5, :cond_66

    .line 141
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 124
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #c:I
    .end local v2           #i:I
    :cond_54
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_1c

    .line 136
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #c:I
    .restart local v2       #i:I
    :cond_5f
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 143
    :cond_66
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 146
    .end local v1           #c:I
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 148
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_73
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 107
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 108
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 113
    :cond_13
    :goto_13
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0

    .line 110
    :cond_16
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    goto :goto_13
.end method

.method public makeCanonical()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x23

    const/4 v8, 0x1

    const/16 v7, 0x20

    .line 224
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 225
    .local v4, length:I
    if-nez v4, :cond_12

    .line 226
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 272
    :goto_11
    return-object v5

    .line 228
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 231
    .local v3, index:I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2b

    .line 232
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 238
    :cond_2b
    :goto_2b
    if-ge v3, v4, :cond_52

    .line 240
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 242
    .local v2, ch:C
    sparse-switch v2, :sswitch_data_6e

    .line 262
    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 245
    :sswitch_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 246
    .local v1, bufLength:I
    if-eqz v1, :cond_39

    sub-int v5, v1, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_39

    .line 249
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 259
    .end local v1           #bufLength:I
    :sswitch_4e
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 267
    .end local v2           #ch:C
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int v1, v5, v8

    .line 268
    .restart local v1       #bufLength:I
    :goto_58
    const/4 v5, -0x1

    if-le v1, v5, :cond_64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_64

    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    .line 270
    :cond_64
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    .line 242
    :sswitch_data_6e
    .sparse-switch
        0x20 -> :sswitch_3c
        0x22 -> :sswitch_4e
        0x2b -> :sswitch_4e
        0x2c -> :sswitch_4e
        0x3b -> :sswitch_4e
        0x3c -> :sswitch_4e
        0x3e -> :sswitch_4e
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method
