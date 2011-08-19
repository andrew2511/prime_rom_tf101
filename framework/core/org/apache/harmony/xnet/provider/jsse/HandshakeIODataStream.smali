.class public Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "HandshakeIODataStream.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;
.implements Lorg/apache/harmony/xnet/provider/jsse/DataStream;


# static fields
.field private static final md5:Ljava/security/MessageDigest;

.field private static final sha:Ljava/security/MessageDigest;


# instance fields
.field private buff_size:I

.field private buffer:[B

.field private inc_buff_size:I

.field private marked_pos:I

.field private read_pos:I

.field private read_pos_end:I

.field private write_pos:I

.field private write_pos_beg:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    .line 72
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 78
    return-void

    .line 73
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize the Digest Algorithms."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x400

    .line 80
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    .line 83
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    .line 84
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    .line 85
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    .line 80
    return-void
.end method

.method private append([BII)V
    .registers 8
    .parameter "src"
    .parameter "from"
    .parameter "length"

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_29

    .line 194
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-eq v0, v1, :cond_1b

    .line 197
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0xa

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Handshake message has been received before the last oubound message had been sent."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    .line 203
    :cond_1b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-ge v0, v1, :cond_29

    .line 204
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 205
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 208
    :cond_29
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-le v0, v1, :cond_39

    .line 209
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    .line 211
    :cond_39
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 213
    return-void
.end method

.method private check(I)V
    .registers 7
    .parameter "length"

    .prologue
    .line 245
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-ne v0, v1, :cond_48

    .line 247
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-eq v0, v1, :cond_3a

    .line 250
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0x50

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data was not fully read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    .line 256
    :cond_3a
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ge v0, v1, :cond_48

    .line 257
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 258
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 262
    :cond_48
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-lt v0, v1, :cond_52

    .line 263
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    .line 265
    :cond_52
    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 6
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 216
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    if-ge p1, v1, :cond_1b

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    add-int/2addr v1, v2

    :goto_a
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    .line 219
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v1, [B

    .line 220
    .local v0, new_buff:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    .line 222
    return-void

    .line 216
    .end local v0           #new_buff:[B
    :cond_1b
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    add-int/2addr v1, p1

    goto :goto_a
.end method


# virtual methods
.method public append([B)V
    .registers 4
    .parameter "src"

    .prologue
    .line 188
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([BII)V

    .line 189
    return-void
.end method

.method public available()I
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected clearBuffer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 226
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 227
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 228
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 229
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 230
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 231
    return-void
.end method

.method public getData(I)[B
    .registers 8
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 357
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_20

    .line 358
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 359
    .local v0, res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 367
    :goto_1f
    return-object v0

    .line 363
    .end local v0           #res:[B
    :cond_20
    new-array v0, p1, [B

    .line 364
    .restart local v0       #res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    invoke-static {v1, v2, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    goto :goto_1f
.end method

.method protected getDigestMD5()[B
    .registers 6

    .prologue
    .line 403
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 404
    :try_start_3
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v2, v3, :cond_1c

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    move v0, v2

    .line 407
    .local v0, len:I
    :goto_c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 408
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 404
    .end local v0           #len:I
    :cond_1c
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    move v0, v2

    goto :goto_c

    .line 409
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method protected getDigestMD5withoutLast()[B
    .registers 6

    .prologue
    .line 432
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v0

    .line 433
    :try_start_3
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 434
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 435
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected getDigestSHA()[B
    .registers 6

    .prologue
    .line 417
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 418
    :try_start_3
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v2, v3, :cond_1c

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    move v0, v2

    .line 421
    .local v0, len:I
    :goto_c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 422
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 418
    .end local v0           #len:I
    :cond_1c
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    move v0, v2

    goto :goto_c

    .line 423
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method protected getDigestSHAwithoutLast()[B
    .registers 6

    .prologue
    .line 444
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v0

    .line 445
    :try_start_3
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 446
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 447
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected getMessages()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 455
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v2, v3, :cond_12

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    move v0, v2

    .line 456
    .local v0, len:I
    :goto_a
    new-array v1, v0, [B

    .line 457
    .local v1, res:[B
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    return-object v1

    .line 455
    .end local v0           #len:I
    .end local v1           #res:[B
    :cond_12
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    move v0, v2

    goto :goto_a
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 347
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mark()V
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 113
    return-void
.end method

.method public mark(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 109
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected printContent(Ljava/io/PrintStream;)V
    .registers 9
    .parameter "outstream"

    .prologue
    .line 373
    const/16 v2, 0x14

    .line 374
    .local v2, perLine:I
    const-string v3, " "

    .line 375
    .local v3, prefix:Ljava/lang/String;
    const-string v0, ""

    .line 377
    .local v0, delimiter:Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .local v1, i:I
    :goto_8
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-ge v1, v5, :cond_6a

    .line 378
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, tail:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 383
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 385
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_5b

    .line 386
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 389
    :cond_5b
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v2

    if-nez v5, :cond_67

    .line 390
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 377
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 393
    .end local v4           #tail:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 394
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_c

    .line 141
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    .line 143
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 165
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    .line 167
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 169
    return p3
.end method

.method public read(I)[B
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v1

    if-le p1, v1, :cond_c

    .line 154
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v1

    .line 156
    :cond_c
    new-array v0, p1, [B

    .line 157
    .local v0, res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 159
    return-object v0
.end method

.method protected removeFromMarkedPosition()V
    .registers 7

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 129
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 130
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 118
    return-void
.end method

.method public write(B)V
    .registers 5
    .parameter "b"

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 273
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    aput-byte p1, v0, v1

    .line 274
    return-void
.end method

.method public write([B)V
    .registers 6
    .parameter "vector"

    .prologue
    .line 339
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 340
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 342
    return-void
.end method

.method public writeUint16(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 290
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 291
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 292
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    return-void
.end method

.method public writeUint24(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 300
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 301
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 302
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 304
    return-void
.end method

.method public writeUint32(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 311
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 312
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 313
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 314
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 315
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 316
    return-void
.end method

.method public writeUint64(J)V
    .registers 9
    .parameter "n"

    .prologue
    const/16 v5, 0x8

    .line 323
    invoke-direct {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 324
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 325
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, 0xff

    and-long/2addr v2, p1

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 326
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 327
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p1

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 328
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 329
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 330
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    shr-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    return-void
.end method

.method public writeUint8(J)V
    .registers 7
    .parameter "n"

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 282
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 283
    return-void
.end method
