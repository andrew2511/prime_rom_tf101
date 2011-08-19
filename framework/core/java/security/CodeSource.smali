.class public Ljava/security/CodeSource;
.super Ljava/lang/Object;
.source "CodeSource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4513c7e9c252587fL


# instance fields
.field private transient certs:[Ljava/security/cert/Certificate;

.field private transient factory:Ljava/security/cert/CertificateFactory;

.field private location:Ljava/net/URL;

.field private transient signers:[Ljava/security/CodeSigner;

.field private transient sp:Ljava/net/SocketPermission;


# direct methods
.method public constructor <init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .registers 6
    .parameter "location"
    .parameter "signers"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    .line 99
    if-eqz p2, :cond_13

    .line 100
    array-length v0, p2

    new-array v0, v0, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    .line 101
    iget-object v0, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "location"
    .parameter "certs"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    .line 80
    if-eqz p2, :cond_13

    .line 81
    array-length v0, p2

    new-array v0, v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    .line 82
    iget-object v0, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :cond_13
    return-void
.end method

.method private getCertificatesNoClone()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    .line 181
    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    if-eqz v2, :cond_7

    .line 182
    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    .line 195
    :goto_6
    return-object v2

    .line 185
    :cond_7
    iget-object v2, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_d

    .line 186
    const/4 v2, 0x0

    goto :goto_6

    .line 189
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v2, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 191
    iget-object v2, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 194
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    iput-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    .line 195
    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    goto :goto_6
.end method

.method private makeCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x0

    .line 279
    iget-object v1, p0, Ljava/security/CodeSource;->factory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_d

    .line 281
    :try_start_5
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Ljava/security/CodeSource;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_d} :catch_14

    .line 288
    :cond_d
    :try_start_d
    iget-object v1, p0, Ljava/security/CodeSource;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_12
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_12} :catch_18

    move-result-object v1

    .line 292
    :goto_13
    return-object v1

    .line 282
    :catch_14
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/security/cert/CertificateException;
    move-object v1, v2

    .line 284
    goto :goto_13

    .line 289
    .end local v0           #ex:Ljava/security/cert/CertificateException;
    :catch_18
    move-exception v1

    move-object v1, v2

    .line 292
    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 596
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 597
    .local v1, certsCount:I
    const/4 v8, 0x0

    iput-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    .line 598
    if-eqz v1, :cond_5e

    .line 599
    new-array v8, v1, [Ljava/security/cert/Certificate;

    iput-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    .line 600
    const/4 v6, 0x0

    .local v6, i:I
    :goto_11
    if-ge v6, v1, :cond_5e

    .line 601
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, type:Ljava/lang/String;
    :try_start_17
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1a} :catch_34

    move-result-object v5

    .line 609
    .local v5, factory:Ljava/security/cert/CertificateFactory;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 610
    .local v3, dataLen:I
    new-array v2, v3, [B

    .line 611
    .local v2, data:[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 612
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 614
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_29
    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    aput-object v9, v8, v6
    :try_end_31
    .catch Ljava/security/cert/CertificateException; {:try_start_29 .. :try_end_31} :catch_4e

    .line 600
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 605
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #data:[B
    .end local v3           #dataLen:I
    .end local v5           #factory:Ljava/security/cert/CertificateFactory;
    :catch_34
    move-exception v4

    .line 606
    .local v4, ex:Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/lang/ClassNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find CertificateFactory of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 615
    .end local v4           #ex:Ljava/security/cert/CertificateException;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #data:[B
    .restart local v3       #dataLen:I
    .restart local v5       #factory:Ljava/security/cert/CertificateFactory;
    :catch_4e
    move-exception v8

    move-object v4, v8

    .line 616
    .restart local v4       #ex:Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Could not generate certificate"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 621
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #data:[B
    .end local v3           #dataLen:I
    .end local v4           #ex:Ljava/security/cert/CertificateException;
    .end local v5           #factory:Ljava/security/cert/CertificateFactory;
    .end local v6           #i:I
    .end local v7           #type:Ljava/lang/String;
    .restart local p0
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/security/CodeSigner;

    check-cast v8, [Ljava/security/CodeSigner;

    iput-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;
    :try_end_68
    .catch Ljava/io/OptionalDataException; {:try_start_5e .. :try_end_68} :catch_69

    .line 628
    :cond_68
    return-void

    .line 622
    :catch_69
    move-exception v8

    move-object v4, v8

    .line 623
    .local v4, ex:Ljava/io/OptionalDataException;
    iget-boolean v8, v4, Ljava/io/OptionalDataException;->eof:Z

    if-nez v8, :cond_68

    .line 624
    throw v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 570
    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v3, v3

    if-nez v3, :cond_1f

    .line 571
    :cond_c
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 586
    :cond_10
    iget-object v3, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v3, v3

    if-eqz v3, :cond_1e

    .line 587
    iget-object v3, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 589
    :cond_1e
    return-void

    .line 573
    :cond_1f
    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 574
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v3, v3

    if-ge v2, v3, :cond_10

    .line 576
    :try_start_2b
    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 579
    .local v0, data:[B
    array-length v3, v0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 580
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_45
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2b .. :try_end_45} :catch_48

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 581
    .end local v0           #data:[B
    :catch_48
    move-exception v3

    move-object v1, v3

    .line 582
    .local v1, ex:Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not store certificate"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    if-ne p1, p0, :cond_6

    move v4, v7

    .line 151
    :goto_5
    return v4

    .line 124
    :cond_6
    instance-of v4, p1, Ljava/security/CodeSource;

    if-nez v4, :cond_c

    move v4, v6

    .line 125
    goto :goto_5

    .line 128
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/CodeSource;

    move-object v1, v0

    .line 130
    .local v1, that:Ljava/security/CodeSource;
    iget-object v4, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-eqz v4, :cond_26

    .line 131
    iget-object v4, v1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-nez v4, :cond_1a

    move v4, v6

    .line 132
    goto :goto_5

    .line 134
    :cond_1a
    iget-object v4, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    iget-object v5, v1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v4, v5}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    move v4, v6

    .line 135
    goto :goto_5

    .line 137
    :cond_26
    iget-object v4, v1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-eqz v4, :cond_2c

    move v4, v6

    .line 138
    goto :goto_5

    .line 143
    :cond_2c
    invoke-direct {p0}, Ljava/security/CodeSource;->getCertificatesNoClone()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 144
    .local v3, thizCerts:[Ljava/security/cert/Certificate;
    invoke-direct {v1}, Ljava/security/CodeSource;->getCertificatesNoClone()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 145
    .local v2, thatCerts:[Ljava/security/cert/Certificate;
    invoke-static {v3, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    move v4, v6

    .line 146
    goto :goto_5

    .line 148
    :cond_3c
    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    move v4, v6

    .line 149
    goto :goto_5

    :cond_44
    move v4, v7

    .line 151
    goto :goto_5
.end method

.method public final getCertificates()[Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/security/CodeSource;->getCertificatesNoClone()[Ljava/security/cert/Certificate;

    .line 167
    iget-object v1, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_a

    .line 168
    const/4 v1, 0x0

    .line 172
    :goto_9
    return-object v1

    .line 170
    :cond_a
    iget-object v1, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/cert/Certificate;

    .line 171
    .local v0, tmp:[Ljava/security/cert/Certificate;
    iget-object v1, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 172
    goto :goto_9
.end method

.method public final getCodeSigners()[Ljava/security/CodeSigner;
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 208
    iget-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    if-eqz v8, :cond_13

    .line 209
    iget-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v8, v8

    new-array v6, v8, [Ljava/security/CodeSigner;

    .line 210
    .local v6, tmp:[Ljava/security/CodeSigner;
    iget-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v9, v6

    invoke-static {v8, v10, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 272
    .end local v6           #tmp:[Ljava/security/CodeSigner;
    :goto_12
    return-object v8

    .line 213
    :cond_13
    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Ljava/security/CodeSource;->factory:Ljava/security/cert/CertificateFactory;

    if-eqz v8, :cond_1d

    :cond_1b
    move-object v8, v9

    .line 215
    goto :goto_12

    .line 218
    :cond_1d
    const/4 v4, 0x0

    .line 219
    .local v4, prevIssuer:Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v8, v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, asigners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v8, v8

    if-ge v2, v8, :cond_6f

    .line 233
    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    aget-object v8, v8, v2

    instance-of v8, v8, Ljava/security/cert/X509Certificate;

    if-nez v8, :cond_3c

    .line 232
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 237
    :cond_3c
    iget-object v8, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    aget-object v7, v8, v2

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 238
    .local v7, x509:Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_4c

    .line 240
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 241
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 243
    :cond_4c
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 244
    .local v5, subj:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_67

    .line 247
    invoke-direct {p0, v3}, Ljava/security/CodeSource;->makeCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 248
    .local v1, cpath:Ljava/security/cert/CertPath;
    if-eqz v1, :cond_64

    .line 249
    new-instance v8, Ljava/security/CodeSigner;

    invoke-direct {v8, v1, v9}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_64
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 254
    .end local v1           #cpath:Ljava/security/cert/CertPath;
    :cond_67
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 255
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 258
    .end local v5           #subj:Ljavax/security/auth/x500/X500Principal;
    .end local v7           #x509:Ljava/security/cert/X509Certificate;
    :cond_6f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_83

    .line 259
    invoke-direct {p0, v3}, Ljava/security/CodeSource;->makeCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 260
    .restart local v1       #cpath:Ljava/security/cert/CertPath;
    if-eqz v1, :cond_83

    .line 261
    new-instance v8, Ljava/security/CodeSigner;

    invoke-direct {v8, v1, v9}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v1           #cpath:Ljava/security/cert/CertPath;
    :cond_83
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8b

    move-object v8, v9

    .line 266
    goto :goto_12

    .line 268
    :cond_8b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/security/CodeSigner;

    iput-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    .line 269
    iget-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Ljava/security/CodeSigner;

    .line 271
    .restart local v6       #tmp:[Ljava/security/CodeSigner;
    iget-object v8, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v9, v6

    invoke-static {v8, v10, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 272
    goto/16 :goto_12
.end method

.method public final getLocation()Ljava/net/URL;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public implies(Ljava/security/CodeSource;)Z
    .registers 14
    .parameter "cs"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 395
    if-nez p1, :cond_8

    move v6, v8

    .line 531
    :goto_7
    return v6

    .line 404
    :cond_8
    invoke-direct {p0}, Ljava/security/CodeSource;->getCertificatesNoClone()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 405
    .local v5, thizCerts:[Ljava/security/cert/Certificate;
    if-eqz v5, :cond_1c

    .line 406
    invoke-direct {p1}, Ljava/security/CodeSource;->getCertificatesNoClone()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 407
    .local v0, thatCerts:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1a

    invoke-static {v5, v0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_1a
    move v6, v8

    .line 409
    goto :goto_7

    .line 414
    .end local v0           #thatCerts:[Ljava/security/cert/Certificate;
    :cond_1c
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-eqz v6, :cond_154

    .line 416
    iget-object v6, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-nez v6, :cond_26

    move v6, v8

    .line 417
    goto :goto_7

    .line 420
    :cond_26
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    iget-object v7, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v6, v9

    .line 421
    goto :goto_7

    .line 424
    :cond_32
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    move v6, v8

    .line 425
    goto :goto_7

    .line 428
    :cond_46
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, thisHost:Ljava/lang/String;
    if-eqz v4, :cond_a1

    .line 430
    iget-object v6, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, thatHost:Ljava/lang/String;
    if-nez v2, :cond_58

    move v6, v8

    .line 432
    goto :goto_7

    .line 451
    :cond_58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_66

    const-string v6, "localhost"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    :cond_66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a1

    const-string v6, "localhost"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    :cond_74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 467
    iget-object v6, p0, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    if-nez v6, :cond_87

    .line 468
    new-instance v6, Ljava/net/SocketPermission;

    const-string v7, "resolve"

    invoke-direct {v6, v4, v7}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    .line 471
    :cond_87
    iget-object v6, p1, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    if-nez v6, :cond_94

    .line 472
    new-instance v6, Ljava/net/SocketPermission;

    const-string v7, "resolve"

    invoke-direct {v6, v2, v7}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p1, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    .line 475
    :cond_94
    iget-object v6, p0, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    iget-object v7, p1, Ljava/security/CodeSource;->sp:Ljava/net/SocketPermission;

    invoke-virtual {v6, v7}, Ljava/net/SocketPermission;->implies(Ljava/security/Permission;)Z

    move-result v6

    if-nez v6, :cond_a1

    move v6, v8

    .line 476
    goto/16 :goto_7

    .line 482
    .end local v2           #thatHost:Ljava/lang/String;
    :cond_a1
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    if-eq v6, v10, :cond_ba

    .line 483
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    iget-object v7, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v7

    if-eq v6, v7, :cond_ba

    move v6, v8

    .line 484
    goto/16 :goto_7

    .line 489
    :cond_ba
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, thisFile:Ljava/lang/String;
    iget-object v6, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, thatFile:Ljava/lang/String;
    const-string v6, "/-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 493
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_137

    move v6, v8

    .line 495
    goto/16 :goto_7

    .line 497
    :cond_e0
    const-string v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fa

    move v6, v8

    .line 500
    goto/16 :goto_7

    .line 503
    :cond_fa
    const-string v6, "/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v10, :cond_137

    move v6, v8

    .line 504
    goto/16 :goto_7

    .line 508
    :cond_10a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_137

    .line 509
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_134

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_137

    move v6, v8

    .line 511
    goto/16 :goto_7

    :cond_134
    move v6, v8

    .line 514
    goto/16 :goto_7

    .line 520
    :cond_137
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_154

    .line 521
    iget-object v6, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_154

    move v6, v8

    .line 522
    goto/16 :goto_7

    .end local v1           #thatFile:Ljava/lang/String;
    .end local v3           #thisFile:Ljava/lang/String;
    .end local v4           #thisHost:Ljava/lang/String;
    :cond_154
    move v6, v9

    .line 531
    goto/16 :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "CodeSource, url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v2, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    if-nez v2, :cond_47

    const-string v2, "<null>"

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_4e

    .line 548
    const-string v2, ", <no certificates>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_1c
    iget-object v2, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    if-eqz v2, :cond_80

    .line 557
    const-string v2, "\nCodeSigners [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    iget-object v2, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    array-length v2, v2

    if-ge v1, v2, :cond_7b

    .line 559
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/CodeSource;->signers:[Ljava/security/CodeSigner;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 545
    .end local v1           #i:I
    :cond_47
    iget-object v2, p0, Ljava/security/CodeSource;->location:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 550
    :cond_4e
    const-string v2, "\nCertificates [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_54
    iget-object v2, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    array-length v2, v2

    if-ge v1, v2, :cond_75

    .line 552
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/CodeSource;->certs:[Ljava/security/cert/Certificate;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 554
    :cond_75
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 561
    :cond_7b
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .end local v1           #i:I
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
