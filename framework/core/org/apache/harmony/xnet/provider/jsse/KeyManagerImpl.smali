.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .registers 8
    .parameter "keyStore"
    .parameter "pwd"

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 62
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    .line 65
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_d} :catch_36

    move-result-object v1

    .line 69
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, alias:Ljava/lang/String;
    :try_start_1a
    const-class v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 73
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v4, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 75
    .local v3, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_32} :catch_33
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1a .. :try_end_32} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_32} :catch_3b

    goto :goto_e

    .line 77
    .end local v3           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_33
    move-exception v4

    move-object v2, v4

    .line 78
    .local v2, e:Ljava/security/KeyStoreException;
    goto :goto_e

    .line 66
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #e:Ljava/security/KeyStoreException;
    :catch_36
    move-exception v2

    .line 85
    :cond_37
    return-void

    .line 79
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_38
    move-exception v4

    move-object v2, v4

    .line 80
    .local v2, e:Ljava/security/UnrecoverableEntryException;
    goto :goto_e

    .line 81
    .end local v2           #e:Ljava/security/UnrecoverableEntryException;
    :catch_3b
    move-exception v4

    move-object v2, v4

    .line 82
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_e
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 28
    .parameter "keyTypes"
    .parameter "issuers"

    .prologue
    .line 150
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 151
    :cond_9
    const/16 v24, 0x0

    .line 221
    .end local p0
    :goto_b
    return-object v24

    .line 153
    .restart local p0
    :cond_c
    if-nez p2, :cond_74

    const/16 v24, 0x0

    move-object/from16 v18, v24

    .line 154
    .local v18, issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    :goto_12
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 155
    .local v13, found:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_21
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_fa

    .line 156
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 158
    .local v12, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v12}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 159
    .local v11, chain:[Ljava/security/cert/Certificate;
    const/16 v24, 0x0

    aget-object v7, v11, v24

    .line 160
    .local v7, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, certKeyAlg:Ljava/lang/String;
    move-object v0, v7

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v24, v0

    if-eqz v24, :cond_7b

    check-cast v7, Ljava/security/cert/X509Certificate;

    .end local v7           #cert:Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    .line 164
    .local v10, certSigAlg:Ljava/lang/String;
    :goto_5f
    move-object/from16 v5, p1

    .local v5, arr$:[Ljava/lang/String;
    move-object v0, v5

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v15, v14

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v20           #len$:I
    .local v15, i$:I
    :goto_67
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    aget-object v19, v5, v15

    .line 165
    .local v19, keyAlgorithm:Ljava/lang/String;
    if-nez v19, :cond_80

    .line 164
    .end local v15           #i$:I
    :cond_70
    :goto_70
    add-int/lit8 v14, v15, 0x1

    .restart local v14       #i$:I
    move v15, v14

    .end local v14           #i$:I
    .restart local v15       #i$:I
    goto :goto_67

    .line 153
    .end local v3           #alias:Ljava/lang/String;
    .end local v4           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #certKeyAlg:Ljava/lang/String;
    .end local v10           #certSigAlg:Ljava/lang/String;
    .end local v11           #chain:[Ljava/security/cert/Certificate;
    .end local v12           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v13           #found:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v15           #i$:I
    .end local v18           #issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    .end local v19           #keyAlgorithm:Ljava/lang/String;
    :cond_74
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v18, v24

    goto :goto_12

    .line 161
    .restart local v3       #alias:Ljava/lang/String;
    .restart local v4       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v7       #cert:Ljava/security/cert/Certificate;
    .restart local v9       #certKeyAlg:Ljava/lang/String;
    .restart local v11       #chain:[Ljava/security/cert/Certificate;
    .restart local v12       #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v13       #found:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v18       #issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    :cond_7b
    const/16 v24, 0x0

    move-object/from16 v10, v24

    goto :goto_5f

    .line 170
    .end local v7           #cert:Ljava/security/cert/Certificate;
    .restart local v10       #certSigAlg:Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v19       #keyAlgorithm:Ljava/lang/String;
    :cond_80
    const/16 v24, 0x5f

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 171
    .local v16, index:I
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_b5

    .line 172
    move-object/from16 v22, v19

    .line 178
    .local v22, sigAlgorithm:Ljava/lang/String;
    :goto_94
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_70

    .line 188
    if-eqz v10, :cond_a8

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_70

    .line 192
    :cond_a8
    if-eqz p2, :cond_b1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_cc

    .line 193
    :cond_b1
    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 174
    .end local v22           #sigAlgorithm:Ljava/lang/String;
    :cond_b5
    add-int/lit8 v24, v16, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 175
    .restart local v22       #sigAlgorithm:Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_94

    .line 197
    :cond_cc
    move-object v6, v11

    .local v6, arr$:[Ljava/security/cert/Certificate;
    move-object v0, v6

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v14, 0x0

    .end local v15           #i$:I
    .restart local v14       #i$:I
    :goto_d2
    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_70

    aget-object v8, v6, v14

    .line 198
    .local v8, certFromChain:Ljava/security/cert/Certificate;
    move-object v0, v8

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v24, v0

    if-nez v24, :cond_e3

    .line 197
    :cond_e0
    :goto_e0
    add-int/lit8 v14, v14, 0x1

    goto :goto_d2

    .line 202
    :cond_e3
    move-object v0, v8

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    .line 211
    .local v23, xcertFromChain:Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v17

    .line 212
    .local v17, issuerFromChain:Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e0

    .line 213
    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    .line 218
    .end local v3           #alias:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/security/cert/Certificate;
    .end local v8           #certFromChain:Ljava/security/cert/Certificate;
    .end local v9           #certKeyAlg:Ljava/lang/String;
    .end local v10           #certSigAlg:Ljava/lang/String;
    .end local v11           #chain:[Ljava/security/cert/Certificate;
    .end local v12           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v14           #i$:I
    .end local v16           #index:I
    .end local v17           #issuerFromChain:Ljavax/security/auth/x500/X500Principal;
    .end local v19           #keyAlgorithm:Ljava/lang/String;
    .end local v21           #len$:I
    .end local v22           #sigAlgorithm:Ljava/lang/String;
    .end local v23           #xcertFromChain:Ljava/security/cert/X509Certificate;
    :cond_fa
    invoke-virtual {v13}, Ljava/util/Vector;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_117

    .line 219
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object/from16 v24, p0

    goto/16 :goto_b

    .line 221
    .restart local p0
    :cond_117
    const/16 v24, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v2

    goto :goto_d
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    const/4 v2, 0x0

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v2

    goto :goto_d
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "alias"

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p1, :cond_5

    move-object v3, v4

    .line 113
    .end local p0
    :goto_4
    return-object v3

    .line 103
    .restart local p0
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 104
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 105
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_32

    .line 106
    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 107
    .local v2, xcerts:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 108
    aget-object p0, v0, v1

    check-cast p0, Ljava/security/cert/X509Certificate;

    aput-object p0, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    move-object v3, v2

    .line 110
    goto :goto_4

    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v1           #i:I
    .end local v2           #xcerts:[Ljava/security/cert/X509Certificate;
    :cond_32
    move-object v3, v4

    .line 113
    goto :goto_4
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "alias"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_5

    move-object v0, v1

    .line 134
    .end local p0
    :goto_4
    return-object v0

    .line 131
    .restart local p0
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_4

    .restart local p0
    :cond_1a
    move-object v0, v1

    .line 134
    goto :goto_4
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
