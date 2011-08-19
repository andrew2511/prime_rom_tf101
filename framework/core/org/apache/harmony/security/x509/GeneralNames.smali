.class public Lorg/apache/harmony/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalNames:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralNames$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralNames$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "generalNames"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .registers 3
    .parameter "generalNames"
    .parameter "encoding"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addName(Lorg/apache/harmony/security/x509/GeneralName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 116
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v0, :cond_e

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    .line 119
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 156
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v1, :cond_5

    .line 164
    :cond_4
    return-void

    .line 159
    :cond_5
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 162
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    if-nez v0, :cond_c

    .line 146
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    .line 148
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->encoding:[B

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 88
    :cond_c
    const/4 v0, 0x0

    .line 90
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d
.end method

.method public getPairsList()Ljava/util/List;
    .registers 4

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, result:Ljava/util/ArrayList;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    if-nez v2, :cond_a

    .line 106
    .end local p0
    :cond_9
    return-object v1

    .line 102
    .restart local p0
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .end local p0
    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method
