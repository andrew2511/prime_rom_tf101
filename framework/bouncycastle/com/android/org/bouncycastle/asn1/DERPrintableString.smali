.class public Lcom/android/org/bouncycastle/asn1/DERPrintableString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERPrintableString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "string"
    .parameter "validate"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 97
    if-eqz p2, :cond_13

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "string"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    array-length v2, p1

    new-array v0, v2, [C

    .line 66
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 68
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 72
    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .registers 4
    .parameter "obj"

    .prologue
    .line 24
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_a

    .line 26
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .end local p0
    move-object v0, p0

    .line 36
    :goto_9
    return-object v0

    .line 29
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_9

    .line 34
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-result-object v0

    goto :goto_9

    .line 39
    .restart local p0
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .registers 6
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, v4

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_34

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, ch:C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_14

    move v2, v3

    .line 208
    .end local v0           #ch:C
    :goto_13
    return v2

    .line 173
    .restart local v0       #ch:C
    :cond_14
    const/16 v2, 0x61

    if-gt v2, v0, :cond_1f

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1f

    .line 164
    :cond_1c
    :sswitch_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 178
    :cond_1f
    const/16 v2, 0x41

    if-gt v2, v0, :cond_27

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1c

    .line 183
    :cond_27
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2f

    const/16 v2, 0x39

    if-le v0, v2, :cond_1c

    .line 188
    :cond_2f
    sparse-switch v0, :sswitch_data_36

    move v2, v3

    .line 205
    goto :goto_13

    .end local v0           #ch:C
    :cond_34
    move v2, v4

    .line 208
    goto :goto_13

    .line 188
    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_1c
        0x27 -> :sswitch_1c
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1c
        0x2b -> :sswitch_1c
        0x2c -> :sswitch_1c
        0x2d -> :sswitch_1c
        0x2e -> :sswitch_1c
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_1c
        0x3d -> :sswitch_1c
        0x3f -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 140
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-nez v2, :cond_6

    .line 142
    const/4 v2, 0x0

    .line 147
    :goto_5
    return v2

    .line 145
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-object v1, v0

    .line 147
    .local v1, s:Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 130
    return-void
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 117
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 119
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 122
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method
