.class public final Lcom/android/org/bouncycastle/asn1/OrderedTable;
.super Ljava/lang/Object;
.source "OrderedTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/OrderedTable$1;,
        Lcom/android/org/bouncycastle/asn1/OrderedTable$KeyEnumeration;
    }
.end annotation


# instance fields
.field private key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private rest:[Ljava/lang/Object;

.field private size:I

.field private value0:Ljava/lang/Object;

.field private value1:Ljava/lang/Object;

.field private value2:Ljava/lang/Object;

.field private value3:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/asn1/OrderedTable;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    return v0
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 65
    if-nez p1, :cond_b

    .line 66
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_b
    if-nez p2, :cond_15

    .line 70
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "value == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_15
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    .line 75
    .local v3, sz:I
    packed-switch v3, :pswitch_data_68

    .line 104
    const/4 v4, 0x4

    sub-int v4, v3, v4

    mul-int/lit8 v0, v4, 0x2

    .line 105
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .line 106
    .local v1, index1:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v1, v4, :cond_36

    .line 108
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0xa

    new-array v2, v4, [Ljava/lang/Object;

    .line 109
    .local v2, newRest:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    .line 112
    .end local v2           #newRest:[Ljava/lang/Object;
    :cond_36
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 113
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 118
    .end local v0           #index:I
    .end local v1           #index1:I
    :goto_3e
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    .line 119
    return-void

    .line 77
    :pswitch_43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 78
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value0:Ljava/lang/Object;

    goto :goto_3e

    .line 82
    :pswitch_48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 83
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value1:Ljava/lang/Object;

    goto :goto_3e

    .line 87
    :pswitch_4d
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 88
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value2:Ljava/lang/Object;

    goto :goto_3e

    .line 92
    :pswitch_52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value3:Ljava/lang/Object;

    goto :goto_3e

    .line 98
    :pswitch_57
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object p2, v4, v5

    goto :goto_3e

    .line 75
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_43
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public get(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;
    .registers 7
    .parameter "key"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v1

    .line 136
    .local v1, keyHash:I
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    .line 138
    .local v3, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    if-ge v0, v4, :cond_23

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 140
    .local v2, probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v4

    if-ne v4, v1, :cond_20

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    .line 146
    .end local v2           #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :goto_1f
    return-object v4

    .line 138
    .restart local v2       #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 146
    .end local v2           #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_23
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 4
    .parameter "n"

    .prologue
    .line 188
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    if-lt p1, v0, :cond_10

    .line 189
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_10
    packed-switch p1, :pswitch_data_2c

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    aget-object p0, v0, v1

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, p0

    :goto_1f
    return-object v0

    .line 193
    .restart local p0
    :pswitch_20
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key0:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 194
    :pswitch_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 195
    :pswitch_26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key2:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 196
    :pswitch_29
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->key3:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 192
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public getKeys()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Lcom/android/org/bouncycastle/asn1/OrderedTable$KeyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/OrderedTable$KeyEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/OrderedTable;Lcom/android/org/bouncycastle/asn1/OrderedTable$1;)V

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 4
    .parameter "n"

    .prologue
    .line 208
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    if-lt p1, v0, :cond_10

    .line 209
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_10
    packed-switch p1, :pswitch_data_2c

    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_1e
    return-object v0

    .line 213
    :pswitch_1f
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value0:Ljava/lang/Object;

    goto :goto_1e

    .line 214
    :pswitch_22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value1:Ljava/lang/Object;

    goto :goto_1e

    .line 215
    :pswitch_25
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value2:Ljava/lang/Object;

    goto :goto_1e

    .line 216
    :pswitch_28
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value3:Ljava/lang/Object;

    goto :goto_1e

    .line 212
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public put(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V
    .registers 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 158
    if-nez p1, :cond_a

    .line 159
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "key == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :cond_a
    if-nez p2, :cond_14

    .line 163
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "value == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_14
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v1

    .line 167
    .local v1, keyHash:I
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    .line 169
    .local v3, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    if-ge v0, v4, :cond_36

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->getKey(I)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 171
    .local v2, probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v4

    if-ne v4, v1, :cond_33

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 173
    invoke-virtual {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->setValue(ILjava/lang/Object;)V

    .line 179
    .end local v2           #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :goto_32
    return-void

    .line 169
    .restart local v2       #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 178
    .end local v2           #probe:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_36
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/OrderedTable;->add(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    goto :goto_32
.end method

.method public setValue(ILjava/lang/Object;)V
    .registers 5
    .parameter "n"
    .parameter "value"

    .prologue
    .line 228
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    if-lt p1, v0, :cond_10

    .line 229
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_10
    if-nez p2, :cond_1a

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1a
    packed-switch p1, :pswitch_data_36

    .line 240
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->rest:[Ljava/lang/Object;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    :goto_28
    return-void

    .line 236
    :pswitch_29
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value0:Ljava/lang/Object;

    goto :goto_28

    .line 237
    :pswitch_2c
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value1:Ljava/lang/Object;

    goto :goto_28

    .line 238
    :pswitch_2f
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value2:Ljava/lang/Object;

    goto :goto_28

    .line 239
    :pswitch_32
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->value3:Ljava/lang/Object;

    goto :goto_28

    .line 235
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public size()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OrderedTable;->size:I

    return v0
.end method
