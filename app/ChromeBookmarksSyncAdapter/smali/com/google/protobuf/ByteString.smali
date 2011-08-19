.class public final Lcom/google/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final EMPTY:Lcom/google/protobuf/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 52
    return-void
.end method

.method public static copyFrom([B)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 90
    new-array v0, p2, [B

    .line 91
    .local v0, copy:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/google/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3
    .parameter "text"

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Lcom/google/protobuf/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/protobuf/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "o"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 240
    if-ne p1, p0, :cond_0

    move v6, v9

    .line 262
    :goto_0
    return v6

    .line 244
    :cond_0
    instance-of v6, p1, Lcom/google/protobuf/ByteString;

    if-nez v6, :cond_1

    move v6, v8

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v2, v0

    .line 249
    .local v2, other:Lcom/google/protobuf/ByteString;
    iget-object v6, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v4, v6

    .line 250
    .local v4, size:I
    iget-object v6, v2, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v6, v6

    if-eq v4, v6, :cond_2

    move v6, v8

    .line 251
    goto :goto_0

    .line 254
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 255
    .local v5, thisBytes:[B
    iget-object v3, v2, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 256
    .local v3, otherBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 257
    aget-byte v6, v5, v1

    aget-byte v7, v3, v1

    if-eq v6, v7, :cond_3

    move v6, v8

    .line 258
    goto :goto_0

    .line 256
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v6, v9

    .line 262
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 269
    iget v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 271
    .local v0, h:I
    if-nez v0, :cond_2

    .line 272
    iget-object v3, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 273
    .local v3, thisBytes:[B
    iget-object v4, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v2, v4

    .line 275
    .local v2, size:I
    move v0, v2

    .line 276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_1
    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 286
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #thisBytes:[B
    :cond_2
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v1, v2

    .line 201
    .local v1, size:I
    new-array v0, v1, [B

    .line 202
    .local v0, copy:[B
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-object v0
.end method
