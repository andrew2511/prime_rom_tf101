.class public Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;
.super Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.source "ConnectionStateTLS.java"


# static fields
.field private static CLIENT_WRITE_KEY_LABEL:[B

.field private static IV_BLOCK_LABEL:[B

.field private static KEY_EXPANSION_LABEL:[B

.field private static SERVER_WRITE_KEY_LABEL:[B


# instance fields
.field private final decMac:Ljavax/crypto/Mac;

.field private final encMac:Ljavax/crypto/Mac;

.field private final mac_material_header:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 40
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->KEY_EXPANSION_LABEL:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_30

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->CLIENT_WRITE_KEY_LABEL:[B

    .line 53
    new-array v0, v1, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->SERVER_WRITE_KEY_LABEL:[B

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_48

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->IV_BLOCK_LABEL:[B

    return-void

    .line 40
    nop

    :array_24
    .array-data 0x1
        0x6bt
        0x65t
        0x79t
        0x20t
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x73t
        0x69t
        0x6ft
        0x6et
    .end array-data

    .line 46
    nop

    :array_30
    .array-data 0x1
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    .line 53
    :array_3c
    .array-data 0x1
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    .line 60
    :array_48
    .array-data 0x1
        0x49t
        0x56t
        0x20t
        0x62t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .registers 32
    .parameter "session"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;-><init>()V

    .line 72
    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_54a

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    .line 85
    :try_start_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object v6, v0

    .line 87
    .local v6, cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getMACLength()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    .line 88
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isExportable()Z

    move-result v15

    .line 89
    .local v15, is_exportabe:Z
    if-eqz v15, :cond_407

    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyMaterial:I

    move/from16 v26, v0

    move/from16 v19, v26

    .line 92
    .local v19, key_size:I
    :goto_30
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->ivSize:I

    move/from16 v17, v0

    .line 93
    .local v17, iv_size:I
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    .line 95
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBulkEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, algName:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getHmacName()Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, macName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13d

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "ConnectionStateTLS.create:"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  cipher suite name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  encryption alg name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  mac alg name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  hash size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  block size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  IV size:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  key size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 109
    :cond_13d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    move-object v8, v0

    .line 110
    .local v8, clientRandom:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v23, v0

    .line 113
    .local v23, serverRandom:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    mul-int/lit8 v27, v19, 0x2

    add-int v26, v26, v27

    mul-int/lit8 v27, v17, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 114
    .local v18, key_block:[B
    move-object v0, v8

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 115
    .local v21, seed:[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    const/16 v26, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v28, v0

    move-object v0, v8

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v26, v0

    sget-object v27, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->KEY_EXPANSION_LABEL:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v10, v0

    .line 123
    .local v10, client_mac_secret:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 124
    .local v25, server_mac_secret:[B
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v9, v0

    .line 125
    .local v9, client_key:[B
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 127
    .local v24, server_key:[B
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    move/from16 v26, v0

    if-nez v26, :cond_410

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 129
    .local v14, is_client:Z
    :goto_1dd
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object v2, v10

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v25

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object v2, v9

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    add-int v26, v26, v19

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, clientIV:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v22, 0x0

    .line 139
    .local v22, serverIV:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v15, :cond_416

    .line 140
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v28, v0

    move-object v0, v8

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/16 v26, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v12, v0

    .line 146
    .local v12, final_client_key:[B
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object v13, v0

    .line 148
    .local v13, final_server_key:[B
    sget-object v26, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->CLIENT_WRITE_KEY_LABEL:[B

    move-object v0, v12

    move-object v1, v9

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    .line 150
    sget-object v26, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->SERVER_WRITE_KEY_LABEL:[B

    move-object v0, v13

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    .line 152
    move-object v9, v12

    .line 153
    move-object/from16 v24, v13

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    move/from16 v26, v0

    if-eqz v26, :cond_2d6

    .line 155
    mul-int/lit8 v26, v17, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 156
    .local v16, iv_block:[B
    const/16 v26, 0x0

    sget-object v27, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->IV_BLOCK_LABEL:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    .line 157
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v26, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 158
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v22, Ljavax/crypto/spec/IvParameterSpec;

    .end local v22           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 167
    .end local v12           #final_client_key:[B
    .end local v13           #final_server_key:[B
    .end local v16           #iv_block:[B
    .restart local v22       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_2d6
    :goto_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3b1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "is exportable: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "master_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_random"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_random"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_mac_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_mac_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_key"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_key"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 185
    if-nez v7, :cond_44f

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "no IV."

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 195
    :cond_3b1
    :goto_3b1
    if-nez v5, :cond_496

    .line 196
    new-instance v26, Ljavax/crypto/NullCipher;

    invoke-direct/range {v26 .. v26}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    .line 197
    new-instance v26, Ljavax/crypto/NullCipher;

    invoke-direct/range {v26 .. v26}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decCipher:Ljavax/crypto/Cipher;

    .line 214
    :goto_3c9
    invoke-static/range {v20 .. v20}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    .line 215
    invoke-static/range {v20 .. v20}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    .line 216
    if-eqz v14, :cond_520

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 229
    :goto_406
    return-void

    .line 89
    .end local v5           #algName:Ljava/lang/String;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v14           #is_client:Z
    .end local v17           #iv_size:I
    .end local v18           #key_block:[B
    .end local v19           #key_size:I
    .end local v20           #macName:Ljava/lang/String;
    .end local v21           #seed:[B
    .end local v22           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v23           #serverRandom:[B
    .end local v24           #server_key:[B
    .end local v25           #server_mac_secret:[B
    :cond_407
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v26, v0

    move/from16 v19, v26

    goto/16 :goto_30

    .line 127
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v17       #iv_size:I
    .restart local v18       #key_block:[B
    .restart local v19       #key_size:I
    .restart local v20       #macName:Ljava/lang/String;
    .restart local v21       #seed:[B
    .restart local v23       #serverRandom:[B
    .restart local v24       #server_key:[B
    .restart local v25       #server_mac_secret:[B
    :cond_410
    const/16 v26, 0x0

    move/from16 v14, v26

    goto/16 :goto_1dd

    .line 160
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v14       #is_client:Z
    .restart local v22       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_416
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    move/from16 v26, v0

    if-eqz v26, :cond_2d6

    .line 161
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    add-int v26, v26, v19

    mul-int/lit8 v26, v26, 0x2

    move-object v0, v7

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 163
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v22, Ljavax/crypto/spec/IvParameterSpec;

    .end local v22           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    move/from16 v26, v0

    add-int v26, v26, v19

    mul-int/lit8 v26, v26, 0x2

    add-int v26, v26, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .restart local v22       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_2d6

    .line 188
    :cond_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_iv"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_iv"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V
    :try_end_47f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47f} :catch_481

    goto/16 :goto_3b1

    .line 223
    .end local v5           #algName:Ljava/lang/String;
    .end local v6           #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v14           #is_client:Z
    .end local v15           #is_exportabe:Z
    .end local v17           #iv_size:I
    .end local v18           #key_block:[B
    .end local v19           #key_size:I
    .end local v20           #macName:Ljava/lang/String;
    .end local v21           #seed:[B
    .end local v22           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v23           #serverRandom:[B
    .end local v24           #server_key:[B
    .end local v25           #server_mac_secret:[B
    :catch_481
    move-exception v26

    move-object/from16 v11, v26

    .line 224
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    new-instance v26, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v27, 0x50

    new-instance v28, Ljavax/net/ssl/SSLProtocolException;

    const-string v29, "Error during computation of security parameters"

    invoke-direct/range {v28 .. v29}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v26 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v26

    .line 199
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v6       #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v14       #is_client:Z
    .restart local v15       #is_exportabe:Z
    .restart local v17       #iv_size:I
    .restart local v18       #key_block:[B
    .restart local v19       #key_size:I
    .restart local v20       #macName:Ljava/lang/String;
    .restart local v21       #seed:[B
    .restart local v22       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v23       #serverRandom:[B
    .restart local v24       #server_key:[B
    .restart local v25       #server_mac_secret:[B
    :cond_496
    :try_start_496
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    .line 200
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decCipher:Ljavax/crypto/Cipher;

    .line 201
    if-eqz v14, :cond_4e6

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object v1, v9

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_3c9

    .line 207
    :cond_4e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object v1, v9

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_3c9

    .line 220
    :cond_520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_547
    .catch Ljava/lang/Exception; {:try_start_496 .. :try_end_547} :catch_481

    goto/16 :goto_406

    .line 72
    nop

    :array_54a
    .array-data 0x1
        0x0t
        0x3t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected decrypt(B[BII)[B
    .registers 15
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 302
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v1

    .line 305
    .local v1, data:[B
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    if-eqz v5, :cond_a1

    .line 307
    array-length v5, v1

    sub-int/2addr v5, v7

    aget-byte v4, v1, v5

    .line 308
    .local v4, padding_length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v4, :cond_2d

    .line 309
    array-length v5, v1

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    aget-byte v5, v1, v5

    if-eq v5, v4, :cond_2a

    .line 310
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x15

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Received message has bad padding"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 308
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 316
    :cond_2d
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, v7

    new-array v0, v5, [B

    .line 321
    .end local v2           #i:I
    .end local v4           #padding_length:I
    .local v0, content:[B
    :goto_35
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    aput-byte p1, v5, v9

    .line 322
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x3

    const v7, 0xff00

    array-length v8, v0

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 323
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x4

    array-length v7, v0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 325
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->read_seq_num:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 326
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 327
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    array-length v6, v0

    invoke-virtual {v5, v1, v9, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 328
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    .line 329
    .local v3, mac_value:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_85

    .line 330
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Decrypted:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 331
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 336
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Expected mac value:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 340
    :cond_85
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_86
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    if-ge v2, v5, :cond_ab

    .line 341
    aget-byte v5, v3, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v1, v6

    if-eq v5, v6, :cond_a8

    .line 342
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x14

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Bad record MAC"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 318
    .end local v0           #content:[B
    .end local v2           #i:I
    .end local v3           #mac_value:[B
    :cond_a1
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    sub-int/2addr v5, v6

    new-array v0, v5, [B

    .restart local v0       #content:[B
    goto :goto_35

    .line 340
    .restart local v2       #i:I
    .restart local v3       #mac_value:[B
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 346
    :cond_ab
    array-length v5, v0

    invoke-static {v1, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->read_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->incSequenceNumber([B)V

    .line 348
    return-object v0
.end method

.method protected encrypt(B[BII)[B
    .registers 14
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 239
    :try_start_1
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->hash_size:I

    add-int v0, p4, v5

    .line 240
    .local v0, content_mac_length:I
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    if-nez v5, :cond_a3

    move v2, v6

    .line 241
    .local v2, padding_length:I
    :goto_a
    add-int v5, v0, v2

    new-array v3, v5, [B

    .line 242
    .local v3, res:[B
    const/4 v5, 0x0

    invoke-static {p2, p3, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x0

    aput-byte p1, v5, v6

    .line 245
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x3

    const v7, 0xff00

    and-int/2addr v7, p4

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 246
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x4

    and-int/lit16 v7, p4, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 248
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->write_seq_num:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 249
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 250
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Mac;->update([BII)V

    .line 251
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    invoke-virtual {v5, v3, p4}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 260
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    if-eqz v5, :cond_4f

    .line 262
    const/4 v5, 0x1

    sub-int v5, v0, v5

    array-length v6, v3

    int-to-byte v7, v2

    invoke-static {v3, v5, v6, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 265
    :cond_4f
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_8d

    .line 266
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSLRecordProtocol.do_encryption: Generic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->block_size:I

    if-eqz v7, :cond_ac

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockCipher with padding["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 270
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 272
    :cond_8d
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    new-array v4, v5, [B

    .line 282
    .local v4, rez:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encCipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v5, v3, v6, v7, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 283
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->write_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->incSequenceNumber([B)V

    .line 284
    return-object v4

    .line 240
    .end local v2           #padding_length:I
    .end local v3           #res:[B
    .end local v4           #rez:[B
    :cond_a3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->getPaddingSize(I)I

    move-result v5

    move v2, v5

    goto/16 :goto_a

    .line 266
    .restart local v2       #padding_length:I
    .restart local v3       #res:[B
    :cond_ac
    const-string v7, "StreamCipher:"
    :try_end_ae
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_ae} :catch_af

    goto :goto_7d

    .line 285
    .end local v0           #content_mac_length:I
    .end local v2           #padding_length:I
    .end local v3           #res:[B
    :catch_af
    move-exception v5

    move-object v1, v5

    .line 286
    .local v1, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 287
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x50

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Error during the encryption"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5
.end method
