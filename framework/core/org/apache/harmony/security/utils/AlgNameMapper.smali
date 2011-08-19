.class public Lorg/apache/harmony/security/utils/AlgNameMapper;
.super Ljava/lang/Object;
.source "AlgNameMapper.java"


# static fields
.field private static final alg2OidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final algAliasesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final knownAlgMappings:[[Ljava/lang/String;

.field private static final oid2AlgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serviceName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 42
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "Cipher"

    aput-object v7, v6, v10

    const-string v7, "AlgorithmParameters"

    aput-object v7, v6, v11

    const-string v7, "Signature"

    aput-object v7, v6, v12

    sput-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    .line 52
    const/16 v6, 0x13

    new-array v6, v6, [[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "1.2.840.10040.4.1"

    aput-object v8, v7, v10

    const-string v8, "DSA"

    aput-object v8, v7, v11

    aput-object v7, v6, v10

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "1.2.840.10040.4.3"

    aput-object v8, v7, v10

    const-string v8, "SHA1withDSA"

    aput-object v8, v7, v11

    aput-object v7, v6, v11

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.1.1"

    aput-object v8, v7, v10

    const-string v8, "RSA"

    aput-object v8, v7, v11

    aput-object v7, v6, v12

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "1.2.840.113549.1.1.4"

    aput-object v8, v7, v10

    const-string v8, "MD5withRSA"

    aput-object v8, v7, v11

    aput-object v7, v6, v9

    const/4 v7, 0x4

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.1.1.5"

    aput-object v9, v8, v10

    const-string v9, "SHA1withRSA"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.1.3.1"

    aput-object v9, v8, v10

    const-string v9, "DiffieHellman"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/4 v7, 0x6

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.1.5.3"

    aput-object v9, v8, v10

    const-string v9, "pbeWithMD5AndDES-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.1.12.1.3"

    aput-object v9, v8, v10

    const-string v9, "pbeWithSHAAnd3-KeyTripleDES-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0x8

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.1.12.1.6"

    aput-object v9, v8, v10

    const-string v9, "pbeWithSHAAnd40BitRC2-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0x9

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.2"

    aput-object v9, v8, v10

    const-string v9, "RC2-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xa

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.3"

    aput-object v9, v8, v10

    const-string v9, "RC2-EBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xb

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.4"

    aput-object v9, v8, v10

    const-string v9, "RC4"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xc

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.5"

    aput-object v9, v8, v10

    const-string v9, "RC4WithMAC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xd

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.6"

    aput-object v9, v8, v10

    const-string v9, "DESx-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xe

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.7"

    aput-object v9, v8, v10

    const-string v9, "TripleDES-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0xf

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.8"

    aput-object v9, v8, v10

    const-string v9, "rc5CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0x10

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.9"

    aput-object v9, v8, v10

    const-string v9, "RC5-CBC"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0x11

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "1.2.840.113549.3.10"

    aput-object v9, v8, v10

    const-string v9, "DESCDMF"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    const/16 v7, 0x12

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "2.23.42.9.11.4.1"

    aput-object v9, v8, v10

    const-string v9, "ECDSA"

    aput-object v9, v8, v11

    aput-object v8, v6, v7

    sput-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    .line 78
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    .line 80
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    .line 85
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    .local v1, arr$:[[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_131
    if-ge v3, v4, :cond_153

    aget-object v2, v1, v3

    .line 86
    .local v2, element:[Ljava/lang/String;
    aget-object v6, v2, v11

    invoke-static {v6}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, algUC:Ljava/lang/String;
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    aget-object v7, v2, v10

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    aget-object v7, v2, v10

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v6, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    aget-object v7, v2, v11

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_131

    .line 98
    .end local v0           #algUC:Ljava/lang/String;
    .end local v2           #element:[Ljava/lang/String;
    :cond_153
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v5

    .line 99
    .local v5, pl:[Ljava/security/Provider;
    move-object v1, v5

    .local v1, arr$:[Ljava/security/Provider;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_15a
    if-ge v3, v4, :cond_164

    aget-object v2, v1, v3

    .line 100
    .local v2, element:Ljava/security/Provider;
    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->selectEntries(Ljava/security/Provider;)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_15a

    .line 102
    .end local v2           #element:Ljava/security/Provider;
    :cond_164
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static dump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alg2OidMap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "\noid2AlgMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "\nalgAliasesMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStandardName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "algName"

    .prologue
    .line 139
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isOID(Ljava/lang/String;)Z
    .registers 2
    .parameter "alias"

    .prologue
    .line 191
    invoke-static {p0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->isOID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static map2AlgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "oid"

    .prologue
    .line 127
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, algUC:Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_b
.end method

.method public static map2OID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "algName"

    .prologue
    .line 116
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "oid"

    .prologue
    .line 202
    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    move-object v0, p0

    goto :goto_d
.end method

.method private static selectEntries(Ljava/security/Provider;)V
    .registers 11
    .parameter "p"

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 149
    .local v4, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    sget-object v3, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v6, p0

    .end local p0           #i$:I
    .local v6, i$:I
    :goto_9
    if-ge v6, v8, :cond_a7

    aget-object p0, v3, v6

    .line 150
    .local p0, service:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #service:Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, keyPrfix2find:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    .local v1, me:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 153
    .local p0, key:Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 154
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, alias:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #key:Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 156
    .local p0, alg:Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, algUC:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 158
    const-string v2, "OID."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 159
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 162
    .end local v0           #alias:Ljava/lang/String;
    .local v2, alias:Ljava/lang/String;
    :goto_68
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 163
    .local v9, oid2AlgContains:Z
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    .local v0, alg2OidContains:Z
    if-eqz v9, :cond_78

    if-nez v0, :cond_2a

    .line 165
    :cond_78
    if-nez v9, :cond_7f

    .line 166
    sget-object v9, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    .end local v9           #oid2AlgContains:Z
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_7f
    if-nez v0, :cond_86

    .line 169
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    .end local v0           #alg2OidContains:Z
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_86
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 175
    .end local v2           #alias:Ljava/lang/String;
    .local v0, alias:Ljava/lang/String;
    :cond_8c
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    .end local v1           #algUC:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 176
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #alias:Ljava/lang/String;
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 149
    .end local p0           #alg:Ljava/lang/String;
    :cond_a2
    add-int/lit8 p0, v6, 0x1

    .local p0, i$:I
    move v6, p0

    .end local p0           #i$:I
    .restart local v6       #i$:I
    goto/16 :goto_9

    .line 181
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #keyPrfix2find:Ljava/lang/String;
    :cond_a7
    return-void

    .end local v6           #i$:I
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #algUC:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #keyPrfix2find:Ljava/lang/String;
    .local p0, alg:Ljava/lang/String;
    :cond_a8
    move-object v2, v0

    .end local v0           #alias:Ljava/lang/String;
    .restart local v2       #alias:Ljava/lang/String;
    goto :goto_68
.end method
