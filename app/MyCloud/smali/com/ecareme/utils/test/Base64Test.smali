.class public Lcom/ecareme/utils/test/Base64Test;
.super Ljunit/framework/TestCase;
.source "Base64Test.java"


# instance fields
.field bytea:[B

.field byteb:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 15
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    .line 16
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    .line 13
    return-void
.end method


# virtual methods
.method public setUp()V
    .locals 2

    .prologue
    const/16 v1, 0x61

    .line 20
    iget-object v0, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 21
    iget-object v0, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 22
    return-void
.end method

.method public testEqual()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 26
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BZ)[B

    move-result-object v3

    .line 27
    .local v3, encodebyte:[B
    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v0

    .line 28
    .local v0, decodebyte:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 29
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v4

    .line 30
    .local v4, encodechar:[C
    invoke-static {v4}, Lcom/ecareme/utils/codec/Base64;->decode([C)[B

    move-result-object v1

    .line 31
    .local v1, decodechar:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 32
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, encodestr:Ljava/lang/String;
    invoke-static {v5}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 34
    .local v2, decodestr:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 35
    return-void
.end method

.method public testEqualFast()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 39
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BZ)[B

    move-result-object v3

    .line 40
    .local v3, encodebyte:[B
    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->decodeFast([B)[B

    move-result-object v0

    .line 41
    .local v0, decodebyte:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 42
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v4

    .line 43
    .local v4, encodechar:[C
    invoke-static {v4}, Lcom/ecareme/utils/codec/Base64;->decodeFast([C)[B

    move-result-object v1

    .line 44
    .local v1, decodechar:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 45
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, encodestr:Ljava/lang/String;
    invoke-static {v5}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    .line 47
    .local v2, decodestr:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 48
    return-void
.end method

.method public testLengthEqual()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 105
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BZ)[B

    move-result-object v0

    .line 106
    .local v0, base64bytea:[B
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v1

    .line 107
    .local v1, base64byteb:[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 108
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v6

    .line 109
    .local v6, decodebytea:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v7

    .line 110
    .local v7, decodebyteb:[B
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 111
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 112
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 114
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v2

    .line 115
    .local v2, base64chara:[C
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v3

    .line 116
    .local v3, base64charb:[C
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 117
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v8

    .line 118
    .local v8, decodechara:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v9

    .line 119
    .local v9, decodecharb:[B
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 120
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 121
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 123
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, base64stra:Ljava/lang/String;
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, base64strb:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 126
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v10

    .line 127
    .local v10, decodestra:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v11

    .line 128
    .local v11, decodestrb:[B
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 129
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 130
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertTrue(Z)V

    .line 131
    return-void
.end method

.method public testLengthNotEqual()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 78
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BZ)[B

    move-result-object v0

    .line 79
    .local v0, base64bytea:[B
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v1

    .line 80
    .local v1, base64byteb:[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 81
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v6

    .line 82
    .local v6, decodebytea:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v7

    .line 83
    .local v7, decodebyteb:[B
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 84
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 86
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v2

    .line 87
    .local v2, base64chara:[C
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v3

    .line 88
    .local v3, base64charb:[C
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 89
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v8

    .line 90
    .local v8, decodechara:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v9

    .line 91
    .local v9, decodecharb:[B
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 92
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 94
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, base64stra:Ljava/lang/String;
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->byteb:[B

    iget-object v13, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13, v14}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, base64strb:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 97
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v10

    .line 98
    .local v10, decodestra:[B
    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v11

    .line 99
    .local v11, decodestrb:[B
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 100
    iget-object v12, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v12, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    invoke-static {v12}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 101
    return-void
.end method

.method public testNotEqual()V
    .locals 9

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x0

    .line 52
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v3

    .line 53
    .local v3, encodebyte:[B
    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->decode([B)[B

    move-result-object v0

    .line 54
    .local v0, decodebyte:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 55
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v4

    .line 56
    .local v4, encodechar:[C
    invoke-static {v4}, Lcom/ecareme/utils/codec/Base64;->decode([C)[B

    move-result-object v1

    .line 57
    .local v1, decodechar:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 58
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, encodestr:Ljava/lang/String;
    invoke-static {v5}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 60
    .local v2, decodestr:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 61
    return-void
.end method

.method public testNotEqualFast()V
    .locals 9

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x0

    .line 65
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([BIZ)[B

    move-result-object v3

    .line 66
    .local v3, encodebyte:[B
    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->decodeFast([B)[B

    move-result-object v0

    .line 67
    .local v0, decodebyte:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 68
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToChar([BIZ)[C

    move-result-object v4

    .line 69
    .local v4, encodechar:[C
    invoke-static {v4}, Lcom/ecareme/utils/codec/Base64;->decodeFast([C)[B

    move-result-object v1

    .line 70
    .local v1, decodechar:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 71
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v8, v7}, Lcom/ecareme/utils/codec/Base64;->encodeToString([BIZ)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, encodestr:Ljava/lang/String;
    invoke-static {v5}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    .line 73
    .local v2, decodestr:[B
    iget-object v6, p0, Lcom/ecareme/utils/test/Base64Test;->bytea:[B

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lcom/ecareme/utils/test/Base64Test;->assertFalse(Z)V

    .line 74
    return-void
.end method
