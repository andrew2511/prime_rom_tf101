.class public Lorg/apache/harmony/security/asn1/InformationObjectSet;
.super Ljava/lang/Object;
.source "InformationObjectSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    }
.end annotation


# instance fields
.field private final capacity:I

.field private final pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    const/16 v0, 0x40

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "capacity"
    .parameter "size"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    .line 47
    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    .line 48
    return-void
.end method

.method private hashIntArray([I)I
    .registers 6
    .parameter "array"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_11

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    .line 92
    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_11
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public get([I)Ljava/lang/Object;
    .registers 7
    .parameter "oid"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->hashIntArray([I)I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    rem-int v1, v3, v4

    .line 79
    .local v1, index:I
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    aget-object v2, v3, v1

    .line 80
    .local v2, list:[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    aget-object v3, v2, v0

    if-eqz v3, :cond_23

    .line 81
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 82
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->object:Ljava/lang/Object;

    .line 85
    :goto_1f
    return-object v3

    .line 80
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 85
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public put(Lorg/apache/harmony/security/x501/AttributeType;)V
    .registers 3
    .parameter "at"

    .prologue
    .line 51
    iget-object v0, p1, Lorg/apache/harmony/security/x501/AttributeType;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->getOid()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->put([ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public put([ILjava/lang/Object;)V
    .registers 8
    .parameter "oid"
    .parameter "object"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->hashIntArray([I)I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    rem-int v1, v3, v4

    .line 58
    .local v1, index:I
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->pool:[[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    aget-object v2, v3, v1

    .line 59
    .local v2, list:[Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
    const/4 v0, 0x0

    .line 60
    .local v0, i:I
    :goto_d
    aget-object v3, v2, v0

    if-eqz v3, :cond_24

    .line 63
    aget-object v3, v2, v0

    iget-object v3, v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 64
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 60
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 69
    :cond_24
    iget v3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet;->capacity:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_30

    .line 70
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 72
    :cond_30
    new-instance v3, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;

    invoke-direct {v3, p1, p2}, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;-><init>([ILjava/lang/Object;)V

    aput-object v3, v2, v0

    .line 73
    return-void
.end method
