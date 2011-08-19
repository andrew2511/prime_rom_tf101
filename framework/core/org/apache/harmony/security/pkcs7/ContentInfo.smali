.class public Lorg/apache/harmony/security/pkcs7/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final DATA:[I

.field public static final DIGESTED_DATA:[I

.field public static final ENCRYPTED_DATA:[I

.field public static final ENVELOPED_DATA:[I

.field public static final SIGNED_AND_ENVELOPED_DATA:[I

.field public static final SIGNED_DATA:[I


# instance fields
.field private content:Ljava/lang/Object;

.field private encoding:[B

.field private oid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x7

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENVELOPED_DATA:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_AND_ENVELOPED_DATA:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DIGESTED_DATA:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENCRYPTED_DATA:[I

    .line 112
    new-instance v0, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 47
    nop

    :array_4a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_5c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_6e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_80
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_92
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_a4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([ILjava/lang/Object;)V
    .registers 3
    .parameter "oid"
    .parameter "content"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    .line 60
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private constructor <init>([ILjava/lang/Object;[B)V
    .registers 4
    .parameter "oid"
    .parameter "content"
    .parameter "encoding"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    .line 67
    return-void
.end method

.method synthetic constructor <init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentType()[I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    if-nez v0, :cond_c

    .line 86
    sget-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    .line 91
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    return-object v0
.end method

.method public getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    sget-object v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    iget-object p0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/pkcs7/SignedData;

    move-object v0, p0

    .line 73
    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v2, "==== ContentInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "\n== ContentType (OID): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 99
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 102
    :cond_24
    const-string v2, "\n== Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    if-eqz v2, :cond_3b

    .line 104
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_3b
    const-string v2, "\n== Content End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "\n==== ContentInfo End\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
