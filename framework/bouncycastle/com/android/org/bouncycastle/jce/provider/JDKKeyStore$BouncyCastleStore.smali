.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 17
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 932
    if-nez p1, :cond_8

    .line 998
    :cond_7
    return-void

    .line 937
    :cond_8
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 938
    .local v8, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 940
    .local v13, version:I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_1e

    .line 942
    if-eqz v13, :cond_1e

    .line 944
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wrong version of key store."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_1e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    .line 950
    .local v4, salt:[B
    array-length v0, v4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_31

    .line 952
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_31
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 957
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 959
    .local v5, iterationCount:I
    if-ltz v5, :cond_3e

    const/16 v0, 0x1000

    if-le v5, v0, :cond_46

    .line 961
    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_46
    if-nez v13, :cond_8a

    .line 967
    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    .line 974
    .local v1, cipherAlg:Ljava/lang/String;
    :goto_4a
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 975
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 978
    .local v6, cIn:Ljavax/crypto/CipherInputStream;
    new-instance v10, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    .line 980
    .local v10, dig:Lcom/android/org/bouncycastle/crypto/Digest;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 982
    .local v9, dgIn:Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 985
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 986
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 990
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    .line 991
    .local v12, oldHash:[B
    invoke-static {v6, v12}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 993
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 995
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 996
    new-instance v0, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    .end local v1           #cipherAlg:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    .end local v6           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v7           #cipher:Ljavax/crypto/Cipher;
    .end local v9           #dgIn:Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    .end local v10           #dig:Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v11           #hash:[B
    .end local v12           #oldHash:[B
    :cond_8a
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    .restart local v1       #cipherAlg:Ljava/lang/String;
    goto :goto_4a
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 15
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1005
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1006
    .local v8, dOut:Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 1007
    .local v4, salt:[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 1009
    .local v5, iterationCount:I
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1011
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1012
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1013
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1014
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1016
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1018
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1020
    .local v6, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v9, v6, v0}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1022
    .local v9, dgOut:Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1024
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v10

    .line 1025
    .local v10, dig:Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 1027
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1029
    invoke-virtual {v6, v11}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1031
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1032
    return-void
.end method
