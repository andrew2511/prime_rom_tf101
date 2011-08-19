.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static final CERT_BOUND_SUFFIX:[B = null

.field private static final CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CERT_CACHE_SEED_LENGTH:I = 0x1c

.field private static final CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CRL_CACHE_SEED_LENGTH:I = 0x18

.field private static final FREE_BOUND_SUFFIX:[B

.field private static final PEM_BEGIN:[B

.field private static final PEM_END:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 64
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 436
    const-string v0, "-----BEGIN"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    .line 437
    const-string v0, "-----END"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    .line 443
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    .line 449
    const-string v0, " CERTIFICATE-----"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private badEnd([B)Ljava/io/IOException;
    .registers 6
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    if-nez p1, :cond_24

    const-string v1, ""

    move-object v0, v1

    .line 570
    .local v0, s:Ljava/lang/String;
    :goto_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect PEM encoding: \'-----END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is expected as closing delimiter boundary."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    .end local v0           #s:Ljava/lang/String;
    :cond_24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_5
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .registers 13
    .parameter "inStream"
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    array-length v7, v7

    if-ge v2, v7, :cond_3c

    .line 482
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v7, v1, :cond_39

    .line 483
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_33

    const-string v9, ""

    :goto_21
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_33
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_21

    .line 481
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    .end local v1           #ch:I
    :cond_3c
    if-nez p2, :cond_51

    .line 493
    :cond_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_9c

    .line 494
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3e

    .line 495
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: EOF before content"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 499
    .end local v1           #ch:I
    :cond_51
    const/4 v2, 0x0

    :goto_52
    array-length v7, p2

    if-ge v2, v7, :cond_84

    .line 500
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_81

    .line 501
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 499
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 506
    :cond_84
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xd

    if-ne v1, v7, :cond_90

    .line 508
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 510
    :cond_90
    const/16 v7, 0xa

    if-eq v1, v7, :cond_9c

    .line 511
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: newline expected after opening delimiter boundary"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 515
    :cond_9c
    const/16 v6, 0x400

    .line 516
    .local v6, size:I
    new-array v0, v6, [B

    .line 517
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 519
    .local v3, index:I
    :goto_a1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_c9

    .line 520
    const/4 v7, -0x1

    if-ne v1, v7, :cond_b4

    .line 521
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: EOF without closing delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 523
    :cond_b4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    .line 524
    if-ne v4, v6, :cond_141

    .line 526
    add-int/lit16 v7, v6, 0x400

    new-array v5, v7, [B

    .line 527
    .local v5, newbuff:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    move-object v0, v5

    .line 529
    add-int/lit16 v6, v6, 0x400

    move v3, v4

    .line 530
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_a1

    .line 532
    .end local v5           #newbuff:[B
    :cond_c9
    const/4 v7, 0x1

    sub-int v7, v3, v7

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_da

    .line 533
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: newline expected before closing boundary delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    :cond_da
    const/4 v2, 0x1

    :goto_db
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    array-length v7, v7

    if-ge v2, v7, :cond_f2

    .line 539
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_ef

    .line 540
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 538
    :cond_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 543
    :cond_f2
    if-nez p2, :cond_11b

    .line 546
    :cond_f4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_103

    const/16 v7, 0xa

    if-eq v1, v7, :cond_103

    const/16 v7, 0xd

    if-ne v1, v7, :cond_f4

    .line 556
    :cond_103
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 557
    :goto_107
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_12f

    const/16 v7, 0xa

    if-eq v1, v7, :cond_116

    const/16 v7, 0xd

    if-ne v1, v7, :cond_12f

    .line 558
    :cond_116
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_107

    .line 549
    :cond_11b
    const/4 v2, 0x0

    :goto_11c
    array-length v7, p2

    if-ge v2, v7, :cond_103

    .line 550
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_12c

    .line 551
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 549
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    .line 560
    :cond_12f
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 561
    invoke-static {v0, v3}, Lorg/apache/harmony/luni/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 562
    if-nez v0, :cond_140

    .line 563
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 565
    :cond_140
    return-object v0

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_141
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_a1
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x18

    .line 705
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 706
    const/16 v6, 0x18

    :try_start_7
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 707
    const/16 v6, 0x18

    invoke-static {p0, v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 709
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 710
    if-nez v0, :cond_20

    .line 711
    new-instance v6, Ljava/security/cert/CRLException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 732
    .end local v0           #buff:[B
    :catchall_1d
    move-exception v6

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v6

    .line 713
    .restart local v0       #buff:[B
    :cond_20
    :try_start_20
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 714
    .local v2, hash:J
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 715
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v6

    new-array v1, v6, [B

    .line 716
    .local v1, encoding:[B
    array-length v6, v1

    if-ge v6, v7, :cond_3f

    .line 717
    new-instance v6, Ljava/security/cert/CRLException;

    const-string v7, "Bad CRL encoding"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 719
    :cond_3f
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 720
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    .line 721
    .local v4, res:Ljava/security/cert/CRL;
    if-eqz v4, :cond_4e

    .line 722
    monitor-exit v5

    .line 730
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :goto_4d
    return-object v4

    .line 724
    .restart local v1       #encoding:[B
    .restart local v4       #res:Ljava/security/cert/CRL;
    :cond_4e
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .end local v4           #res:Ljava/security/cert/CRL;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 725
    .restart local v4       #res:Ljava/security/cert/CRL;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 726
    monitor-exit v5

    goto :goto_4d

    .line 728
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :cond_5a
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    .line 729
    .local v4, res:Ljava/security/cert/X509CRL;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 730
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_20 .. :try_end_69} :catchall_1d

    goto :goto_4d
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    array-length v4, p0

    const/16 v5, 0x18

    if-ge v4, v5, :cond_d

    .line 677
    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "encoding.length < CRL_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 679
    :cond_d
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v4

    .line 680
    :try_start_10
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 681
    .local v0, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 682
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 683
    .local v2, res:Ljava/security/cert/X509CRL;
    if-eqz v2, :cond_2b

    .line 684
    monitor-exit v4

    move-object v3, v2

    .line 689
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .local v3, res:Ljava/lang/Object;
    :goto_2a
    return-object v3

    .line 687
    .end local v3           #res:Ljava/lang/Object;
    :cond_2b
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 688
    .restart local v2       #res:Ljava/security/cert/X509CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 689
    monitor-exit v4

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2a

    .line 690
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_38
    move-exception v5

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw v5
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1c

    .line 634
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 635
    const/16 v6, 0x1c

    :try_start_7
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 637
    const/16 v6, 0x1c

    invoke-static {p0, v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 638
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 639
    if-nez v0, :cond_20

    .line 640
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 662
    .end local v0           #buff:[B
    :catchall_1d
    move-exception v6

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v6

    .line 642
    .restart local v0       #buff:[B
    :cond_20
    :try_start_20
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 643
    .local v2, hash:J
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 644
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v6

    new-array v1, v6, [B

    .line 645
    .local v1, encoding:[B
    array-length v6, v1

    if-ge v6, v7, :cond_3f

    .line 646
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Bad Certificate encoding"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 648
    :cond_3f
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 649
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 650
    .local v4, res:Ljava/security/cert/Certificate;
    if-eqz v4, :cond_4e

    .line 651
    monitor-exit v5

    .line 660
    .end local v1           #encoding:[B
    :goto_4d
    return-object v4

    .line 653
    .restart local v1       #encoding:[B
    :cond_4e
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v4           #res:Ljava/security/cert/Certificate;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 654
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 655
    monitor-exit v5

    goto :goto_4d

    .line 657
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/Certificate;
    :cond_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 658
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    .line 659
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 660
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_20 .. :try_end_6c} :catchall_1d

    goto :goto_4d
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    array-length v4, p0

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_d

    .line 605
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "encoding.length < CERT_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    :cond_d
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v4

    .line 608
    :try_start_10
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 609
    .local v0, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 610
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 612
    .local v2, res:Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2b

    .line 613
    monitor-exit v4

    move-object v3, v2

    .line 618
    .end local v2           #res:Ljava/security/cert/Certificate;
    .local v3, res:Ljava/lang/Object;
    :goto_2a
    return-object v3

    .line 616
    .end local v3           #res:Ljava/lang/Object;
    :cond_2b
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 617
    .restart local v2       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 618
    monitor-exit v4

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2a

    .line 619
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/Certificate;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_38
    move-exception v5

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw v5
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .registers 6
    .parameter "source"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-array v2, p1, [B

    .line 583
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p1, :cond_14

    .line 584
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 585
    .local v0, bytik:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 586
    const/4 v3, 0x0

    .line 590
    .end local v0           #bytik:I
    :goto_d
    return-object v3

    .line 588
    .restart local v0       #bytik:I
    :cond_e
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #bytik:I
    :cond_14
    move-object v3, v2

    .line 590
    goto :goto_d
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 236
    if-nez p1, :cond_a

    .line 237
    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_16

    .line 244
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 246
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 248
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2d

    .line 250
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    .line 254
    :goto_2c
    return-object v2

    .line 252
    :cond_2d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 254
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_2c

    .line 256
    :catch_35
    move-exception v2

    move-object v0, v2

    .line 257
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    .line 267
    if-nez p1, :cond_d

    .line 268
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "inStream == null"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 270
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v9, result:Ljava/util/ArrayList;
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_1e

    .line 273
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 277
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1e
    const/4 v4, 0x0

    .line 282
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 283
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 285
    :goto_24
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    if-eq v0, v12, :cond_4d

    .line 287
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_54

    .line 289
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 306
    :goto_34
    if-nez v4, :cond_7a

    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v11

    .line 310
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_3c
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 311
    if-nez v4, :cond_45

    .line 313
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 316
    :cond_45
    if-eq v10, v13, :cond_81

    .line 317
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_53

    .line 336
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_4d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_97

    .line 361
    .end local p0
    :cond_53
    :goto_53
    return-object v9

    .line 290
    .restart local p0
    :cond_54
    if-ne v0, v13, :cond_68

    .line 291
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 294
    const/16 v11, 0x18

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_5f} :catch_60

    goto :goto_34

    .line 365
    .end local v0           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    .end local p0
    :catch_60
    move-exception v11

    move-object v3, v11

    .line 366
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CRLException;

    invoke-direct {v11, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 296
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    .restart local p0
    :cond_68
    :try_start_68
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_76

    .line 297
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "Unsupported encoding"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 301
    :cond_76
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_53

    .line 306
    :cond_7a
    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    move-object v6, v11

    goto :goto_3c

    .line 328
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_81
    if-nez v4, :cond_8f

    .line 329
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_8a
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_24

    .line 331
    :cond_8f
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 339
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_97
    if-ne v0, v12, :cond_a1

    .line 340
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "There is no data in the stream"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 343
    :cond_a1
    const/4 v11, 0x6

    if-ne v10, v11, :cond_e3

    .line 345
    if-eqz v4, :cond_bd

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    :goto_ad
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 350
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 351
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_c5

    .line 352
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "Invalid PKCS7 data provided"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 345
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_bd
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    goto :goto_ad

    .line 354
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_c5
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v1

    .line 355
    .local v1, crls:Ljava/util/List;
    if-eqz v1, :cond_53

    .line 356
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_cc
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_53

    .line 357
    new-instance v11, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {v11, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 364
    .end local v1           #crls:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p0
    :cond_e3
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "Unsupported encoding"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_eb} :catch_60
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_a

    .line 377
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 8
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 388
    if-nez p1, :cond_a

    .line 389
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 391
    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_16

    .line 392
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v2, inStream:Ljava/io/InputStream;
    move-object p1, v2

    .line 395
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 399
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2d

    .line 401
    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    .line 406
    :goto_2c
    return-object v3

    .line 403
    :cond_2d
    const/16 v3, 0x30

    if-ne v0, v3, :cond_39

    .line 404
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 406
    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_2c

    .line 408
    :cond_39
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Unsupported encoding"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_41} :catch_41

    .line 410
    .end local v0           #ch:I
    :catch_41
    move-exception v3

    move-object v1, v3

    .line 411
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 3
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_a

    .line 91
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_16

    .line 96
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 100
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 102
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2d

    .line 104
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 108
    :goto_2c
    return-object v2

    .line 106
    :cond_2d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 108
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_2c

    .line 110
    :catch_35
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    .line 124
    if-nez p1, :cond_d

    .line 125
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "inStream == null"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 127
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v9, result:Ljava/util/ArrayList;
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_1e

    .line 131
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 135
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1e
    const/4 v4, 0x0

    .line 140
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 141
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 143
    :goto_24
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v12, :cond_4d

    .line 145
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_54

    .line 147
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 164
    :goto_34
    if-nez v4, :cond_7a

    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v11

    .line 168
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_3c
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 169
    if-nez v4, :cond_45

    .line 171
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 174
    :cond_45
    if-eq v10, v13, :cond_81

    .line 175
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_53

    .line 195
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_4d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_97

    .line 221
    .end local p0
    :cond_53
    :goto_53
    return-object v9

    .line 148
    .restart local p0
    :cond_54
    if-ne v1, v13, :cond_68

    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 152
    const/16 v11, 0x1c

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_5f} :catch_60

    goto :goto_34

    .line 225
    .end local v1           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    .end local p0
    :catch_60
    move-exception v11

    move-object v3, v11

    .line 226
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CertificateException;

    invoke-direct {v11, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 154
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    .restart local p0
    :cond_68
    :try_start_68
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_76

    .line 155
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "Unsupported encoding"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 159
    :cond_76
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_53

    .line 164
    :cond_7a
    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    move-object v6, v11

    goto :goto_3c

    .line 186
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_81
    if-nez v4, :cond_8f

    .line 187
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_8a
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_24

    .line 189
    :cond_8f
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 198
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_97
    if-ne v1, v12, :cond_a1

    .line 199
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "There is no data in the stream"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 202
    :cond_a1
    const/4 v11, 0x6

    if-ne v10, v11, :cond_e3

    .line 204
    if-eqz v4, :cond_bd

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    :goto_ad
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 209
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 210
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_c5

    .line 211
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "Invalid PKCS7 data provided"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 204
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_bd
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    goto :goto_ad

    .line 213
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_c5
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, certs:Ljava/util/List;
    if-eqz v0, :cond_53

    .line 215
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_cc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_53

    .line 216
    new-instance v11, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v11, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 224
    .end local v0           #certs:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p0
    :cond_e3
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "Unsupported encoding"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_eb} :catch_60
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
