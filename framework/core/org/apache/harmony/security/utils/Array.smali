.class public Lorg/apache/harmony/security/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "array"
    .parameter "prefix"

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "000"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "00"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, ""

    aput-object v1, v4, v0

    .line 54
    .local v4, offsetPrefix:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, charForm:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 57
    .local v1, i:I
    const/4 v1, 0x0

    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    :goto_29
    array-length v1, p0

    if-ge v3, v1, :cond_9d

    .line 58
    rem-int/lit8 v1, v3, 0x10

    if-nez v1, :cond_4b

    .line 59
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, offset:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v2, v4, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .end local v1           #offset:Ljava/lang/String;
    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 68
    :cond_4b
    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    .line 71
    .local v1, currentByte:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, hexTail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_64

    .line 73
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_64
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-char v1, v1

    .line 79
    .local v1, currentChar:C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    .end local v2           #hexTail:Ljava/lang/String;
    move-result v2

    if-eqz v2, :cond_74

    const/16 v1, 0x2e

    .end local v1           #currentChar:C
    :cond_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v1, v3, 0x1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_82

    .line 83
    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_82
    add-int/lit8 v1, v3, 0x1

    rem-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_99

    .line 87
    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/16 v1, 0xa

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_99
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    goto :goto_29

    .line 93
    :cond_9d
    rem-int/lit8 p0, v3, 0x10

    .end local p0
    if-eqz p0, :cond_cc

    .line 94
    const/16 p0, 0x10

    rem-int/lit8 p1, v3, 0x10

    .end local p1
    sub-int p1, p0, p1

    .line 95
    .local p1, ws2add:I
    const/4 p0, 0x0

    .local p0, j:I
    :goto_a8
    if-ge p0, p1, :cond_b2

    .line 96
    const-string v1, "   "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 p0, p0, 0x1

    goto :goto_a8

    .line 98
    :cond_b2
    const/16 p0, 0x8

    if-le p1, p0, :cond_bb

    .line 99
    .end local p0           #j:I
    const/16 p0, 0x20

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_bb
    const-string p0, "  "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 p0, 0xa

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .end local p1           #ws2add:I
    :cond_cc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
