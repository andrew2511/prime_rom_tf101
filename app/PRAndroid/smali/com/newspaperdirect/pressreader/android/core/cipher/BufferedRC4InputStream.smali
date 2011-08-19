.class public Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;
.super Ljava/io/BufferedInputStream;
.source "BufferedRC4InputStream.java"


# instance fields
.field password:[B

.field rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 1
    .parameter "in"
    .parameter "size"
    .parameter "password"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 20
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;->password:[B

    .line 21
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    invoke-direct {v0, p3}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;-><init>([B)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;->rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter "in"
    .parameter "password"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;->password:[B

    .line 15
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    invoke-direct {v0, p2}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;-><init>([B)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;->rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .locals 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 27
    .local v6, count:I
    if-gtz v6, :cond_0

    .line 33
    :goto_0
    monitor-exit p0

    return v6

    .line 30
    :cond_0
    :try_start_1
    new-array v3, p3, [B

    .line 31
    .local v3, decrypted:[B
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/BufferedRC4InputStream;->rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->decrypt([BI[BII)V

    .line 32
    const/4 v0, 0x0

    invoke-static {v3, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    .end local v3           #decrypted:[B
    .end local v6           #count:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
