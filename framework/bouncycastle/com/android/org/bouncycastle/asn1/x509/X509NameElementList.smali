.class public Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;
.super Ljava/lang/Object;
.source "X509NameElementList.java"


# instance fields
.field private added:Ljava/util/BitSet;

.field private key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private rest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private value0:Ljava/lang/String;

.field private value1:Ljava/lang/String;

.field private value2:Ljava/lang/String;

.field private value3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->added:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V
    .registers 7
    .parameter "key"
    .parameter "value"
    .parameter "added"

    .prologue
    .line 73
    if-nez p1, :cond_a

    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_a
    if-nez p2, :cond_14

    .line 78
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_14
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    .line 83
    .local v0, sz:I
    packed-switch v0, :pswitch_data_4c

    .line 110
    :goto_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->rest:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->rest:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_23
    if-eqz p3, :cond_2a

    .line 117
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->added:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 120
    :cond_2a
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    .line 121
    return-void

    .line 85
    :pswitch_2f
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 86
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value0:Ljava/lang/String;

    goto :goto_23

    .line 90
    :pswitch_34
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value1:Ljava/lang/String;

    goto :goto_23

    .line 95
    :pswitch_39
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value2:Ljava/lang/String;

    goto :goto_23

    .line 100
    :pswitch_3e
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 101
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value3:Ljava/lang/String;

    goto :goto_23

    .line 106
    :pswitch_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->rest:Ljava/util/ArrayList;

    goto :goto_19

    .line 83
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
    .end packed-switch
.end method

.method public getAdded(I)Z
    .registers 4
    .parameter "n"

    .prologue
    .line 184
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_10

    .line 185
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->added:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 4
    .parameter "n"

    .prologue
    .line 144
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_10

    .line 145
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_10
    packed-switch p1, :pswitch_data_2e

    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->rest:Ljava/util/ArrayList;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, p0

    :goto_21
    return-object v0

    .line 149
    .restart local p0
    :pswitch_22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_21

    .line 150
    :pswitch_25
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_21

    .line 151
    :pswitch_28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_21

    .line 152
    :pswitch_2b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_21

    .line 148
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 164
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_10

    .line 165
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_10
    packed-switch p1, :pswitch_data_30

    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->rest:Ljava/util/ArrayList;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_23
    return-object v0

    .line 169
    .restart local p0
    :pswitch_24
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value0:Ljava/lang/String;

    goto :goto_23

    .line 170
    :pswitch_27
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value1:Ljava/lang/String;

    goto :goto_23

    .line 171
    :pswitch_2a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value2:Ljava/lang/String;

    goto :goto_23

    .line 172
    :pswitch_2d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->value3:Ljava/lang/String;

    goto :goto_23

    .line 168
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public reverse()Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;
    .registers 6

    .prologue
    .line 198
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    .line 200
    .local v1, result:Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_1e

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 204
    :cond_1e
    return-object v1
.end method

.method public setLastAddedFlag()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->added:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 128
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameElementList;->size:I

    return v0
.end method
