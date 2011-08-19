.class public final Lorg/apache/harmony/luni/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .parameter "s"
    .parameter "convertPlus"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "s"
    .parameter "convertPlus"
    .parameter "encoding"

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x25

    const/4 v9, -0x1

    .line 49
    if-nez p1, :cond_f

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v9, :cond_f

    move-object v7, p0

    .line 86
    :goto_e
    return-object v7

    .line 51
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v6, result:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_d3

    .line 54
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    .local v0, c:C
    if-eqz p1, :cond_36

    const/16 v7, 0x2b

    if-ne v0, v7, :cond_36

    .line 56
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :goto_33
    add-int/lit8 v4, v4, 0x1

    .line 85
    goto :goto_1e

    .line 57
    :cond_36
    if-ne v0, v10, :cond_ce

    .line 58
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 60
    :cond_3b
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_5c

    .line 61
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incomplete % sequence at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    :cond_5c
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 64
    .local v1, d1:I
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 65
    .local v2, d2:I
    if-eq v1, v9, :cond_74

    if-ne v2, v9, :cond_9d

    .line 66
    :cond_74
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid % sequence "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x3

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 69
    :cond_9d
    shl-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    add-int/lit8 v4, v4, 0x3

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_b2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_3b

    .line 72
    :cond_b2
    if-nez p2, :cond_bd

    .line 73
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    .line 76
    :cond_bd
    :try_start_bd
    invoke-virtual {v5, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bd .. :try_end_c4} :catch_c6

    goto/16 :goto_1e

    .line 77
    :catch_c6
    move-exception v7

    move-object v3, v7

    .line 78
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 83
    .end local v1           #d1:I
    .end local v2           #d2:I
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_ce
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 86
    .end local v0           #c:C
    :cond_d3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e
.end method

.method public static toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 91
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_25

    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 94
    .local v1, c:C
    const/16 v4, 0x41

    if-gt v4, v1, :cond_21

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_21

    .line 95
    add-int/lit8 v4, v1, 0x20

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 97
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 100
    .end local v1           #c:C
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 105
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_27

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 108
    .local v1, c:C
    const/16 v4, 0x61

    if-gt v4, v1, :cond_23

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_23

    .line 109
    const/16 v4, 0x20

    sub-int v4, v1, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 111
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 114
    .end local v1           #c:C
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
