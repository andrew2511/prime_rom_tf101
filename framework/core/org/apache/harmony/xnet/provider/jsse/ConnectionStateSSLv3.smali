.class public Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;
.super Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.source "ConnectionStateSSLv3.java"


# instance fields
.field private final mac_material_part:[B

.field private final mac_read_secret:[B

.field private final mac_write_secret:[B

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final pad_1:[B

.field private final pad_2:[B


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .registers 30
    .parameter "session"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;-><init>()V

    .line 50
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    .line 63
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object v6, v0

    .line 65
    .local v6, cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isExportable()Z

    move-result v14

    .line 66
    .local v14, is_exportabe:Z
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getMACLength()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    .line 67
    if-eqz v14, :cond_41f

    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyMaterial:I

    move/from16 v24, v0

    move/from16 v17, v24

    .line 70
    .local v17, key_size:I
    :goto_2d
    iget v15, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->ivSize:I

    .line 71
    .local v15, iv_size:I
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    .line 73
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBulkEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, algName:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getHashName()Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, hashName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_135

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3.create:"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  cipher suite name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  encryption alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  block size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  IV size:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  key size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 87
    :cond_135
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    move-object v8, v0

    .line 88
    .local v8, clientRandom:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v21, v0

    .line 91
    .local v21, serverRandom:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    mul-int/lit8 v25, v15, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 92
    .local v16, key_block:[B
    move-object v0, v8

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 93
    .local v19, seed:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/16 v24, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v26, v0

    move-object v0, v8

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF_SSLv3([B[B[B)V

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v10, v0

    .line 100
    .local v10, client_mac_secret:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 101
    .local v23, server_mac_secret:[B
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v9, v0

    .line 102
    .local v9, client_key:[B
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 104
    .local v22, server_key:[B
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    move/from16 v24, v0

    if-nez v24, :cond_428

    const/16 v24, 0x1

    move/from16 v13, v24

    .line 106
    .local v13, is_client:Z
    :goto_1d1
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object v2, v10

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object v2, v9

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v24, v24, v17

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, clientIV:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x0

    .line 116
    .local v20, serverIV:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v14, :cond_42e

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_249

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3: is_exportable"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 121
    :cond_249
    const-string v24, "MD5"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    .line 122
    .local v18, md5:Ljava/security/MessageDigest;
    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 124
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 127
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 128
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    .line 132
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v17, v0

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    move/from16 v24, v0

    if-eqz v24, :cond_2c8

    .line 135
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object v0, v7

    move-object/from16 v1, v24

    move/from16 v2, v25

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 138
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 139
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 149
    .end local v18           #md5:Ljava/security/MessageDigest;
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_2c8
    :goto_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3d4

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "is exportable: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "master_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v9

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 167
    if-eqz v7, :cond_469

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 177
    :cond_3d4
    :goto_3d4
    if-nez v5, :cond_48b

    .line 178
    new-instance v24, Ljavax/crypto/NullCipher;

    invoke-direct/range {v24 .. v24}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    .line 179
    new-instance v24, Ljavax/crypto/NullCipher;

    invoke-direct/range {v24 .. v24}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    .line 200
    :goto_3ec
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    .line 201
    if-eqz v13, :cond_52d

    .line 202
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    .line 203
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    .line 208
    :goto_403
    const-string v24, "MD5"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_53a

    .line 209
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    .line 210
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    .line 221
    :goto_41e
    return-void

    .line 67
    .end local v5           #algName:Ljava/lang/String;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v12           #hashName:Ljava/lang/String;
    .end local v13           #is_client:Z
    .end local v15           #iv_size:I
    .end local v16           #key_block:[B
    .end local v17           #key_size:I
    .end local v19           #seed:[B
    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v21           #serverRandom:[B
    .end local v22           #server_key:[B
    .end local v23           #server_mac_secret:[B
    :cond_41f
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v24, v0

    move/from16 v17, v24

    goto/16 :goto_2d

    .line 104
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v12       #hashName:Ljava/lang/String;
    .restart local v15       #iv_size:I
    .restart local v16       #key_block:[B
    .restart local v17       #key_size:I
    .restart local v19       #seed:[B
    .restart local v21       #serverRandom:[B
    .restart local v22       #server_key:[B
    .restart local v23       #server_mac_secret:[B
    :cond_428
    const/16 v24, 0x0

    move/from16 v13, v24

    goto/16 :goto_1d1

    .line 142
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v13       #is_client:Z
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_42e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    move/from16 v24, v0

    if-eqz v24, :cond_2c8

    .line 143
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v24

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 145
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    add-int v24, v24, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v24

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_2c8

    .line 173
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "no IV."

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_474
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_474} :catch_476

    goto/16 :goto_3d4

    .line 215
    .end local v5           #algName:Ljava/lang/String;
    .end local v6           #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v12           #hashName:Ljava/lang/String;
    .end local v13           #is_client:Z
    .end local v14           #is_exportabe:Z
    .end local v15           #iv_size:I
    .end local v16           #key_block:[B
    .end local v17           #key_size:I
    .end local v19           #seed:[B
    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v21           #serverRandom:[B
    .end local v22           #server_key:[B
    .end local v23           #server_mac_secret:[B
    :catch_476
    move-exception v24

    move-object/from16 v11, v24

    .line 216
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v25, 0x50

    new-instance v26, Ljavax/net/ssl/SSLProtocolException;

    const-string v27, "Error during computation of security parameters"

    invoke-direct/range {v26 .. v27}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v26}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v24

    .line 181
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v6       #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v12       #hashName:Ljava/lang/String;
    .restart local v13       #is_client:Z
    .restart local v14       #is_exportabe:Z
    .restart local v15       #iv_size:I
    .restart local v16       #key_block:[B
    .restart local v17       #key_size:I
    .restart local v19       #seed:[B
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v21       #serverRandom:[B
    .restart local v22       #server_key:[B
    .restart local v23       #server_mac_secret:[B
    :cond_48b
    :try_start_48b
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    .line 182
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    .line 183
    if-eqz v13, :cond_4e7

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object v1, v9

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_3ec

    .line 191
    :cond_4e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object v1, v9

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_3ec

    .line 205
    :cond_52d
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    .line 206
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    goto/16 :goto_403

    .line 212
    :cond_53a
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    .line 213
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_48b .. :try_end_54a} :catch_476

    goto/16 :goto_41e
.end method


# virtual methods
.method protected decrypt(B[BII)[B
    .registers 16
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 292
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v1

    .line 295
    .local v1, data:[B
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    if-eqz v5, :cond_c6

    .line 297
    array-length v5, v1

    sub-int/2addr v5, v9

    aget-byte v4, v1, v5

    .line 298
    .local v4, padding_length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v4, :cond_2d

    .line 299
    array-length v5, v1

    sub-int/2addr v5, v10

    sub-int/2addr v5, v2

    aget-byte v5, v1, v5

    if-eq v5, v4, :cond_2a

    .line 300
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x15

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Received message has bad padding"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 298
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 306
    :cond_2d
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, v9

    new-array v0, v5, [B

    .line 313
    .end local v2           #i:I
    .end local v4           #padding_length:I
    .local v0, content:[B
    :goto_35
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    aput-byte p1, v5, v8

    .line 314
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const v6, 0xff00

    array-length v7, v0

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    .line 315
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    array-length v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v10

    .line 317
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->read_seq_num:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 321
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    array-length v6, v0

    invoke-virtual {v5, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 322
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 323
    .local v3, mac_value:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 324
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 325
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 326
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 328
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_aa

    .line 329
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Decrypted:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 330
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 335
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Expected mac value:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 339
    :cond_aa
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_ab
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    if-ge v2, v5, :cond_d1

    .line 340
    aget-byte v5, v3, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v1, v6

    if-eq v5, v6, :cond_ce

    .line 341
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x14

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Bad record MAC"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 308
    .end local v0           #content:[B
    .end local v2           #i:I
    .end local v3           #mac_value:[B
    :cond_c6
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    sub-int/2addr v5, v6

    new-array v0, v5, [B

    .restart local v0       #content:[B
    goto/16 :goto_35

    .line 339
    .restart local v2       #i:I
    .restart local v3       #mac_value:[B
    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 345
    :cond_d1
    array-length v5, v0

    invoke-static {v1, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->read_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    .line 347
    return-object v0
.end method

.method protected encrypt(B[BII)[B
    .registers 15
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 231
    :try_start_2
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    add-int v0, p4, v6

    .line 232
    .local v0, content_mac_length:I
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    if-nez v6, :cond_d1

    move v3, v7

    .line 233
    .local v3, padding_length:I
    :goto_b
    add-int v6, v0, v3

    new-array v4, v6, [B

    .line 234
    .local v4, res:[B
    const/4 v6, 0x0

    invoke-static {p2, p3, v4, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x0

    aput-byte p1, v6, v7

    .line 237
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x1

    const v8, 0xff00

    and-int/2addr v8, p4

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 238
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x2

    and-int/lit16 v8, p4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 240
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 242
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->write_seq_num:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 243
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 244
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    .line 245
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 246
    .local v1, digest:[B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 248
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 249
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 250
    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    invoke-static {v1, v6, v4, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    if-eqz v6, :cond_7d

    .line 261
    sub-int v6, v0, v9

    array-length v7, v4

    int-to-byte v8, v3

    invoke-static {v4, v6, v7, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 264
    :cond_7d
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_bb

    .line 265
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSLRecordProtocol.encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->block_size:I

    if-eqz v8, :cond_da

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenericBlockCipher with padding["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_ab
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v6, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 272
    :cond_bb
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v6

    new-array v5, v6, [B

    .line 273
    .local v5, rez:[B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 274
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->write_seq_num:[B

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    .line 275
    return-object v5

    .line 232
    .end local v1           #digest:[B
    .end local v3           #padding_length:I
    .end local v4           #res:[B
    .end local v5           #rez:[B
    :cond_d1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->getPaddingSize(I)I

    move-result v6

    move v3, v6

    goto/16 :goto_b

    .line 265
    .restart local v1       #digest:[B
    .restart local v3       #padding_length:I
    .restart local v4       #res:[B
    :cond_da
    const-string v8, "GenericStreamCipher:"
    :try_end_dc
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_dc} :catch_dd

    goto :goto_ab

    .line 276
    .end local v0           #content_mac_length:I
    .end local v1           #digest:[B
    .end local v3           #padding_length:I
    .end local v4           #res:[B
    :catch_dd
    move-exception v6

    move-object v2, v6

    .line 277
    .local v2, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 278
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    const-string v9, "Error during the encryption"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6
.end method

.method protected shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 357
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 358
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 359
    return-void
.end method
