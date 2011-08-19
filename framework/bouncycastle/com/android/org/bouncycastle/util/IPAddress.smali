.class public Lcom/android/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .registers 5
    .parameter "component"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_b

    move-result v1

    .line 105
    .local v1, value:I
    if-ltz v1, :cond_a

    if-gt v1, p1, :cond_a

    const/4 v2, 0x1

    .line 109
    .end local v1           #value:I
    :cond_a
    :goto_a
    return v2

    .line 107
    :catch_b
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2
    .parameter "address"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .registers 11
    .parameter "address"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    move v6, v8

    .line 76
    :goto_9
    return v6

    .line 47
    :cond_a
    const/4 v2, 0x0

    .line 49
    .local v2, octets:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, temp:Ljava/lang/String;
    const/4 v4, 0x0

    .line 54
    .local v4, start:I
    :goto_1f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4a

    const/16 v6, 0x2e

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, pos:I
    if-le v3, v4, :cond_4a

    .line 56
    if-ne v2, v9, :cond_31

    move v6, v8

    .line 58
    goto :goto_9

    .line 62
    :cond_31
    :try_start_31
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_41

    move-result v1

    .line 68
    .local v1, octet:I
    if-ltz v1, :cond_3f

    const/16 v6, 0xff

    if-le v1, v6, :cond_45

    :cond_3f
    move v6, v8

    .line 70
    goto :goto_9

    .line 64
    .end local v1           #octet:I
    :catch_41
    move-exception v6

    move-object v0, v6

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v6, v8

    .line 66
    goto :goto_9

    .line 72
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local v1       #octet:I
    :cond_45
    add-int/lit8 v4, v3, 0x1

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 76
    .end local v1           #octet:I
    .end local v3           #pos:I
    :cond_4a
    if-ne v2, v9, :cond_4e

    const/4 v6, 0x1

    goto :goto_9

    :cond_4e
    move v6, v8

    goto :goto_9
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, index:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, mask:Ljava/lang/String;
    if-lez v0, :cond_29

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    const/4 v2, 0x1

    :goto_28
    return v2

    :cond_29
    move v2, v3

    goto :goto_28
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .registers 14
    .parameter "address"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_c

    move v8, v10

    .line 184
    :goto_b
    return v8

    .line 129
    :cond_c
    const/4 v3, 0x0

    .line 131
    .local v3, octets:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, temp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 134
    .local v0, doubleColonFound:Z
    const/4 v5, 0x0

    .line 136
    .local v5, start:I
    :goto_22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_7e

    const/16 v8, 0x3a

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, pos:I
    if-lt v4, v5, :cond_7e

    .line 138
    if-ne v3, v12, :cond_34

    move v8, v10

    .line 140
    goto :goto_b

    .line 143
    :cond_34
    if-eq v5, v4, :cond_6f

    .line 145
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    if-ne v4, v8, :cond_58

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_58

    .line 149
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_51

    move v8, v10

    .line 151
    goto :goto_b

    .line 154
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 180
    .end local v7           #value:Ljava/lang/String;
    :cond_53
    :goto_53
    add-int/lit8 v5, v4, 0x1

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 160
    .restart local v7       #value:Ljava/lang/String;
    :cond_58
    :try_start_58
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_61} :catch_6b

    move-result v2

    .line 166
    .local v2, octet:I
    if-ltz v2, :cond_69

    const v8, 0xffff

    if-le v2, v8, :cond_53

    :cond_69
    move v8, v10

    .line 168
    goto :goto_b

    .line 162
    .end local v2           #octet:I
    :catch_6b
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/lang/NumberFormatException;
    move v8, v10

    .line 164
    goto :goto_b

    .line 174
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v7           #value:Ljava/lang/String;
    :cond_6f
    if-eq v4, v11, :cond_7c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    if-eq v4, v8, :cond_7c

    if-eqz v0, :cond_7c

    move v8, v10

    .line 176
    goto :goto_b

    .line 178
    :cond_7c
    const/4 v0, 0x1

    goto :goto_53

    .line 184
    .end local v4           #pos:I
    :cond_7e
    if-eq v3, v12, :cond_82

    if-eqz v0, :cond_84

    :cond_82
    move v8, v11

    goto :goto_b

    :cond_84
    move v8, v10

    goto :goto_b
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, index:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, mask:Ljava/lang/String;
    if-lez v0, :cond_29

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    const/4 v2, 0x1

    :goto_28
    return v2

    :cond_29
    move v2, v3

    goto :goto_28
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .registers 2
    .parameter "address"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
