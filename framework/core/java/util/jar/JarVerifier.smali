.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field mainAttributesEnd:I

.field private man:Ljava/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 145
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static synthetic access$000(Ljava/util/jar/JarVerifier;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/jar/JarVerifier;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    return-object v0
.end method

.method private failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 6
    .parameter "jarName"
    .parameter "signatureFile"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .registers 8
    .parameter "signatureFileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, certificates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/security/cert/Certificate;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 466
    .local v5, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 467
    .local v1, certChain:[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1a

    .line 468
    move-object v0, v1

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v4, :cond_1a

    aget-object v2, v0, v3

    .line 469
    .local v2, element:Ljava/security/cert/Certificate;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 472
    .end local v0           #arr$:[Ljava/security/cert/Certificate;
    .end local v2           #element:Ljava/security/cert/Certificate;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1a
    return-object v5
.end method

.method private invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 7
    .parameter "signatureFile"
    .parameter "name"
    .parameter "jarName"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .registers 18
    .parameter "attributes"
    .parameter "entry"
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "ignoreSecondEndline"
    .parameter "ignorable"

    .prologue
    .line 388
    const-string v8, "Digest-Algorithms"

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, algorithms:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 390
    const-string v1, "SHA SHA1"

    .line 392
    :cond_a
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 393
    .local v7, tokens:Ljava/util/StringTokenizer;
    :cond_f
    :goto_f
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 394
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, algorithm:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, hash:Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 402
    :try_start_30
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_33} :catch_62

    move-result-object v6

    .line 406
    .local v6, md:Ljava/security/MessageDigest;
    if-eqz p6, :cond_64

    const/4 v8, 0x1

    sub-int v8, p5, v8

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_64

    const/4 v8, 0x2

    sub-int v8, p5, v8

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_64

    .line 408
    const/4 v8, 0x1

    sub-int v8, p5, v8

    sub-int/2addr v8, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 412
    :goto_4f
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 413
    .local v2, b:[B
    sget-object v8, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 414
    .local v5, hashBytes:[B
    invoke-static {v5}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B

    move-result-object v8

    invoke-static {v2, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v8

    .line 416
    .end local v0           #algorithm:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v4           #hash:Ljava/lang/String;
    .end local v5           #hashBytes:[B
    .end local v6           #md:Ljava/security/MessageDigest;
    :goto_61
    return v8

    .line 403
    .restart local v0       #algorithm:Ljava/lang/String;
    .restart local v4       #hash:Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 404
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_f

    .line 410
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v6       #md:Ljava/security/MessageDigest;
    :cond_64
    sub-int v8, p5, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4f

    .end local v0           #algorithm:Ljava/lang/String;
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #md:Ljava/security/MessageDigest;
    :cond_6a
    move/from16 v8, p7

    .line 416
    goto :goto_61
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .registers 29
    .parameter "certFile"

    .prologue
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x2e

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".SF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 283
    .local v25, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    .line 284
    .local v24, sfBytes:[B
    if-nez v24, :cond_36

    .line 363
    .end local p1
    :cond_35
    :goto_35
    return-void

    .line 288
    .restart local p1
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 290
    .local v7, manifest:[B
    if-eqz v7, :cond_35

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    .line 296
    .local v23, sBlockBytes:[B
    :try_start_53
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v5}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v26

    .line 303
    .local v26, signerCertChain:[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v4, v0

    if-eqz v4, :cond_35

    .line 306
    if-eqz v26, :cond_7d

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_7d} :catch_de
    .catch Ljava/security/GeneralSecurityException; {:try_start_53 .. :try_end_7d} :catch_e3

    .line 316
    :cond_7d
    new-instance v5, Ljava/util/jar/Attributes;

    invoke-direct {v5}, Ljava/util/jar/Attributes;-><init>()V

    .line 317
    .local v5, attributes:Ljava/util/jar/Attributes;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v19, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_87
    new-instance v21, Ljava/util/jar/InitManifest;

    sget-object v4, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object v2, v5

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/jar/InitManifest;-><init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V

    .line 320
    .local v21, im:Ljava/util/jar/InitManifest;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9d} :catch_f5

    .line 325
    const/4 v14, 0x0

    .line 326
    .local v14, createdBySigntool:Z
    const-string v4, "Created-By"

    invoke-virtual {v5, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 327
    .local v17, createdBy:Ljava/lang/String;
    if-eqz v17, :cond_b4

    .line 328
    const-string v4, "signtool"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_fa

    const/4 v4, 0x1

    move v14, v4

    .line 335
    :cond_b4
    :goto_b4
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    move v4, v0

    if-lez v4, :cond_fd

    if-nez v14, :cond_fd

    .line 336
    const-string v6, "-Digest-Manifest-Main-Attributes"

    .line 337
    .local v6, digestAttribute:Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v4

    if-nez v4, :cond_fd

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v4

    throw v4

    .line 309
    .end local v5           #attributes:Ljava/util/jar/Attributes;
    .end local v6           #digestAttribute:Ljava/lang/String;
    .end local v14           #createdBySigntool:Z
    .end local v17           #createdBy:Ljava/lang/String;
    .end local v19           #entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v21           #im:Ljava/util/jar/InitManifest;
    .end local v26           #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_de
    move-exception v4

    move-object/from16 v18, v4

    .line 310
    .local v18, e:Ljava/io/IOException;
    goto/16 :goto_35

    .line 311
    .end local v18           #e:Ljava/io/IOException;
    :catch_e3
    move-exception v4

    move-object/from16 v18, v4

    .line 312
    .local v18, e:Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v4

    throw v4

    .line 321
    .end local v18           #e:Ljava/security/GeneralSecurityException;
    .restart local v5       #attributes:Ljava/util/jar/Attributes;
    .restart local v19       #entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v26       #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_f5
    move-exception v4

    move-object/from16 v18, v4

    .line 322
    .local v18, e:Ljava/io/IOException;
    goto/16 :goto_35

    .line 328
    .end local v18           #e:Ljava/io/IOException;
    .restart local v14       #createdBySigntool:Z
    .restart local v17       #createdBy:Ljava/lang/String;
    .restart local v21       #im:Ljava/util/jar/InitManifest;
    :cond_fa
    const/4 v4, 0x0

    move v14, v4

    goto :goto_b4

    .line 343
    :cond_fd
    if-eqz v14, :cond_169

    const-string v4, "-Digest"

    move-object v6, v4

    .line 345
    .restart local v6       #digestAttribute:Ljava/lang/String;
    :goto_102
    const/4 v8, 0x0

    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v4

    if-nez v4, :cond_16d

    .line 347
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 349
    .end local p1
    .local v22, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_116
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 350
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 351
    .local v20, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object v4, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;

    move-result-object v16

    .line 352
    .local v16, chunk:Ljava/util/jar/Manifest$Chunk;
    if-eqz v16, :cond_35

    .line 355
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/Attributes;

    const-string v10, "-Digest"

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/jar/Manifest$Chunk;->start:I

    move v12, v0

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/jar/Manifest$Chunk;->end:I

    move v13, v0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object v11, v7

    invoke-direct/range {v8 .. v15}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v4

    if-nez v4, :cond_116

    .line 357
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v4

    throw v4

    .line 343
    .end local v6           #digestAttribute:Ljava/lang/String;
    .end local v16           #chunk:Ljava/util/jar/Manifest$Chunk;
    .end local v20           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v22           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .restart local p1
    :cond_169
    const-string v4, "-Digest-Manifest"

    move-object v6, v4

    goto :goto_102

    .line 361
    .end local p1
    .restart local v6       #digestAttribute:Ljava/lang/String;
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v25

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v5           #attributes:Ljava/util/jar/Attributes;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .registers 5
    .parameter "name"
    .parameter "buf"

    .prologue
    .line 237
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .parameter "name"

    .prologue
    .line 429
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 430
    .local v0, verifiedCerts:[Ljava/security/cert/Certificate;
    if-nez v0, :cond_c

    .line 431
    const/4 v1, 0x0

    .line 433
    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    move-object v1, p0

    goto :goto_b
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .registers 22
    .parameter "name"

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object v2, v0

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_14

    .line 165
    :cond_12
    const/4 v2, 0x0

    .line 220
    :goto_13
    return-object v2

    .line 168
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v10

    .line 170
    .local v10, attributes:Ljava/util/jar/Attributes;
    if-nez v10, :cond_24

    .line 171
    const/4 v2, 0x0

    goto :goto_13

    .line 174
    :cond_24
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 175
    .local v11, certs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 177
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_36
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 178
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 179
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 180
    .local v14, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 182
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 184
    .local v18, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object v2, v0

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-static {v0, v1}, Ljava/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v17

    .line 186
    .local v17, newCerts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 187
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :goto_67
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 188
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 194
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v14           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v16           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .end local v17           #newCerts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    .end local v18           #signatureFile:Ljava/lang/String;
    :cond_75
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_7d

    .line 195
    const/4 v2, 0x0

    goto :goto_13

    .line 197
    :cond_7d
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v7, v2, [Ljava/security/cert/Certificate;

    .line 198
    .local v7, certificatesArray:[Ljava/security/cert/Certificate;
    invoke-virtual {v11, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    const-string v2, "Digest-Algorithms"

    invoke-virtual {v10, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, algorithms:Ljava/lang/String;
    if-nez v9, :cond_90

    .line 202
    const-string v9, "SHA SHA1"

    .line 204
    :cond_90
    new-instance v19, Ljava/util/StringTokenizer;

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 205
    .local v19, tokens:Ljava/util/StringTokenizer;
    :cond_98
    :goto_98
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 206
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, algorithm:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Digest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, hash:Ljava/lang/String;
    if-eqz v13, :cond_98

    .line 211
    sget-object v2, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 214
    .local v6, hashBytes:[B
    :try_start_c1
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_ce
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c1 .. :try_end_ce} :catch_d0

    goto/16 :goto_13

    .line 216
    :catch_d0
    move-exception v2

    goto :goto_98

    .line 220
    .end local v6           #hashBytes:[B
    .end local v8           #algorithm:Ljava/lang/String;
    .end local v13           #hash:Ljava/lang/String;
    :cond_d2
    const/4 v2, 0x0

    goto/16 :goto_13
.end method

.method isSignedJar()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method declared-synchronized readCertificates()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 258
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3c

    if-nez v2, :cond_9

    move v2, v3

    .line 273
    :goto_7
    monitor-exit p0

    return v2

    .line 261
    :cond_9
    :try_start_9
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 262
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .local v1, key:Ljava/lang/String;
    const-string v2, ".DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, ".RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 265
    :cond_2f
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-nez v2, :cond_38

    move v2, v3

    .line 268
    goto :goto_7

    .line 270
    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3c

    goto :goto_13

    .line 258
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 273
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method removeMetaEntries()V
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 444
    return-void
.end method

.method setManifest(Ljava/util/jar/Manifest;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 372
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    .line 373
    return-void
.end method
