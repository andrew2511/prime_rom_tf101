.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .parameter "source"
    .parameter "bytes"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/text/CollationKey;

    .end local p1
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/text/CollationKey;)I
    .registers 12
    .parameter "other"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 37
    instance-of v5, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v5, :cond_1b

    .line 38
    check-cast p1, Llibcore/icu/CollationKeyICU;

    .end local p1
    iget-object v2, p1, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 43
    .local v2, rhsBytes:[B
    :goto_b
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v5, :cond_14

    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    if-nez v5, :cond_22

    .line 44
    :cond_14
    if-eqz v2, :cond_19

    array-length v5, v2

    if-nez v5, :cond_20

    :cond_19
    move v5, v9

    .line 71
    :goto_1a
    return v5

    .line 40
    .end local v2           #rhsBytes:[B
    .restart local p1
    :cond_1b
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    .restart local v2       #rhsBytes:[B
    goto :goto_b

    .end local p1
    :cond_20
    move v5, v7

    .line 47
    goto :goto_1a

    .line 49
    :cond_22
    if-eqz v2, :cond_27

    array-length v5, v2

    if-nez v5, :cond_29

    :cond_27
    move v5, v8

    .line 50
    goto :goto_1a

    .line 54
    :cond_29
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_32
    if-ge v1, v0, :cond_49

    .line 56
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v5, v5, v1

    and-int/lit16 v3, v5, 0xff

    .line 57
    .local v3, s:I
    aget-byte v5, v2, v1

    and-int/lit16 v4, v5, 0xff

    .line 58
    .local v4, t:I
    if-ge v3, v4, :cond_42

    move v5, v7

    .line 59
    goto :goto_1a

    .line 61
    :cond_42
    if-le v3, v4, :cond_46

    move v5, v8

    .line 62
    goto :goto_1a

    .line 55
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 65
    .end local v3           #s:I
    .end local v4           #t:I
    :cond_49
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v6, v2

    if-ge v5, v6, :cond_51

    move v5, v7

    .line 66
    goto :goto_1a

    .line 68
    :cond_51
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v6, v2

    if-le v5, v6, :cond_59

    move v5, v8

    .line 69
    goto :goto_1a

    :cond_59
    move v5, v9

    .line 71
    goto :goto_1a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p1, p0, :cond_6

    move v0, v2

    .line 81
    .end local p1
    :goto_5
    return v0

    .line 78
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/text/CollationKey;

    if-nez v0, :cond_c

    move v0, v1

    .line 79
    goto :goto_5

    .line 81
    :cond_c
    check-cast p1, Ljava/text/CollationKey;

    .end local p1
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_5

    :cond_16
    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 95
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_2f

    .line 96
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v3, :cond_28

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_28

    .line 97
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v2, v3

    .line 98
    .local v2, len:I
    const/16 v3, 0x20

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x20

    add-int/lit8 v1, v3, 0x1

    .line 99
    .local v1, inc:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_28

    .line 100
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    mul-int/lit8 v3, v3, 0x25

    iget-object v4, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 101
    add-int/2addr v0, v1

    goto :goto_19

    .line 104
    .end local v0           #i:I
    .end local v1           #inc:I
    .end local v2           #len:I
    :cond_28
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_2f

    .line 105
    const/4 v3, 0x1

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 108
    :cond_2f
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    return v3
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_b

    .line 113
    :cond_9
    const/4 v0, 0x0

    .line 115
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    goto :goto_a
.end method
