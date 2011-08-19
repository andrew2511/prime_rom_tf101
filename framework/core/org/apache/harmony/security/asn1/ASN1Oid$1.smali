.class final Lorg/apache/harmony/security/asn1/ASN1Oid$1;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1Oid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1Oid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v4, v5, v6

    .line 163
    .local v4, octet:I
    and-int/lit8 v1, v4, 0x7f

    .line 165
    .local v1, element:I
    const/4 v2, 0x0

    .line 166
    .local v2, index:I
    :goto_10
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_24

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 168
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 169
    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_10

    .line 172
    :cond_24
    const/16 v5, 0x4f

    if-le v1, v5, :cond_5e

    .line 173
    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const/16 v5, 0x50

    sub-int v5, v1, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    :goto_37
    const/4 v3, 0x2

    .local v3, j:I
    :goto_38
    iget v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    if-ge v3, v5, :cond_72

    .line 184
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 188
    and-int/lit8 v1, v4, 0x7f

    .line 190
    :goto_4a
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_6c

    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    .line 193
    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_4a

    .line 177
    .end local v3           #j:I
    :cond_5e
    div-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    rem-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 196
    .restart local v3       #j:I
    :cond_6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 199
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 205
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 207
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 208
    return-void
.end method
