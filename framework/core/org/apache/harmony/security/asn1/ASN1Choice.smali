.class public abstract Lorg/apache/harmony/security/asn1/ASN1Choice;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Choice.java"


# instance fields
.field private final identifiers:[[I

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 15
    .parameter "type"

    .prologue
    const/4 v12, 0x0

    .line 229
    invoke-direct {p0, v12}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 231
    array-length v10, p1

    if-nez v10, :cond_28

    .line 232
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ASN.1 choice type MUST have at least one alternative: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 236
    :cond_28
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 237
    .local v7, map:Ljava/util/TreeMap;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2e
    array-length v10, p1

    if-ge v4, v10, :cond_8d

    .line 239
    aget-object v9, p1, v4

    .line 241
    .local v9, t:Lorg/apache/harmony/security/asn1/ASN1Type;
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v10, :cond_58

    .line 244
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ASN.1 choice type MUST have alternatives with distinct tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 245
    :cond_58
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-eqz v10, :cond_70

    .line 248
    check-cast v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    .end local v9           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v0, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 249
    .local v0, choiceToAdd:[[I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_61
    aget-object v10, v0, v12

    array-length v10, v10

    if-ge v6, v10, :cond_8a

    .line 250
    aget-object v10, v0, v12

    aget v10, v10, v6

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 256
    .end local v0           #choiceToAdd:[[I
    .end local v6           #j:I
    .restart local v9       #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_70
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 257
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 261
    :cond_7d
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 262
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 237
    .end local v9           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 267
    :cond_8d
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v8

    .line 268
    .local v8, size:I
    const/4 v10, 0x2

    filled-new-array {v10, v8}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    iput-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 269
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 271
    .local v5, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a9
    if-ge v2, v8, :cond_d5

    .line 272
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 275
    .local v3, identifier:Ljava/math/BigInteger;
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v10, v10, v12

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v10, v2

    .line 276
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v11, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 279
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #identifier:Ljava/math/BigInteger;
    :cond_d5
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 280
    return-void
.end method

.method private addIdentifier(Ljava/util/TreeMap;II)V
    .registers 7
    .parameter "map"
    .parameter "identifier"
    .parameter "index"

    .prologue
    .line 283
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 choice type MUST have alternatives with distinct tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_31
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 4
    .parameter "identifier"

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 309
    .local v0, index:I
    if-gez v0, :cond_2e

    .line 310
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode ASN.1 choice type.  No alternatives were found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_2e
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 315
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 318
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    .line 320
    iget-boolean v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v1, :cond_47

    .line 321
    const/4 v1, 0x0

    .line 323
    :goto_46
    return-object v1

    :cond_47
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_46
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 334
    return-void
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 337
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 338
    return-void
.end method

.method public abstract getIndex(Ljava/lang/Object;)I
.end method

.method public abstract getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 351
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 352
    return-void
.end method
