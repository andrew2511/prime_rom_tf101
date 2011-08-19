.class public abstract Lorg/apache/harmony/security/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "ASN1Type.java"

# interfaces
.implements Lorg/apache/harmony/security/asn1/ASN1Constants;


# instance fields
.field public final constrId:I

.field public final id:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "tagNumber"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "tagClass"
    .parameter "tagNumber"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-gez p2, :cond_d

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tagNumber < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    if-eqz p1, :cond_23

    const/16 v0, 0x40

    if-eq p1, v0, :cond_23

    const/16 v0, 0x80

    if-eq p1, v0, :cond_23

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_23

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid tagClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_23
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_32

    .line 79
    add-int v0, p1, p2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    .line 84
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    .line 85
    return-void

    .line 82
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag long form not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract checkTag(I)Z
.end method

.method public final decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final decode([B)Ljava/lang/Object;
    .registers 3
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final decode([BII)Ljava/lang/Object;
    .registers 5
    .parameter "encoded"
    .parameter "offset"
    .parameter "encodingLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/lang/Object;)[B
    .registers 4
    .parameter "object"

    .prologue
    .line 120
    new-instance v0, Lorg/apache/harmony/security/asn1/DerOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V

    .line 121
    .local v0, out:Lorg/apache/harmony/security/asn1/DerOutputStream;
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    return-object v1
.end method

.method public abstract encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public abstract encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .registers 6
    .parameter "out"

    .prologue
    .line 187
    const/4 v1, 0x1

    .line 191
    .local v1, len:I
    add-int/lit8 v1, v1, 0x1

    .line 192
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v3, 0x7f

    if-le v2, v3, :cond_16

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, cur:I
    :goto_f
    if-lez v0, :cond_16

    .line 196
    shr-int/lit8 v0, v0, 0x8

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 199
    .end local v0           #cur:I
    :cond_16
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    .line 201
    return v1
.end method

.method public abstract setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(tag: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    .local v0, decoder:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public final verify([B)V
    .registers 3
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 108
    .local v0, decoder:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->setVerify()V

    .line 109
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 110
    return-void
.end method
