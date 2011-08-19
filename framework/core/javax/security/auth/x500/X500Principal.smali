.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient canonicalName:Ljava/lang/String;

.field private transient dn:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_d

    .line 97
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_d
    :try_start_d
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    .line 105
    return-void

    .line 102
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_d

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Name cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_d
    :try_start_d
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_15

    .line 133
    return-void

    .line 130
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, keywordMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-nez p1, :cond_d

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Name cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_d
    :try_start_d
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {p0, p1, p2}, Ljavax/security/auth/x500/X500Principal;->substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_19

    .line 144
    return-void

    .line 141
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "name"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_d

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_d
    :try_start_d
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    .line 82
    return-void

    .line 79
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized getCanonicalName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 155
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "CANONICAL"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    .line 157
    :cond_f
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 154
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .parameter "e"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect input encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 110
    throw v0
.end method

.method private incorrectInputName(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .parameter "e"

    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect input name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    .line 300
    return-void
.end method

.method private substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, keywordMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, sbName:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 306
    .end local p0
    .local v2, fromIndex:I
    :goto_9
    const/4 v5, -0x1

    const-string v6, "="

    invoke-virtual {v3, v6, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, equalIndex:I
    if-eq v5, v1, :cond_35

    .line 307
    const-string v5, ","

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, commaIndex:I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, subName:Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 310
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v5, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_33
    move v2, v0

    .line 313
    goto :goto_9

    .line 314
    .end local v0           #commaIndex:I
    .end local v4           #subName:Ljava/lang/String;
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 296
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 162
    if-ne p0, p1, :cond_4

    .line 163
    const/4 v2, 0x1

    .line 169
    :goto_3
    return v2

    .line 165
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 166
    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    .line 168
    :cond_12
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    move-object v1, v0

    .line 169
    .local v1, principal:Ljavax/security/auth/x500/X500Principal;
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    .line 180
    .local v1, src:[B
    array-length v2, v1

    new-array v0, v2, [B

    .line 181
    .local v0, dst:[B
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC2253"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "format"

    .prologue
    .line 215
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 216
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 23
    .parameter "format"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, oidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    move-object/from16 v18, v0

    const-string v19, "RFC1779"

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, rfc1779Name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    move-object/from16 v18, v0

    const-string v19, "RFC2253"

    invoke-virtual/range {v18 .. v19}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, rfc2253Name:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "RFC1779"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_bd

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v8, resultName:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 229
    .local v6, fromIndex:I
    const/4 v5, -0x1

    .line 230
    .local v5, equalIndex:I
    :goto_2e
    const/16 v18, -0x1

    const-string v19, "="

    move-object v0, v8

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_b8

    .line 231
    const-string v18, ","

    move-object v0, v8

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 232
    .local v4, commaIndex:I
    add-int/lit8 v18, v4, 0x1

    move-object v0, v8

    move/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, subName:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b5

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "OID."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b5

    .line 236
    const/16 v18, 0x4

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, subSubName:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b5

    .line 238
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 239
    .local v7, replaceName:Ljava/lang/String;
    if-lez v4, :cond_ab

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    :cond_ab
    add-int/lit8 v18, v4, 0x1

    move-object v0, v8

    move/from16 v1, v18

    move v2, v5

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .end local v7           #replaceName:Ljava/lang/String;
    .end local v14           #subSubName:Ljava/lang/String;
    :cond_b5
    move v6, v4

    .line 244
    goto/16 :goto_2e

    .line 245
    .end local v4           #commaIndex:I
    .end local v12           #subName:Ljava/lang/String;
    :cond_b8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 278
    .end local p0
    :goto_bc
    return-object v18

    .line 246
    .end local v5           #equalIndex:I
    .end local v6           #fromIndex:I
    .end local v8           #resultName:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "RFC2253"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_180

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v8       #resultName:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v17, subsidyName:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 251
    .restart local v6       #fromIndex:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    .line 252
    .local v16, subsidyFromIndex:I
    const/4 v5, -0x1

    .line 253
    .restart local v5       #equalIndex:I
    const/4 v15, -0x1

    .line 254
    .end local p0
    .local v15, subsidyEqualIndex:I
    :goto_e0
    const/16 v18, -0x1

    const-string v19, "="

    move-object v0, v8

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_17a

    .line 255
    const-string v18, "="

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v15

    .line 257
    const-string v18, ","

    move-object v0, v8

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .restart local v4       #commaIndex:I
    add-int/lit8 v18, v4, 0x1

    move-object v0, v8

    move/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 260
    .restart local v12       #subName:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_173

    .line 261
    const-string v18, ","

    move-object v0, v8

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 263
    .local v13, subOrignalEndIndex:I
    const/16 v18, -0x1

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_133

    .line 264
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 265
    :cond_133
    const-string v18, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 267
    .local v11, subGoalEndIndex:I
    const/16 v18, -0x1

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_149

    .line 268
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 269
    :cond_149
    add-int/lit8 v18, v5, 0x1

    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move/from16 v1, v18

    move v2, v13

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v18, v4, 0x1

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v8

    move/from16 v1, v18

    move v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v11           #subGoalEndIndex:I
    .end local v13           #subOrignalEndIndex:I
    :cond_173
    move v6, v4

    .line 276
    const/16 v18, 0x1

    sub-int v16, v15, v18

    .line 277
    goto/16 :goto_e0

    .line 278
    .end local v4           #commaIndex:I
    .end local v12           #subName:Ljava/lang/String;
    :cond_17a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_bc

    .line 280
    .end local v5           #equalIndex:I
    .end local v6           #fromIndex:I
    .end local v8           #resultName:Ljava/lang/StringBuilder;
    .end local v15           #subsidyEqualIndex:I
    .end local v16           #subsidyFromIndex:I
    .end local v17           #subsidyName:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_180
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "invalid format specified"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 286
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
