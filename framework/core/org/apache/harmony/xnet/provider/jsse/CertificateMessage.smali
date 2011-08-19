.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateMessage.java"


# instance fields
.field certs:[Ljava/security/cert/X509Certificate;

.field encoded_certs:[[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 14
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x32

    const/4 v8, 0x0

    .line 54
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    .line 56
    .local v5, l:I
    if-nez v5, :cond_29

    .line 57
    if-eq p2, v10, :cond_14

    .line 58
    const-string v7, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v9, v7}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    .line 61
    :cond_14
    new-array v7, v8, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 62
    filled-new-array {v8, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 63
    iput v10, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 97
    :cond_28
    :goto_28
    return-void

    .line 68
    :cond_29
    :try_start_29
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_29 .. :try_end_2e} :catch_48

    move-result-object v1

    .line 73
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 74
    .local v0, certs_vector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    const/4 v6, 0x0

    .line 75
    .local v6, size:I
    const/4 v3, 0x0

    .line 76
    .local v3, enc_size:I
    :goto_36
    if-lez v5, :cond_5a

    .line 77
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v6

    .line 78
    add-int/lit8 v5, v5, -0x3

    .line 80
    :try_start_3e
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/security/cert/CertificateException; {:try_start_3e .. :try_end_45} :catch_52

    .line 84
    :goto_45
    sub-int/2addr v5, v6

    .line 85
    add-int/2addr v3, v6

    goto :goto_36

    .line 69
    .end local v0           #certs_vector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #enc_size:I
    .end local v6           #size:I
    :catch_48
    move-exception v7

    move-object v2, v7

    .line 70
    .local v2, e:Ljava/security/cert/CertificateException;
    const/16 v7, 0x50

    const-string v8, "INTERNAL ERROR"

    invoke-virtual {p0, v7, v8, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 81
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #certs_vector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    .restart local v1       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v3       #enc_size:I
    .restart local v6       #size:I
    :catch_52
    move-exception v7

    move-object v2, v7

    .line 82
    .restart local v2       #e:Ljava/security/cert/CertificateException;
    const-string v7, "DECODE ERROR"

    invoke-virtual {p0, v9, v7, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 87
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_5a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 88
    const/4 v4, 0x0

    .local v4, i:I
    :goto_63
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    if-ge v4, v7, :cond_75

    .line 89
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v8, v4

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 91
    :cond_75
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 92
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    if-eq v7, p2, :cond_28

    .line 93
    const-string v7, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v9, v7}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    goto :goto_28
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;)V
    .registers 6
    .parameter "certs"

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 105
    if-nez p1, :cond_1c

    .line 106
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 107
    filled-new-array {v3, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 108
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 127
    :cond_1b
    return-void

    .line 111
    :cond_1c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 112
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v2, :cond_42

    .line 113
    array-length v2, p1

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v2, p1

    if-ge v1, v2, :cond_42

    .line 116
    :try_start_2b
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_35
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2b .. :try_end_35} :catch_38

    .line 114
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 117
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v2, 0x50

    const-string v3, "INTERNAL ERROR"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 123
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_42
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 124
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 125
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 172
    const/16 v0, 0xb

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 7
    .parameter "out"

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, total_length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v3, :cond_2b

    .line 139
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    new-array v3, v3, [[B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    .line 142
    :try_start_12
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_1e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_1e} :catch_21

    .line 140
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 143
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    invoke-virtual {p0, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 149
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_2b
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x3

    .line 150
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_31
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_3f

    .line 151
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 153
    :cond_3f
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 154
    const/4 v1, 0x0

    :goto_44
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_5c

    .line 155
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 156
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 159
    :cond_5c
    return-void
.end method
