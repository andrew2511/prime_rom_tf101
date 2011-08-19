.class public final Lorg/apache/harmony/security/asn1/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private final oid:[I

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "strOid"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 69
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>([I)V
    .registers 2
    .parameter "oid"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->validate([I)V

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 59
    return-void
.end method

.method public static isOID(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-static {p0, v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .registers 2
    .parameter "str"

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method private static toIntArray(Ljava/lang/String;Z)[I
    .registers 15
    .parameter "str"
    .parameter "shouldThrow"

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0x2e

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 293
    if-nez p0, :cond_13

    .line 294
    if-nez p1, :cond_d

    move-object v7, v9

    .line 369
    :goto_c
    return-object v7

    .line 297
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 300
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 301
    .local v4, length:I
    if-nez v4, :cond_25

    .line 302
    if-nez p1, :cond_1d

    move-object v7, v9

    .line 303
    goto :goto_c

    .line 305
    :cond_1d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 308
    :cond_25
    const/4 v1, 0x1

    .line 309
    .local v1, count:I
    const/4 v6, 0x1

    .line 311
    .local v6, wasDot:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_28
    if-ge v2, v4, :cond_58

    .line 312
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 313
    .local v0, c:C
    if-ne v0, v11, :cond_44

    .line 314
    if-eqz v6, :cond_3e

    .line 315
    if-nez p1, :cond_36

    move-object v7, v9

    .line 316
    goto :goto_c

    .line 318
    :cond_36
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 320
    :cond_3e
    const/4 v6, 0x1

    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 311
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 322
    :cond_44
    if-lt v0, v12, :cond_4c

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4c

    .line 323
    const/4 v6, 0x0

    goto :goto_41

    .line 325
    :cond_4c
    if-nez p1, :cond_50

    move-object v7, v9

    .line 326
    goto :goto_c

    .line 328
    :cond_50
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    .end local v0           #c:C
    :cond_58
    if-eqz v6, :cond_66

    .line 334
    if-nez p1, :cond_5e

    move-object v7, v9

    .line 335
    goto :goto_c

    .line 337
    :cond_5e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 340
    :cond_66
    if-ge v1, v8, :cond_74

    .line 341
    if-nez p1, :cond_6c

    move-object v7, v9

    .line 342
    goto :goto_c

    .line 344
    :cond_6c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 347
    :cond_74
    new-array v5, v1, [I

    .line 348
    .local v5, oid:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, j:I
    :goto_78
    if-ge v2, v4, :cond_8e

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 350
    .restart local v0       #c:C
    if-ne v0, v11, :cond_85

    .line 351
    add-int/lit8 v3, v3, 0x1

    .line 348
    :goto_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 353
    :cond_85
    aget v7, v5, v3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v0

    sub-int/2addr v7, v12

    aput v7, v5, v3

    goto :goto_82

    .line 357
    .end local v0           #c:C
    :cond_8e
    aget v7, v5, v10

    if-le v7, v8, :cond_9f

    .line 358
    if-nez p1, :cond_97

    move-object v7, v9

    .line 359
    goto/16 :goto_c

    .line 361
    :cond_97
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 362
    :cond_9f
    aget v7, v5, v10

    if-eq v7, v8, :cond_b7

    const/4 v7, 0x1

    aget v7, v5, v7

    const/16 v8, 0x27

    if-le v7, v8, :cond_b7

    .line 363
    if-nez p1, :cond_af

    move-object v7, v9

    .line 364
    goto/16 :goto_c

    .line 366
    :cond_af
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Incorrect syntax"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b7
    move-object v7, v5

    .line 369
    goto/16 :goto_c
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v3, 0x1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v2, p0

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1b

    .line 243
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 246
    :cond_1b
    array-length v2, p0

    sub-int/2addr v2, v3

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static validate([I)V
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 127
    if-nez p0, :cond_c

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "oid == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_c
    array-length v1, p0

    if-ge v1, v2, :cond_17

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OID MUST have at least 2 subidentifiers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_17
    aget v1, p0, v3

    if-le v1, v2, :cond_23

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Valid values for first subidentifier are 0, 1 and 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_23
    aget v1, p0, v3

    if-eq v1, v2, :cond_36

    const/4 v1, 0x1

    aget v1, p0, v1

    const/16 v2, 0x27

    if-le v1, v2, :cond_36

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    array-length v1, p0

    if-ge v0, v1, :cond_49

    .line 142
    aget v1, p0, v0

    if-gez v1, :cond_46

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Subidentifier MUST have positive value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 146
    :cond_49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 88
    if-ne p0, p1, :cond_4

    .line 89
    const/4 v0, 0x1

    .line 94
    .end local p1
    :goto_3
    return v0

    .line 91
    .restart local p1
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 92
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 94
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_3
.end method

.method public getOid()[I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    const/4 v2, 0x4

    if-ge v0, v2, :cond_15

    .line 114
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_15
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 104
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v0
.end method
