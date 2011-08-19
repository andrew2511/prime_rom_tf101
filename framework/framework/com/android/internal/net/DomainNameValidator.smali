.class public Lcom/android/internal/net/DomainNameValidator;
.super Ljava/lang/Object;
.source "DomainNameValidator.java"


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field private static final DEBUG:Z = false

.field private static final LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "DomainNameValidator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "thisDomainToken"
    .parameter "thatDomainToken"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    .line 248
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 249
    .local v1, starIndex:I
    if-ltz v1, :cond_33

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_33

    .line 251
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, prefix:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v6

    .line 259
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :goto_30
    return v3

    .restart local v0       #prefix:Ljava/lang/String;
    .restart local v1       #starIndex:I
    .restart local v2       #suffix:Ljava/lang/String;
    :cond_31
    move v3, v5

    .line 254
    goto :goto_30

    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_33
    move v3, v5

    .line 259
    goto :goto_30
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "domain"

    .prologue
    .line 66
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    move v1, v2

    .line 67
    .local v1, rval:Z
    :goto_a
    if-eqz v1, :cond_18

    .line 70
    :try_start_c
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_17} :catch_1c

    move-result v1

    .line 81
    :cond_18
    :goto_18
    return v1

    .line 66
    .end local v1           #rval:Z
    :cond_19
    const/4 v2, 0x0

    move v1, v2

    goto :goto_a

    .line 72
    .restart local v1       #rval:Z
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 77
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 50
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 51
    :cond_a
    const/4 v0, 0x0

    .line 58
    :goto_b
    return v0

    .line 54
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/internal/net/DomainNameValidator;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 56
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 58
    :cond_1b
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method public static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "thisDomain"
    .parameter "thatDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 193
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_14

    :cond_12
    move v6, v8

    .line 236
    :goto_13
    return v6

    .line 198
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 202
    .local v1, rval:Z
    if-nez v1, :cond_55

    .line 203
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, thisDomainTokens:[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, thatDomainTokens:[Ljava/lang/String;
    array-length v5, v4

    .line 207
    .local v5, thisDomainTokensNum:I
    array-length v3, v2

    .line 210
    .local v3, thatDomainTokensNum:I
    if-lt v5, v3, :cond_5c

    .line 211
    sub-int v0, v3, v9

    .local v0, i:I
    :goto_30
    if-ltz v0, :cond_55

    .line 212
    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 213
    if-nez v1, :cond_59

    .line 216
    if-nez v0, :cond_57

    if-ne v5, v3, :cond_57

    move v1, v9

    .line 217
    :goto_41
    if-eqz v1, :cond_55

    .line 218
    aget-object v6, v2, v8

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 219
    if-nez v1, :cond_55

    .line 222
    aget-object v6, v4, v8

    aget-object v7, v2, v8

    invoke-static {v6, v7}, Lcom/android/internal/net/DomainNameValidator;->domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .end local v0           #i:I
    .end local v2           #thatDomainTokens:[Ljava/lang/String;
    .end local v3           #thatDomainTokensNum:I
    .end local v4           #thisDomainTokens:[Ljava/lang/String;
    .end local v5           #thisDomainTokensNum:I
    :cond_55
    :goto_55
    move v6, v1

    .line 236
    goto :goto_13

    .restart local v0       #i:I
    .restart local v2       #thatDomainTokens:[Ljava/lang/String;
    .restart local v3       #thatDomainTokensNum:I
    .restart local v4       #thisDomainTokens:[Ljava/lang/String;
    .restart local v5       #thisDomainTokensNum:I
    :cond_57
    move v1, v8

    .line 216
    goto :goto_41

    .line 211
    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 232
    .end local v0           #i:I
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_55
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 16
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 131
    const/4 v7, 0x0

    .line 133
    .local v7, hasDns:Z
    :try_start_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    .line 134
    .local v9, subjectAltNames:Ljava/util/Collection;
    if-eqz v9, :cond_73

    .line 135
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 136
    .local v8, i:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    .line 137
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 138
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gt v12, v10, :cond_e

    .line 139
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 140
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_e

    .line 141
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_e

    .line 142
    const/4 v7, 0x1

    .line 143
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 144
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 145
    invoke-static {p1, v1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_4 .. :try_end_4a} :catch_4f

    move-result v10

    if-eqz v10, :cond_e

    move v10, v11

    .line 177
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v9           #subjectAltNames:Ljava/util/Collection;
    :goto_4e
    return v10

    .line 154
    :catch_4f
    move-exception v10

    move-object v5, v10

    .line 155
    .local v5, e:Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, errorMessage:Ljava/lang/String;
    if-nez v6, :cond_59

    .line 157
    const-string v6, "failed to parse certificate"

    .line 160
    :cond_59
    const-string v10, "DomainNameValidator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DomainNameValidator.matchDns(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v13

    .line 161
    goto :goto_4e

    .line 164
    .end local v5           #e:Ljava/security/cert/CertificateParsingException;
    .end local v6           #errorMessage:Ljava/lang/String;
    .restart local v9       #subjectAltNames:Ljava/util/Collection;
    :cond_73
    if-nez v7, :cond_8b

    .line 165
    new-instance v10, Lcom/android/internal/net/DNParser;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/net/DNParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v11, "cn"

    invoke-virtual {v10, v11}, Lcom/android/internal/net/DNParser;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, cn:Ljava/lang/String;
    if-eqz v4, :cond_8b

    .line 173
    invoke-static {p1, v4}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_4e

    .end local v4           #cn:Ljava/lang/String;
    :cond_8b
    move v10, v13

    .line 177
    goto :goto_4e
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 12
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    .line 97
    .local v5, subjectAltNames:Ljava/util/Collection;
    if-eqz v5, :cond_4f

    .line 98
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 99
    .end local p0
    .local v4, i:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 101
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_c

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_c

    .line 102
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 103
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_c

    .line 104
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    .line 105
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 106
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_49
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_49} :catch_4e

    move-result v6

    if-eqz v6, :cond_c

    move v6, v9

    .line 121
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #subjectAltNames:Ljava/util/Collection;
    :goto_4d
    return v6

    .line 119
    :catch_4e
    move-exception v6

    :cond_4f
    move v6, v8

    .line 121
    goto :goto_4d
.end method
