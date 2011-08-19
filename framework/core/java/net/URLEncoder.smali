.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final digits:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static convert(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .parameter "s"
    .parameter "buf"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 128
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 129
    const/16 v2, 0x25

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "0123456789ABCDEF"

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "0123456789ABCDEF"

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 133
    :cond_2c
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7e

    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 56
    .local v2, ch:C
    const/16 v5, 0x61

    if-lt v2, v5, :cond_1e

    const/16 v5, 0x7a

    if-le v2, v5, :cond_37

    :cond_1e
    const/16 v5, 0x41

    if-lt v2, v5, :cond_26

    const/16 v5, 0x5a

    if-le v2, v5, :cond_37

    :cond_26
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2e

    const/16 v5, 0x39

    if-le v2, v5, :cond_37

    :cond_2e
    const-string v5, ".-*_"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_3d

    .line 58
    :cond_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 59
    :cond_3d
    const/16 v5, 0x20

    if-ne v2, v5, :cond_47

    .line 60
    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 62
    :cond_47
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 63
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_57
    array-length v5, v1

    if-ge v4, v5, :cond_3a

    .line 64
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, "0123456789ABCDEF"

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 70
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "s"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 92
    :cond_4
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 95
    :cond_a
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 100
    .local v3, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_65

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 102
    .local v1, ch:C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2e

    const/16 v4, 0x7a

    if-le v1, v4, :cond_47

    :cond_2e
    const/16 v4, 0x41

    if-lt v1, v4, :cond_36

    const/16 v4, 0x5a

    if-le v1, v4, :cond_47

    :cond_36
    const/16 v4, 0x30

    if-lt v1, v4, :cond_3e

    const/16 v4, 0x39

    if-le v1, v4, :cond_47

    :cond_3e
    const-string v4, " .-*_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_61

    .line 104
    :cond_47
    if-ltz v3, :cond_51

    .line 105
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p1}, Ljava/net/URLEncoder;->convert(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 106
    const/4 v3, -0x1

    .line 108
    :cond_51
    const/16 v4, 0x20

    if-eq v1, v4, :cond_5b

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 111
    :cond_5b
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 114
    :cond_61
    if-gez v3, :cond_58

    .line 115
    move v3, v2

    goto :goto_58

    .line 119
    .end local v1           #ch:C
    :cond_65
    if-ltz v3, :cond_72

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p1}, Ljava/net/URLEncoder;->convert(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
