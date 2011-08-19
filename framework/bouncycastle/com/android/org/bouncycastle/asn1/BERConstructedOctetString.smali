.class public Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
.super Lcom/android/org/bouncycastle/asn1/DEROctetString;
.source "BERConstructedOctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .parameter "octs"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "string"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 51
    return-void
.end method

.method private generateOcts()Ljava/util/Vector;
    .registers 8

    .prologue
    .line 93
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 94
    .local v3, vec:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_2e

    .line 98
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_2b

    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v0, v4

    .line 107
    .local v0, end:I
    :goto_15
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 109
    .local v2, nStr:[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v4, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_6

    .line 104
    .end local v0           #end:I
    .end local v2           #nStr:[B
    :cond_2b
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0       #end:I
    goto :goto_15

    .line 114
    .end local v0           #end:I
    :cond_2e
    return-object v3
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .registers 8
    .parameter "octs"

    .prologue
    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v2, v4, :cond_62

    .line 25
    :try_start_c
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 27
    .local v3, o:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_43

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 29
    .end local v3           #o:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 31
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found in input should only contain DEROctetString"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_43
    move-exception v4

    move-object v1, v4

    .line 35
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception converting octets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    .end local v1           #e:Ljava/io/IOException;
    :cond_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_9

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2c

    .line 123
    :cond_9
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 125
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 131
    .local v0, e:Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 133
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_17

    .line 136
    :cond_25
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 137
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 143
    .end local v0           #e:Ljava/util/Enumeration;
    :goto_2b
    return-void

    .line 141
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_2b
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_d

    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_c
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method
