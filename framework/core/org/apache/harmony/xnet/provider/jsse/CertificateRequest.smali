.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateRequest.java"


# instance fields
.field final certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

.field final certificate_types:[B

.field private encoded_principals:[[B

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 10
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v3

    .line 91
    .local v3, size:I
    new-array v5, v3, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 92
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 93
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, totalPrincipalsLength:I
    const/4 v1, 0x0

    .line 96
    .local v1, principalLength:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v2, principals:Ljava/util/Vector;,"Ljava/util/Vector<Ljavax/security/auth/x500/X500Principal;>;"
    :goto_1c
    if-ge v4, v3, :cond_2e

    .line 98
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v1

    .line 99
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v5, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v4, v4, 0x2

    .line 101
    add-int/2addr v4, v1

    goto :goto_1c

    .line 103
    :cond_2e
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljavax/security/auth/x500/X500Principal;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v5, v5

    if-ge v0, v5, :cond_49

    .line 105
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/security/auth/x500/X500Principal;

    aput-object v5, v6, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 107
    :cond_49
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    .line 108
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    if-eq v5, p2, :cond_5c

    .line 109
    const/16 v5, 0x32

    const-string v6, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 113
    :cond_5c
    return-void
.end method

.method public constructor <init>([B[Ljava/security/cert/X509Certificate;)V
    .registers 7
    .parameter "certificate_types"
    .parameter "accepted"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 63
    if-nez p2, :cond_c

    .line 64
    const/16 v2, 0x50

    const-string v3, "CertificateRequest: array of certificate authority certificates is null"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 67
    :cond_c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, totalPrincipalsLength:I
    array-length v2, p2

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 71
    array-length v2, p2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v2, p2

    if-ge v0, v2, :cond_3e

    .line 73
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    aput-object v3, v2, v0

    .line 74
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 75
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 78
    :cond_3e
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    .line 79
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 145
    const/16 v0, 0xd

    return v0
.end method

.method public getTypesAsString()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    if-nez v2, :cond_29

    .line 153
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_29

    .line 155
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_22

    .line 157
    const/16 v2, 0x32

    const-string v3, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 160
    :cond_22
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 163
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_29
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    return-object v2
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 123
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 125
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 127
    :cond_17
    const/4 v0, 0x0

    .line 128
    .local v0, authoritiesLength:I
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 129
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 131
    :cond_29
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 132
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 133
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 134
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 136
    :cond_46
    return-void
.end method
