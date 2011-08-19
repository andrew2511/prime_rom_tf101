.class Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
.super Ljava/lang/Object;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 16
    .parameter
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "certChain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 133
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 136
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 138
    .local v4, salt:[B
    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 139
    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 144
    .local v5, iterationCount:I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v6, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v9, dOut:Ljava/io/DataOutputStream;
    array-length v0, v4

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 152
    .local v8, cipher:Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 154
    .local v7, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    .end local v9           #dOut:Ljava/io/DataOutputStream;
    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .restart local v9       #dOut:Ljava/io/DataOutputStream;
    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {p1, p3, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 158
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 160
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter
    .parameter "alias"
    .parameter "obj"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 109
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "alias"
    .parameter "date"
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 169
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 171
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 172
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter
    .parameter "alias"
    .parameter "date"
    .parameter "type"
    .parameter "obj"
    .parameter "certChain"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 182
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 184
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 185
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 186
    iput-object p6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 187
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter
    .parameter "alias"
    .parameter "obj"
    .parameter "certChain"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 120
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 122
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 123
    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .registers 25
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-nez v3, :cond_17

    .line 210
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object v3, v0

    instance-of v3, v3, Ljava/security/Key;

    if-eqz v3, :cond_17

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object v3, v0

    .line 299
    :goto_16
    return-object v3

    .line 216
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_16c

    .line 218
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    .local v9, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v15, dIn:Ljava/io/DataInputStream;
    :try_start_32
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v7, v3, [B

    .line 225
    .local v7, salt:[B
    invoke-virtual {v15, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 229
    .local v8, iterationCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v14

    .line 231
    .local v14, cipher:Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/CipherInputStream;

    invoke-direct {v12, v15, v14}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_52} :catch_161

    .line 235
    .local v12, cIn:Ljavax/crypto/CipherInputStream;
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_61

    move-result-object v3

    goto :goto_16

    .line 237
    :catch_61
    move-exception v3

    move-object/from16 v21, v3

    .line 239
    .local v21, x:Ljava/lang/Exception;
    :try_start_64
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_161

    .line 240
    .end local v9           #bIn:Ljava/io/ByteArrayInputStream;
    .local v10, bIn:Ljava/io/ByteArrayInputStream;
    :try_start_72
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_174

    .line 242
    .end local v15           #dIn:Ljava/io/DataInputStream;
    .local v16, dIn:Ljava/io/DataInputStream;
    :try_start_7a
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v7, v3, [B

    .line 244
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    const-string v4, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v14

    .line 250
    new-instance v12, Ljavax/crypto/CipherInputStream;

    .end local v12           #cIn:Ljavax/crypto/CipherInputStream;
    move-object v0, v12

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a1} :catch_179

    .line 252
    .restart local v12       #cIn:Ljavax/crypto/CipherInputStream;
    const/16 v19, 0x0

    .line 256
    .local v19, k:Ljava/security/Key;
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b0} :catch_113

    move-result-object v19

    move-object/from16 v15, v16

    .end local v16           #dIn:Ljava/io/DataInputStream;
    .restart local v15       #dIn:Ljava/io/DataInputStream;
    move-object v9, v10

    .line 279
    .end local v10           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v9       #bIn:Ljava/io/ByteArrayInputStream;
    :goto_b4
    if-eqz v19, :cond_159

    .line 281
    :try_start_b6
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v11, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    .local v17, dOut:Ljava/io/DataOutputStream;
    array-length v3, v7

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v20

    .line 289
    .local v20, out:Ljavax/crypto/Cipher;
    new-instance v13, Ljavax/crypto/CipherOutputStream;

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 291
    .local v13, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v17, Ljava/io/DataOutputStream;

    .end local v17           #dOut:Ljava/io/DataOutputStream;
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    .restart local v17       #dOut:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 295
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V

    .line 297
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_10f} :catch_161

    move-object/from16 v3, v19

    .line 299
    goto/16 :goto_16

    .line 258
    .end local v9           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v11           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v13           #cOut:Ljavax/crypto/CipherOutputStream;
    .end local v15           #dIn:Ljava/io/DataInputStream;
    .end local v17           #dOut:Ljava/io/DataOutputStream;
    .end local v20           #out:Ljavax/crypto/Cipher;
    .restart local v10       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v16       #dIn:Ljava/io/DataInputStream;
    :catch_113
    move-exception v3

    move-object/from16 v22, v3

    .line 260
    .local v22, y:Ljava/lang/Exception;
    :try_start_116
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_124} :catch_179

    .line 261
    .end local v10           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v9       #bIn:Ljava/io/ByteArrayInputStream;
    :try_start_124
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_129} :catch_180

    .line 263
    .end local v16           #dIn:Ljava/io/DataInputStream;
    .restart local v15       #dIn:Ljava/io/DataInputStream;
    :try_start_129
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v7, v3, [B

    .line 265
    invoke-virtual {v15, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    const-string v4, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v14

    .line 271
    new-instance v12, Ljavax/crypto/CipherInputStream;

    .end local v12           #cIn:Ljavax/crypto/CipherInputStream;
    invoke-direct {v12, v15, v14}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 273
    .restart local v12       #cIn:Ljavax/crypto/CipherInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object v3, v0

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v19

    goto/16 :goto_b4

    .line 303
    .end local v22           #y:Ljava/lang/Exception;
    :cond_159
    new-instance v3, Ljava/security/UnrecoverableKeyException;

    const-string v4, "no match"

    invoke-direct {v3, v4}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_161} :catch_161

    .line 307
    .end local v7           #salt:[B
    .end local v8           #iterationCount:I
    .end local v12           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v14           #cipher:Ljavax/crypto/Cipher;
    .end local v19           #k:Ljava/security/Key;
    .end local v21           #x:Ljava/lang/Exception;
    :catch_161
    move-exception v3

    move-object/from16 v18, v3

    .line 309
    .local v18, e:Ljava/lang/Exception;
    :goto_164
    new-instance v3, Ljava/security/UnrecoverableKeyException;

    const-string v4, "no match"

    invoke-direct {v3, v4}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    .end local v9           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v15           #dIn:Ljava/io/DataInputStream;
    .end local v18           #e:Ljava/lang/Exception;
    :cond_16c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "forget something!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .restart local v7       #salt:[B
    .restart local v8       #iterationCount:I
    .restart local v10       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v12       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v14       #cipher:Ljavax/crypto/Cipher;
    .restart local v15       #dIn:Ljava/io/DataInputStream;
    .restart local v21       #x:Ljava/lang/Exception;
    :catch_174
    move-exception v3

    move-object/from16 v18, v3

    move-object v9, v10

    .end local v10           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v9       #bIn:Ljava/io/ByteArrayInputStream;
    goto :goto_164

    .end local v9           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v12           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v15           #dIn:Ljava/io/DataInputStream;
    .restart local v10       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v16       #dIn:Ljava/io/DataInputStream;
    :catch_179
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v15, v16

    .end local v16           #dIn:Ljava/io/DataInputStream;
    .restart local v15       #dIn:Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v9       #bIn:Ljava/io/ByteArrayInputStream;
    goto :goto_164

    .end local v15           #dIn:Ljava/io/DataInputStream;
    .restart local v12       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v16       #dIn:Ljava/io/DataInputStream;
    .restart local v19       #k:Ljava/security/Key;
    .restart local v22       #y:Ljava/lang/Exception;
    :catch_180
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v15, v16

    .end local v16           #dIn:Ljava/io/DataInputStream;
    .restart local v15       #dIn:Ljava/io/DataInputStream;
    goto :goto_164
.end method

.method getType()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    return v0
.end method
