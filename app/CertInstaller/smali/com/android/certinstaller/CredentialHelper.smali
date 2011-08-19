.class Lcom/android/certinstaller/CredentialHelper;
.super Ljava/lang/Object;
.source "CredentialHelper.java"


# instance fields
.field private mBundle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mWapiAsCert:[B

.field private mWapiUserCert:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 65
    const-string v5, ""

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, name:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 82
    if-eqz v4, :cond_1

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 84
    :cond_1
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# extras: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    .local v1, bytes:[B
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_2

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_2
    array-length v7, v1

    goto :goto_2

    .line 90
    .end local v1           #bytes:[B
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    const-string v5, "CERT"

    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_0
.end method

.method private varargs convertToPem([Ljava/lang/Object;)[B
    .locals 11
    .parameter "objects"

    .prologue
    .line 374
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v1, bao:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 376
    .local v6, osw:Ljava/io/OutputStreamWriter;
    new-instance v7, Lcom/android/org/bouncycastle/openssl/PEMWriter;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 377
    .local v7, pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, o:Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v5           #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->close()V

    .line 379
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 380
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .end local v7           #pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 382
    .local v2, e:Ljava/io/IOException;
    const-string v8, "CredentialHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertToPem(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private extractPkcs12Internal(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 333
    .local v3, keystore:Ljava/security/KeyStore;
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 335
    .local v4, passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "PKCS12"

    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 338
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 339
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 352
    :goto_0
    return v5

    .line 341
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    .line 344
    .local v2, entry:Ljava/security/KeyStore$Entry;
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extracted alias = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    instance-of v5, v2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v5, :cond_0

    .line 348
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 349
    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v2           #entry:Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CredentialHelper;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v5

    goto :goto_0

    .line 352
    .end local v0           #alias:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .locals 11
    .parameter "entry"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    iput-object v8, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    .line 357
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    iput-object v8, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 359
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 360
    .local v5, certs:[Ljava/security/cert/Certificate;
    const-string v8, "CredentialHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 363
    .local v3, caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v1, v6

    .line 364
    .local v2, c:Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 365
    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v4}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    :cond_1
    const-string v8, "CredentialHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# ca certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    const/4 v8, 0x1

    monitor-exit p0

    return v8

    .line 356
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v3           #caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .parameter "cert"

    .prologue
    .line 192
    :try_start_0
    const-string v3, "2.5.29.19"

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, basicConstraints:[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 194
    .local v2, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 195
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 196
    .restart local v2       #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 198
    .end local v0           #basicConstraints:[B
    :goto_0
    return v3

    .line 197
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 198
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWapiAs(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .parameter "cert"

    .prologue
    const/4 v5, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.2.156.11235."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v3, 0x1

    .line 169
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v5

    .line 169
    goto :goto_0
.end method

.method private isWapiUser(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .parameter "cert"

    .prologue
    const/4 v5, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.2.156.11235."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 180
    const/4 v3, 0x1

    .line 185
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    .line 183
    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v5

    .line 185
    goto :goto_0
.end method

.method private parseCert([B)V
    .locals 6
    .parameter "bytes"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 136
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 139
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiAs(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI AS cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 153
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v3, "CredentialHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseCert(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiUser(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    const-string v3, "CredentialHelper"

    const-string v4, "got a CA cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_3
    const-string v3, "CredentialHelper"

    const-string v4, "got a user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method containsAnyRawData()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createSystemInstallIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.INSTALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.CredentialStorage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v2, :cond_0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    aput-object v4, v3, v5

    invoke-direct {p0, v3}, Lcom/android/certinstaller/CredentialHelper;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v5

    invoke-direct {p0, v3}, Lcom/android/certinstaller/CredentialHelper;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 305
    .local v0, caCerts:[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 308
    .end local v0           #caCerts:[Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v2, :cond_3

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAPIAS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v2, :cond_4

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAPIUSR_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 316
    :cond_4
    return-object v1
.end method

.method extractPkcs12(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CredentialHelper;->extractPkcs12Internal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CredentialHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractPkcs12(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getData(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v1, "<br>"

    .line 257
    .local v1, newline:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_0

    .line 258
    const v3, 0x7f040001

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_1

    .line 261
    const v3, 0x7f040002

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_2

    .line 264
    const v3, 0x7f04000d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_2
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_3

    .line 267
    const v3, 0x7f04000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_3
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    .local v0, n:I
    if-lez v0, :cond_4

    .line 271
    if-ne v0, v4, :cond_5

    .line 272
    const v3, 0x7f04000f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 274
    :cond_5
    const v3, 0x7f040010

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getUserCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method hasAnyForSystemInstall()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasKeyPair()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPkcs12KeyStore()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKCS12"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasUserCertificate()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWapiAsCertificate()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWapiUserCertificate()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onRestoreStates(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedStates"

    .prologue
    .line 116
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 117
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 118
    const-string v4, "USRPKEY_"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 121
    :cond_0
    const-string v4, "crts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    .local v2, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .local v1, cert:[B
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_0

    .line 124
    .end local v1           #cert:[B
    :cond_1
    return-void
.end method

.method declared-synchronized onSaveStates(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outStates"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    const-string v3, "data"

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 96
    const-string v3, "name"

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "USRPKEY_"

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v1, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 107
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 113
    :goto_1
    monitor-exit p0

    return-void

    .line 109
    .restart local v1       #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    const-string v3, "crts"

    invoke-static {v1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 95
    .end local v1           #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method setPrivateKey([B)V
    .locals 5
    .parameter "bytes"

    .prologue
    .line 231
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 232
    .local v1, keyFactory:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 234
    .end local v1           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CredentialHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrivateKey(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
