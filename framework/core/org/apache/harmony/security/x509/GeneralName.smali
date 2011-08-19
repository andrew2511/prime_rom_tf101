.class public Lorg/apache/harmony/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice; = null

.field public static final DIR_NAME:I = 0x4

.field public static final DNS_NAME:I = 0x2

.field public static final EDIP_NAME:I = 0x5

.field public static final IP_ADDR:I = 0x7

.field public static final OTHER_NAME:I = 0x0

.field public static final REG_ID:I = 0x8

.field public static final RFC822_NAME:I = 0x1

.field public static final UR_ID:I = 0x6

.field public static final X400_ADDR:I = 0x3

.field private static nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private name:Ljava/lang/Object;

.field private name_encoding:[B

.field private tag:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 108
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v4

    .line 109
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v5

    .line 110
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v6

    .line 111
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v7

    .line 113
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v1, v0, v8

    .line 114
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/16 v1, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v0, v1

    .line 861
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName$1;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    sget-object v5, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x6

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/16 v4, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-nez p2, :cond_d

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_d
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 151
    packed-switch p1, :pswitch_data_76

    .line 182
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_31
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown string representation for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_50
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkDNS(Ljava/lang/String;)V

    .line 161
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 184
    :goto_55
    return-void

    .line 166
    :pswitch_56
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkURI(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_55

    .line 170
    :pswitch_5c
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_55

    .line 173
    :pswitch_5f
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->oidStrToInts(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_55

    .line 176
    :pswitch_66
    new-instance v0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_55

    .line 179
    :pswitch_6e
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->ipStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_55

    .line 151
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5c
        :pswitch_50
        :pswitch_31
        :pswitch_66
        :pswitch_31
        :pswitch_56
        :pswitch_6e
        :pswitch_5f
    .end packed-switch
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-nez p2, :cond_e

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_e
    if-ltz p1, :cond_14

    const/16 v0, 0x8

    if-le p1, v0, :cond_2d

    .line 252
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeneralName: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2d
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 255
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 256
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 210
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 219
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/ORAddress;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 201
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/OtherName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 192
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    array-length v0, p1

    .line 233
    .local v0, length:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1c

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name.length invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1c
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 237
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/GeneralName;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-object p1
.end method

.method private static badIp(ILjava/lang/String;)Ljava/io/IOException;
    .registers 5
    .parameter "v"
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect IPv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " representation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkDNS(Ljava/lang/String;)V
    .registers 12
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/16 v8, 0x2d

    const/4 v7, 0x1

    const/16 v6, 0x2e

    .line 583
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 585
    .local v0, bytes:[B
    const/4 v2, 0x1

    .line 586
    .local v2, first_letter:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    array-length v4, v0

    if-ge v3, v4, :cond_9f

    .line 587
    aget-byte v1, v0, v3

    .line 588
    .local v1, ch:B
    if-eqz v2, :cond_53

    .line 589
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2c

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_2c

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_2c

    .line 590
    const/4 v2, 0x0

    .line 586
    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 593
    :cond_2c
    const/16 v4, 0x7a

    if-gt v1, v4, :cond_34

    const/16 v4, 0x61

    if-ge v1, v4, :cond_51

    :cond_34
    if-lt v1, v9, :cond_38

    if-le v1, v10, :cond_51

    .line 594
    :cond_38
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS name must start with a letter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 596
    :cond_51
    const/4 v2, 0x0

    .line 597
    goto :goto_29

    .line 599
    :cond_53
    const/16 v4, 0x61

    if-lt v1, v4, :cond_5b

    const/16 v4, 0x7a

    if-le v1, v4, :cond_7c

    :cond_5b
    if-lt v1, v9, :cond_5f

    if-le v1, v10, :cond_7c

    :cond_5f
    if-eq v1, v8, :cond_7c

    if-eq v1, v6, :cond_7c

    .line 601
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect DNS name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 603
    :cond_7c
    if-ne v1, v6, :cond_29

    .line 606
    sub-int v4, v3, v7

    aget-byte v4, v0, v4

    if-ne v4, v8, :cond_9d

    .line 607
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect DNS name: label ends with \'-\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 609
    :cond_9d
    const/4 v2, 0x1

    goto :goto_29

    .line 612
    .end local v1           #ch:B
    :cond_9f
    return-void
.end method

.method public static checkURI(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, ur:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 622
    :cond_15
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No scheme or scheme-specific-part in uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_2e} :catch_2e

    .line 627
    .end local v1           #ur:Ljava/net/URI;
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 628
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad representation of uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 624
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v1       #ur:Ljava/net/URI;
    .restart local p0
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 625
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relative uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6e
    .catch Ljava/net/URISyntaxException; {:try_start_4f .. :try_end_6e} :catch_2e

    .line 631
    :cond_6e
    return-void
.end method

.method private getBytesAsString([B)Ljava/lang/String;
    .registers 7
    .parameter "data"

    .prologue
    .line 499
    const-string v1, ""

    .line 500
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_42

    .line 501
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 507
    .end local v2           #tail:Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method public static ipBytesToStr([B)Ljava/lang/String;
    .registers 6
    .parameter "ip"

    .prologue
    const/4 v4, 0x1

    .line 842
    const-string v1, ""

    .line 843
    .local v1, result:Ljava/lang/String;
    array-length v2, p0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_45

    .line 844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_87

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    array-length v2, p0

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_3f

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_42

    const-string v3, "/"

    :goto_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 847
    :cond_42
    const-string v3, "."

    goto :goto_37

    .line 851
    .end local v0           #i:I
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_46
    array-length v2, p0

    if-ge v0, v2, :cond_87

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_81

    array-length v2, p0

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_81

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    if-ne v0, v3, :cond_84

    const-string v3, "/"

    :goto_79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 854
    :cond_84
    const-string v3, ":"

    goto :goto_79

    .line 858
    :cond_87
    return-object v1
.end method

.method public static ipStrToBytes(Ljava/lang/String;)[B
    .registers 12
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x1

    move v1, v0

    .line 685
    .local v1, isIPv4:Z
    :goto_a
    if-eqz v1, :cond_5b

    const/4 v0, 0x4

    .line 686
    .local v0, num_components:I
    :goto_d
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1d8

    .line 687
    mul-int/lit8 v0, v0, 0x2

    move v3, v0

    .line 690
    .end local v0           #num_components:I
    .local v3, num_components:I
    :goto_18
    new-array v6, v3, [B

    .line 691
    .local v6, result:[B
    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 693
    .local v4, ip_bytes:[B
    const/4 v0, 0x0

    .line 695
    .local v0, component:I
    const/4 v5, 0x0

    .line 696
    .local v5, reading_second_bound:Z
    if-eqz v1, :cond_fb

    .line 701
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 702
    .end local v1           #i:I
    .local v2, i:I
    :goto_26
    array-length v1, v4

    if-ge v2, v1, :cond_1d5

    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, digits:I
    const/4 v7, 0x0

    .line 706
    .local v7, value:I
    :goto_2b
    array-length v8, v4

    if-ge v2, v8, :cond_69

    aget-byte v8, v4, v2

    const/16 v9, 0x30

    if-lt v8, v9, :cond_69

    aget-byte v8, v4, v2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_69

    .line 707
    add-int/lit8 v1, v1, 0x1

    .line 708
    const/4 v8, 0x3

    if-le v1, v8, :cond_5e

    .line 709
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #digits:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component of IPv4 address should consist of no more than 3 decimal digits: "

    .end local v2           #i:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    .end local v3           #num_components:I
    .end local v4           #ip_bytes:[B
    .end local v5           #reading_second_bound:Z
    .end local v6           #result:[B
    .end local v7           #value:I
    .restart local p0
    :cond_58
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    .line 685
    .local v1, isIPv4:Z
    :cond_5b
    const/16 v0, 0x10

    goto :goto_d

    .line 711
    .restart local v0       #component:I
    .local v1, digits:I
    .restart local v2       #i:I
    .restart local v3       #num_components:I
    .restart local v4       #ip_bytes:[B
    .restart local v5       #reading_second_bound:Z
    .restart local v6       #result:[B
    .restart local v7       #value:I
    :cond_5e
    mul-int/lit8 v7, v7, 0xa

    aget-byte v8, v4, v2

    .end local v7           #value:I
    const/16 v9, 0x30

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 712
    .restart local v7       #value:I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 714
    :cond_69
    if-nez v1, :cond_71

    .line 716
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #component:I
    move-result-object p0

    .end local p0
    throw p0

    .line 718
    .restart local v0       #component:I
    .restart local p0
    :cond_71
    int-to-byte v1, v7

    aput-byte v1, v6, v0

    .line 719
    .end local v1           #digits:I
    add-int/lit8 v0, v0, 0x1

    .line 720
    array-length v1, v4

    if-lt v2, v1, :cond_95

    move v1, v2

    .line 746
    .end local v2           #i:I
    .end local v7           #value:I
    .local v1, i:I
    :goto_7a
    if-eq v0, v3, :cond_f8

    .line 747
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #i:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPv4 address should consist of 4 decimal numbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    .restart local v0       #component:I
    .restart local v2       #i:I
    .restart local v7       #value:I
    .restart local p0
    :cond_95
    aget-byte v1, v4, v2

    const/16 v7, 0x2e

    if-eq v1, v7, :cond_a7

    .end local v7           #value:I
    aget-byte v1, v4, v2

    const/16 v7, 0x2f

    if-eq v1, v7, :cond_a7

    .line 726
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #component:I
    move-result-object p0

    .end local p0
    throw p0

    .line 729
    .restart local v0       #component:I
    .restart local p0
    :cond_a7
    aget-byte v1, v4, v2

    const/16 v7, 0x2f

    if-ne v1, v7, :cond_d3

    .line 730
    if-eqz v5, :cond_b5

    .line 732
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #component:I
    move-result-object p0

    .end local p0
    throw p0

    .line 734
    .restart local v0       #component:I
    .restart local p0
    :cond_b5
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d1

    .line 735
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPv4 address should consist of 4 decimal numbers: "

    .end local v2           #i:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    .restart local v0       #component:I
    .restart local v2       #i:I
    .restart local p0
    :cond_d1
    const/4 v1, 0x1

    .end local v5           #reading_second_bound:Z
    .local v1, reading_second_bound:Z
    move v5, v1

    .line 740
    .end local v1           #reading_second_bound:Z
    .restart local v5       #reading_second_bound:Z
    :cond_d3
    if-eqz v5, :cond_f1

    const/4 v1, 0x7

    :goto_d6
    if-le v0, v1, :cond_f3

    .line 741
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPv4 address should consist of 4 decimal numbers: "

    .end local v2           #i:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    .restart local v0       #component:I
    .restart local v2       #i:I
    .restart local p0
    :cond_f1
    const/4 v1, 0x3

    goto :goto_d6

    .line 743
    :cond_f3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .local v1, i:I
    move v2, v1

    .line 744
    .end local v1           #i:I
    .restart local v2       #i:I
    goto/16 :goto_26

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_f8
    move p0, v0

    .end local v0           #component:I
    .local p0, component:I
    move v0, v5

    .line 820
    .end local v1           #i:I
    .end local v3           #num_components:I
    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    :goto_fa
    return-object v6

    .line 755
    .local v0, component:I
    .local v1, isIPv4:Z
    .restart local v3       #num_components:I
    .restart local v5       #reading_second_bound:Z
    .local p0, ip:Ljava/lang/String;
    :cond_fb
    array-length v1, v4

    .end local v1           #isIPv4:Z
    const/16 v2, 0x27

    if-eq v1, v2, :cond_10b

    array-length v1, v4

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_10b

    .line 757
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #component:I
    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 759
    .restart local v0       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_10b
    const/4 v7, 0x0

    .line 761
    .restart local v7       #value:I
    const/4 v3, 0x0

    .line 763
    .local v3, second_hex:Z
    const/4 v1, 0x0

    .line 764
    .local v1, expect_delimiter:Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    move v8, v7

    .end local v7           #value:I
    .local v8, value:I
    move v7, v3

    .end local v3           #second_hex:Z
    .local v7, second_hex:Z
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .local v2, expect_delimiter:I
    move v1, v0

    .end local v0           #component:I
    .local v1, component:I
    :goto_114
    array-length v0, v4

    if-ge v3, v0, :cond_1c2

    .line 765
    aget-byte v0, v4, v3

    .line 766
    .local v0, bytik:B
    const/16 v9, 0x30

    if-lt v0, v9, :cond_12d

    const/16 v9, 0x39

    if-gt v0, v9, :cond_12d

    .line 767
    const/16 v8, 0x30

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .line 798
    .end local v0           #value:I
    .restart local v8       #value:I
    :goto_125
    if-eqz v2, :cond_19f

    .line 799
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 768
    .local v0, bytik:B
    .restart local p0       #ip:Ljava/lang/String;
    :cond_12d
    const/16 v9, 0x41

    if-lt v0, v9, :cond_13a

    const/16 v9, 0x46

    if-gt v0, v9, :cond_13a

    .line 769
    const/16 v8, 0x37

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .end local v0           #value:I
    .restart local v8       #value:I
    goto :goto_125

    .line 770
    .local v0, bytik:B
    :cond_13a
    const/16 v9, 0x61

    if-lt v0, v9, :cond_147

    const/16 v9, 0x66

    if-gt v0, v9, :cond_147

    .line 771
    const/16 v8, 0x57

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .end local v0           #value:I
    .restart local v8       #value:I
    goto :goto_125

    .line 772
    .local v0, bytik:B
    :cond_147
    if-eqz v7, :cond_14f

    .line 775
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #bytik:B
    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 776
    .restart local v0       #bytik:B
    .restart local p0       #ip:Ljava/lang/String;
    :cond_14f
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_157

    .end local v2           #expect_delimiter:I
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_199

    .line 777
    :cond_157
    rem-int/lit8 v2, v1, 0x2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_162

    .line 780
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #bytik:B
    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 782
    .restart local v0       #bytik:B
    .restart local p0       #ip:Ljava/lang/String;
    :cond_162
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1d3

    .line 783
    if-eqz v5, :cond_16e

    .line 785
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #bytik:B
    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 787
    .restart local v0       #bytik:B
    .restart local p0       #ip:Ljava/lang/String;
    :cond_16e
    const/16 v0, 0x10

    if-eq v1, v0, :cond_18b

    .line 789
    .end local v0           #bytik:B
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #component:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPv6 address should consist of 8 hexadecimal numbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_18b
    const/4 v0, 0x1

    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    move v2, v0

    .line 793
    .end local v0           #reading_second_bound:Z
    .local v2, reading_second_bound:Z
    :goto_18d
    const/4 v0, 0x0

    .local v0, expect_delimiter:Z
    move v5, v2

    .end local v2           #reading_second_bound:Z
    .restart local v5       #reading_second_bound:Z
    move v10, v0

    .local v10, expect_delimiter:I
    move v0, v1

    .end local v1           #component:I
    .local v0, component:I
    move v1, v10

    .line 764
    .end local v10           #expect_delimiter:I
    .local v1, expect_delimiter:I
    :goto_192
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    move v2, v1

    .end local v1           #expect_delimiter:I
    .local v2, expect_delimiter:I
    move v1, v0

    .end local v0           #component:I
    .local v1, component:I
    goto/16 :goto_114

    .line 796
    .end local v2           #expect_delimiter:I
    .local v0, bytik:B
    :cond_199
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    .end local v0           #bytik:B
    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .line 801
    .restart local v2       #expect_delimiter:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_19f
    if-nez v7, :cond_1ab

    .line 803
    shl-int/lit8 v0, v8, 0x4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 804
    const/4 v0, 0x1

    .end local v7           #second_hex:Z
    .local v0, second_hex:Z
    move v7, v0

    .end local v0           #second_hex:Z
    .restart local v7       #second_hex:Z
    move v0, v1

    .end local v1           #component:I
    .local v0, component:I
    move v1, v2

    .end local v2           #expect_delimiter:I
    .local v1, expect_delimiter:I
    goto :goto_192

    .line 807
    .end local v0           #component:I
    .local v1, component:I
    .restart local v2       #expect_delimiter:I
    :cond_1ab
    aget-byte v0, v6, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 810
    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1bf

    .end local v2           #expect_delimiter:I
    const/4 v0, 0x1

    move v2, v0

    .line 811
    .local v2, expect_delimiter:Z
    :goto_1ba
    const/4 v7, 0x0

    .line 812
    add-int/lit8 v0, v1, 0x1

    .end local v1           #component:I
    .restart local v0       #component:I
    move v1, v2

    .local v1, expect_delimiter:I
    goto :goto_192

    .line 810
    .end local v0           #component:I
    .end local v2           #expect_delimiter:Z
    .local v1, component:I
    :cond_1bf
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1ba

    .line 816
    .local v2, expect_delimiter:I
    :cond_1c2
    if-nez v7, :cond_1c9

    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1cf

    .line 817
    .end local v2           #expect_delimiter:I
    :cond_1c9
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;->badIp(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    throw p0

    .restart local p0       #ip:Ljava/lang/String;
    :cond_1cf
    move v0, v5

    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    move p0, v1

    .end local v1           #component:I
    .local p0, component:I
    goto/16 :goto_fa

    .local v0, bytik:B
    .restart local v1       #component:I
    .restart local v5       #reading_second_bound:Z
    .local p0, ip:Ljava/lang/String;
    :cond_1d3
    move v2, v5

    .end local v5           #reading_second_bound:Z
    .local v2, reading_second_bound:Z
    goto :goto_18d

    .end local v1           #component:I
    .end local v7           #second_hex:Z
    .end local v8           #value:I
    .local v0, component:I
    .local v2, i:I
    .local v3, num_components:I
    .restart local v5       #reading_second_bound:Z
    :cond_1d5
    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto/16 :goto_7a

    .end local v3           #num_components:I
    .end local v4           #ip_bytes:[B
    .end local v5           #reading_second_bound:Z
    .end local v6           #result:[B
    .local v0, num_components:I
    .local v1, isIPv4:Z
    :cond_1d8
    move v3, v0

    .end local v0           #num_components:I
    .restart local v3       #num_components:I
    goto/16 :goto_18
.end method

.method public static oidStrToInts(Ljava/lang/String;)[I
    .registers 14
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0x2e

    .line 637
    sget-object v9, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 638
    .local v0, bytes:[B
    array-length v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-byte v9, v0, v9

    if-ne v9, v11, :cond_2a

    .line 639
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad OID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 641
    :cond_2a
    array-length v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    new-array v7, v9, [I

    .line 642
    .local v7, result:[I
    const/4 v3, 0x0

    .line 643
    .local v3, number:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    array-length v9, v0

    if-ge v1, v9, :cond_73

    .line 644
    const/4 v8, 0x0

    .line 645
    .local v8, value:I
    move v5, v1

    .line 647
    .local v5, pos:I
    :goto_38
    array-length v9, v0

    if-ge v1, v9, :cond_50

    aget-byte v9, v0, v1

    if-lt v9, v12, :cond_50

    aget-byte v9, v0, v1

    const/16 v10, 0x39

    if-gt v9, v10, :cond_50

    .line 648
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-byte v10, v0, v1

    sub-int/2addr v10, v12

    add-int v8, v9, v10

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_38

    .line 650
    :cond_50
    if-ne v1, v5, :cond_6b

    .line 652
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad OID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 654
    :cond_6b
    add-int/lit8 v4, v3, 0x1

    .end local v3           #number:I
    .local v4, number:I
    aput v8, v7, v3

    .line 655
    array-length v9, v0

    if-lt v1, v9, :cond_8f

    move v3, v4

    .line 662
    .end local v4           #number:I
    .end local v5           #pos:I
    .end local v8           #value:I
    .restart local v3       #number:I
    :cond_73
    const/4 v9, 0x2

    if-ge v3, v9, :cond_b0

    .line 663
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OID should consist of no less than 2 components: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 658
    .end local v3           #number:I
    .restart local v4       #number:I
    .restart local v5       #pos:I
    .restart local v8       #value:I
    :cond_8f
    aget-byte v9, v0, v1

    if-eq v9, v11, :cond_ac

    .line 659
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad OID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 643
    :cond_ac
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #number:I
    .restart local v3       #number:I
    goto :goto_33

    .line 665
    .end local v5           #pos:I
    .end local v8           #value:I
    :cond_b0
    new-array v6, v3, [I

    .line 666
    .local v6, res:[I
    const/4 v1, 0x0

    :goto_b3
    if-ge v1, v3, :cond_bc

    .line 667
    aget v9, v7, v1

    aput v9, v6, v1

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 669
    :cond_bc
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "_gname"

    .prologue
    const/4 v4, 0x0

    .line 297
    instance-of v2, p1, Lorg/apache/harmony/security/x509/GeneralName;

    if-nez v2, :cond_7

    move v2, v4

    .line 324
    .end local p0
    :goto_6
    return v2

    .line 300
    .restart local p0
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    move-object v1, v0

    .line 301
    .local v1, gname:Lorg/apache/harmony/security/x509/GeneralName;
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    iget v3, v1, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    if-eq v2, v3, :cond_13

    move v2, v4

    .line 302
    goto :goto_6

    .line 304
    :cond_13
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v2, :pswitch_data_58

    move v2, v4

    .line 324
    goto :goto_6

    .line 308
    :pswitch_1a
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    .line 311
    .restart local p0
    :pswitch_29
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    iget-object v2, v1, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_6

    .line 314
    .restart local p0
    :pswitch_3a
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    iget-object v2, v1, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_6

    .line 319
    .restart local p0
    :pswitch_4b
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_6

    .line 304
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_1a
        :pswitch_1a
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_1a
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method public getAsList()Ljava/util/List;
    .registers 3

    .prologue
    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v0, result:Ljava/util/ArrayList;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_6c

    .line 490
    .end local p0
    :goto_13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 465
    .restart local p0
    :pswitch_18
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/OtherName;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/OtherName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 470
    .restart local p0
    :pswitch_24
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 473
    :pswitch_2a
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 476
    .restart local p0
    :pswitch_38
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ORAddress;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 479
    .restart local p0
    :pswitch_44
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC2253"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 482
    .restart local p0
    :pswitch_52
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/EDIPartyName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 485
    .restart local p0
    :pswitch_5e
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 463
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_24
        :pswitch_24
        :pswitch_38
        :pswitch_44
        :pswitch_52
        :pswitch_24
        :pswitch_5e
        :pswitch_2a
    .end packed-switch
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    if-nez v0, :cond_c

    .line 560
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    .line 562
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-object v0
.end method

.method public getEncodedName()[B
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    if-nez v0, :cond_12

    .line 572
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 574
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v0, :pswitch_data_1a

    .line 341
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_9
    return v0

    .line 334
    :pswitch_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    .line 339
    :pswitch_11
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    .line 328
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z
    .registers 18
    .parameter "gname"

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    move v13, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v14

    if-eq v13, v14, :cond_d

    .line 361
    const/4 v13, 0x0

    .line 440
    .end local p0
    .end local p1
    :goto_c
    return v13

    .line 363
    .restart local p0
    .restart local p1
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    move v13, v0

    packed-switch v13, :pswitch_data_11a

    .line 440
    const/4 v13, 0x1

    goto :goto_c

    .line 368
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto :goto_c

    .line 374
    .restart local p0
    .restart local p1
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 375
    .local v7, dns:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .local v2, _dns:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 377
    const/4 v13, 0x1

    goto :goto_c

    .line 379
    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto :goto_c

    .line 388
    .end local v2           #_dns:Ljava/lang/String;
    .end local v7           #dns:Ljava/lang/String;
    :pswitch_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 389
    .local v12, uri:Ljava/lang/String;
    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, 0x3

    .line 390
    .local v6, begin:I
    const/16 v13, 0x2f

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 391
    .local v8, end:I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_b6

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 394
    .local v9, host:Ljava/lang/String;
    :goto_84
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #uri:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 395
    .restart local v12       #uri:Ljava/lang/String;
    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, 0x3

    .line 396
    const/16 v13, 0x2f

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 397
    const/4 v13, -0x1

    if-ne v8, v13, :cond_bc

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 400
    .local v3, _host:Ljava/lang/String;
    :goto_a0
    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 401
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_c

    .line 391
    .end local v3           #_host:Ljava/lang/String;
    .end local v9           #host:Ljava/lang/String;
    :cond_b6
    invoke-virtual {v12, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    goto :goto_84

    .line 397
    .restart local v9       #host:Ljava/lang/String;
    :cond_bc
    invoke-virtual {v12, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    goto :goto_a0

    .line 403
    .restart local v3       #_host:Ljava/lang/String;
    :cond_c2
    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_c

    .line 407
    .end local v3           #_host:Ljava/lang/String;
    .end local v6           #begin:I
    .end local v8           #end:I
    .end local v9           #host:Ljava/lang/String;
    .end local v12           #uri:Ljava/lang/String;
    :pswitch_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v5, v0

    .line 408
    .local v5, address:[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v1, v0

    .line 409
    .local v1, _address:[B
    array-length v11, v5

    .line 410
    .local v11, length:I
    array-length v4, v1

    .line 411
    .local v4, _length:I
    if-ne v11, v4, :cond_ea

    .line 412
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    goto/16 :goto_c

    .line 413
    :cond_ea
    mul-int/lit8 v13, v4, 0x2

    if-ne v11, v13, :cond_109

    .line 414
    const/4 v10, 0x0

    .local v10, i:I
    :goto_ef
    array-length v13, v1

    if-ge v10, v13, :cond_106

    .line 415
    aget-byte v13, v1, v10

    aget-byte v14, v5, v10

    if-lt v13, v14, :cond_100

    aget-byte v13, v1, v10

    add-int v14, v10, v4

    aget-byte v14, v5, v14

    if-le v13, v14, :cond_103

    .line 417
    :cond_100
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 414
    :cond_103
    add-int/lit8 v10, v10, 0x1

    goto :goto_ef

    .line 420
    :cond_106
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 422
    .end local v10           #i:I
    :cond_109
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 436
    .end local v1           #_address:[B
    .end local v4           #_length:I
    .end local v5           #address:[B
    .end local v11           #length:I
    .restart local p0
    :pswitch_10c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    goto/16 :goto_c

    .line 363
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_17
        :pswitch_32
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_67
        :pswitch_c8
        :pswitch_10c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 515
    const-string v0, ""

    .line 516
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_fc

    .line 551
    .end local p0
    :goto_7
    return-object v0

    .line 518
    .restart local p0
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherName[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    goto :goto_7

    .line 522
    :pswitch_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rfc822Name[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    goto :goto_7

    .line 525
    :pswitch_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dNSName[2]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    goto :goto_7

    .line 528
    :pswitch_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uniformResourceIdentifier[6]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    goto :goto_7

    .line 531
    :pswitch_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registeredID[8]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    goto :goto_7

    .line 534
    .restart local p0
    :pswitch_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x400Address[3]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    goto/16 :goto_7

    .line 538
    :pswitch_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryName[4]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    const-string v2, "RFC2253"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    goto/16 :goto_7

    .line 542
    .restart local p0
    :pswitch_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ediPartyName[5]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    goto/16 :goto_7

    .line 546
    :pswitch_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iPAddress[7]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    goto/16 :goto_7

    .line 516
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_8
        :pswitch_24
        :pswitch_3a
        :pswitch_84
        :pswitch_a1
        :pswitch_c0
        :pswitch_50
        :pswitch_dd
        :pswitch_66
    .end packed-switch
.end method
