.class public Lorg/apache/xpath/objects/XNumber;
.super Lorg/apache/xpath/objects/XObject;
.source "XNumber.java"


# static fields
.field static final serialVersionUID:J = -0x25c0ce08378ff1a1L


# instance fields
.field m_val:D


# direct methods
.method public constructor <init>(D)V
    .registers 3
    .parameter "d"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .parameter "num"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private static zeros(I)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 358
    const/4 v2, 0x1

    if-ge p0, v2, :cond_6

    .line 359
    const-string v2, ""

    .line 368
    :goto_5
    return-object v2

    .line 361
    :cond_6
    new-array v0, p0, [C

    .line 363
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, p0, :cond_12

    .line 365
    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 368
    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method


# virtual methods
.method public bool()Z
    .registers 5

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 433
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z

    .line 434
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 10
    .parameter "obj2"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 399
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    .line 402
    .local v0, t:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_e

    .line 403
    :try_start_9
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v2

    .line 407
    :goto_d
    return v2

    .line 404
    :cond_e
    if-ne v0, v6, :cond_1e

    .line 405
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNumber;->bool()Z

    move-result v3

    if-ne v2, v3, :cond_1c

    move v2, v6

    goto :goto_d

    :cond_1c
    move v2, v7

    goto :goto_d

    .line 407
    :cond_1e
    iget-wide v2, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_23
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_23} :catch_2c

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2a

    move v2, v6

    goto :goto_d

    :cond_2a
    move v2, v7

    goto :goto_d

    .line 409
    :catch_2c
    move-exception v2

    move-object v1, v2

    .line 411
    .local v1, te:Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "#NUMBER"

    return-object v0
.end method

.method public isStableNumber()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public num()D
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/xpath/objects/XNumber;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 380
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    .line 381
    :cond_e
    iget-object v0, p0, Lorg/apache/xpath/objects/XNumber;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public str()Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v13, 0x30

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 280
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 282
    const-string v8, "NaN"

    .line 343
    :goto_f
    return-object v8

    .line 284
    :cond_10
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 286
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_23

    .line 287
    const-string v8, "Infinity"

    goto :goto_f

    .line 289
    :cond_23
    const-string v8, "-Infinity"

    goto :goto_f

    .line 292
    :cond_26
    iget-wide v4, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    .line 293
    .local v4, num:D
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    .local v2, len:I
    sub-int v8, v2, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_55

    sub-int v8, v2, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_55

    .line 298
    sub-int v8, v2, v12

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 300
    const-string v8, "-0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 301
    const-string v8, "0"

    goto :goto_f

    :cond_53
    move-object v8, v6

    .line 303
    goto :goto_f

    .line 306
    :cond_55
    const/16 v8, 0x45

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 308
    .local v0, e:I
    if-gez v0, :cond_6e

    .line 310
    sub-int v8, v2, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_6c

    .line 311
    sub-int v8, v2, v10

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_6c
    move-object v8, v6

    .line 313
    goto :goto_f

    .line 316
    :cond_6e
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, exp:I
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_b5

    .line 321
    const-string v7, "-"

    .line 322
    .local v7, sign:Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    add-int/lit8 v0, v0, -0x1

    .line 329
    :goto_88
    sub-int v3, v0, v12

    .line 331
    .local v3, nDigits:I
    if-lt v1, v3, :cond_b8

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v1, v3

    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f

    .line 327
    .end local v3           #nDigits:I
    .end local v7           #sign:Ljava/lang/String;
    :cond_b5
    const-string v7, ""

    .restart local v7       #sign:Ljava/lang/String;
    goto :goto_88

    .line 336
    .restart local v3       #nDigits:I
    :cond_b8
    :goto_b8
    sub-int v8, v0, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_c3

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_b8

    .line 339
    :cond_c3
    if-lez v1, :cond_f6

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f

    .line 343
    :cond_f6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, -0x1

    sub-int/2addr v9, v1

    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f
.end method
