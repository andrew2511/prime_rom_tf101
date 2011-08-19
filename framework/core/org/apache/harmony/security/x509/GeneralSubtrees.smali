.class public Lorg/apache/harmony/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalSubtrees:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "generalSubtrees"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addSubtree(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .registers 3
    .parameter "subtree"

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    if-nez v0, :cond_e

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    .line 87
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    if-nez v0, :cond_c

    .line 97
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    .line 99
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    return-object v0
.end method

.method public getSubtrees()Ljava/util/List;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method
