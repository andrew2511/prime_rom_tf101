.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 68
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 69
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    .line 93
    :goto_a
    return-object v0

    .line 71
    .restart local p0
    :cond_b
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1d

    .line 72
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 74
    .restart local p0
    :cond_1d
    instance-of v0, p0, [B

    if-eqz v0, :cond_2c

    .line 75
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_a

    .line 77
    .restart local p0
    :cond_2c
    instance-of v0, p0, [C

    if-eqz v0, :cond_3b

    .line 78
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_a

    .line 80
    .restart local p0
    :cond_3b
    instance-of v0, p0, [S

    if-eqz v0, :cond_4a

    .line 81
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_a

    .line 83
    .restart local p0
    :cond_4a
    instance-of v0, p0, [I

    if-eqz v0, :cond_59

    .line 84
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 86
    .restart local p0
    :cond_59
    instance-of v0, p0, [J

    if-eqz v0, :cond_68

    .line 87
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    .line 89
    .restart local p0
    :cond_68
    instance-of v0, p0, [F

    if-eqz v0, :cond_78

    .line 90
    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_a

    .line 92
    .restart local p0
    :cond_78
    instance-of v0, p0, [D

    if-eqz v0, :cond_88

    .line 93
    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_a

    .line 95
    .restart local p0
    :cond_88
    if-nez p0, :cond_90

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 123
    instance-of v0, p0, [Z

    if-eqz v0, :cond_b

    .line 124
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    return v0

    .line 125
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 127
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 156
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 157
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aget-byte v0, p0, p1

    .line 159
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 185
    instance-of v0, p0, [C

    if-eqz v0, :cond_b

    .line 186
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aget-char v0, p0, p1

    return v0

    .line 187
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 189
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 218
    instance-of v0, p0, [D

    if-eqz v0, :cond_b

    .line 219
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aget-wide v0, p0, p1

    .line 221
    :goto_a
    return-wide v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_a
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 247
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    .line 248
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aget v0, p0, p1

    .line 250
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_a
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 276
    instance-of v0, p0, [I

    if-eqz v0, :cond_b

    .line 277
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aget v0, p0, p1

    .line 279
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v0

    goto :goto_a
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 3
    .parameter "array"

    .prologue
    .line 298
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 299
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    .line 323
    :goto_9
    return v0

    .line 301
    .restart local p0
    :cond_a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_14

    .line 302
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    array-length v0, p0

    goto :goto_9

    .line 304
    .restart local p0
    :cond_14
    instance-of v0, p0, [B

    if-eqz v0, :cond_1e

    .line 305
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    array-length v0, p0

    goto :goto_9

    .line 307
    .restart local p0
    :cond_1e
    instance-of v0, p0, [C

    if-eqz v0, :cond_28

    .line 308
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    array-length v0, p0

    goto :goto_9

    .line 310
    .restart local p0
    :cond_28
    instance-of v0, p0, [S

    if-eqz v0, :cond_32

    .line 311
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    array-length v0, p0

    goto :goto_9

    .line 313
    .restart local p0
    :cond_32
    instance-of v0, p0, [I

    if-eqz v0, :cond_3c

    .line 314
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    array-length v0, p0

    goto :goto_9

    .line 316
    .restart local p0
    :cond_3c
    instance-of v0, p0, [J

    if-eqz v0, :cond_46

    .line 317
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    array-length v0, p0

    goto :goto_9

    .line 319
    .restart local p0
    :cond_46
    instance-of v0, p0, [F

    if-eqz v0, :cond_50

    .line 320
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    array-length v0, p0

    goto :goto_9

    .line 322
    .restart local p0
    :cond_50
    instance-of v0, p0, [D

    if-eqz v0, :cond_5a

    .line 323
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    array-length v0, p0

    goto :goto_9

    .line 325
    .restart local p0
    :cond_5a
    if-nez p0, :cond_62

    .line 326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 328
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 353
    instance-of v0, p0, [J

    if-eqz v0, :cond_b

    .line 354
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aget-wide v0, p0, p1

    .line 356
    :goto_a
    return-wide v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_a
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 382
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    .line 383
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aget-short v0, p0, p1

    .line 385
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    int-to-short v0, v0

    goto :goto_a
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 447
    .local p0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 448
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 472
    :goto_a
    return-object v0

    .line 450
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 451
    new-array v0, p1, [Z

    goto :goto_a

    .line 453
    :cond_12
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    .line 454
    new-array v0, p1, [B

    goto :goto_a

    .line 456
    :cond_19
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    .line 457
    new-array v0, p1, [C

    goto :goto_a

    .line 459
    :cond_20
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 460
    new-array v0, p1, [S

    goto :goto_a

    .line 462
    :cond_27
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 463
    new-array v0, p1, [I

    goto :goto_a

    .line 465
    :cond_2e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 466
    new-array v0, p1, [J

    goto :goto_a

    .line 468
    :cond_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    .line 469
    new-array v0, p1, [F

    goto :goto_a

    .line 471
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 472
    new-array v0, p1, [D

    goto :goto_a

    .line 474
    :cond_43
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4d

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 477
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "dimensions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_8

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_10

    .line 412
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad number of dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_10
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 417
    :cond_1a
    if-nez p0, :cond_22

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 420
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_12

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_12
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_35

    .line 513
    if-eqz p2, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2e
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aput-object p2, p0, p1

    .line 542
    .end local p2
    :cond_34
    :goto_34
    return-void

    .line 521
    .restart local p0
    .restart local p2
    :cond_35
    if-nez p2, :cond_3f

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_3f
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    .line 526
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_34

    .line 527
    .restart local p2
    :cond_4d
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_5b

    .line 528
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_34

    .line 529
    .restart local p2
    :cond_5b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_69

    .line 530
    check-cast p2, Ljava/lang/Character;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_34

    .line 531
    .restart local p2
    :cond_69
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_77

    .line 532
    check-cast p2, Ljava/lang/Short;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_34

    .line 533
    .restart local p2
    :cond_77
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_85

    .line 534
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_34

    .line 535
    .restart local p2
    :cond_85
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_93

    .line 536
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_34

    .line 537
    .restart local p2
    :cond_93
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a1

    .line 538
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_34

    .line 539
    .restart local p2
    :cond_a1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    .line 540
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_34
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 565
    instance-of v0, p0, [Z

    if-eqz v0, :cond_b

    .line 566
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aput-boolean p2, p0, p1

    .line 570
    :goto_a
    return-void

    .line 568
    .restart local p0
    :cond_b
    if-eqz p2, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 593
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 594
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aput-byte p2, p0, p1

    .line 598
    :goto_a
    return-void

    .line 596
    .restart local p0
    :cond_b
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_a
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 621
    instance-of v0, p0, [C

    if-eqz v0, :cond_b

    .line 622
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aput-char p2, p0, p1

    .line 630
    return-void

    .line 623
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 625
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_25

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .registers 6
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 653
    instance-of v0, p0, [D

    if-eqz v0, :cond_b

    .line 654
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aput-wide p2, p0, p1

    .line 662
    return-void

    .line 655
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_25

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 685
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    .line 686
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aput p2, p0, p1

    .line 690
    :goto_a
    return-void

    .line 688
    .restart local p0
    :cond_b
    float-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_a
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 713
    instance-of v0, p0, [I

    if-eqz v0, :cond_b

    .line 714
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aput p2, p0, p1

    .line 718
    :goto_a
    return-void

    .line 716
    .restart local p0
    :cond_b
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_a
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 741
    instance-of v0, p0, [J

    if-eqz v0, :cond_b

    .line 742
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aput-wide p2, p0, p1

    .line 746
    :goto_a
    return-void

    .line 744
    .restart local p0
    :cond_b
    long-to-float v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_a
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 769
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    .line 770
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aput-short p2, p0, p1

    .line 774
    :goto_a
    return-void

    .line 772
    .restart local p0
    :cond_b
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_a
.end method
