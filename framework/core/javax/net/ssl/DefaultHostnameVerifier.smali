.class Ljavax/net/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 60
    sget-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 9
    .parameter "cn"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    .local v0, cnLen:I
    const/4 v3, 0x7

    if-lt v0, v3, :cond_2a

    const/16 v3, 0x9

    if-gt v0, v3, :cond_2a

    .line 127
    sub-int v3, v0, v6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2a

    .line 129
    const/4 v3, 0x2

    sub-int v4, v0, v6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, s:Ljava/lang/String;
    sget-object v3, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 132
    .local v2, x:I
    if-gez v2, :cond_28

    move v3, v5

    .line 135
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #x:I
    :goto_27
    return v3

    .line 132
    .restart local v1       #s:Ljava/lang/String;
    .restart local v2       #x:I
    :cond_28
    const/4 v3, 0x0

    goto :goto_27

    .end local v1           #s:Ljava/lang/String;
    .end local v2           #x:I
    :cond_2a
    move v3, v5

    .line 135
    goto :goto_27
.end method

.method private getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 11
    .parameter "cert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v4

    .line 193
    .local v4, subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v4, :cond_22

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 205
    .end local v4           #subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local p0
    :goto_a
    return-object v6

    .line 187
    .restart local p0
    :catch_b
    move-exception v0

    .line 188
    .local v0, cpe:Ljava/security/cert/CertificateParsingException;
    const-class v6, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Error parsing certificate."

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_a

    .line 197
    .end local v0           #cpe:Ljava/security/cert/CertificateParsingException;
    .restart local v4       #subjectAlternativeNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, subjectAltList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 199
    .local v2, pair:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 201
    .local v5, type:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    .line 202
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .end local v2           #pair:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #type:I
    :cond_50
    move-object v6, v3

    .line 205
    goto :goto_a
.end method

.method private getFirstCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 7
    .parameter "cert"

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, subjectPrincipal:Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v0, st:Ljava/util/StringTokenizer;
    :cond_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 164
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, tok:Ljava/lang/String;
    const-string v4, "CN="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, x:I
    if-ltz v3, :cond_f

    .line 167
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    .end local v2           #tok:Ljava/lang/String;
    .end local v3           #x:I
    :goto_27
    return-object v4

    :cond_28
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "hostName"
    .parameter "cn"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    if-nez p2, :cond_6

    move v1, v4

    .line 119
    :goto_5
    return v1

    .line 106
    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 108
    const-string v1, "*."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v3

    .line 114
    .local v0, matchLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, p2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/16 v1, 0x2e

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    invoke-direct {p0, p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {p1}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    move v1, v3

    goto :goto_5

    :cond_3d
    move v1, v4

    goto :goto_5

    .line 119
    .end local v0           #matchLength:I
    :cond_3f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 14
    .parameter "host"
    .parameter "session"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 66
    :try_start_2
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_5} :catch_20

    move-result-object v0

    .line 71
    .local v0, certs:[Ljava/security/cert/Certificate;
    aget-object v6, v0, v9

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 75
    .local v6, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, hostName:Ljava/lang/String;
    invoke-direct {p0, v6}, Ljavax/net/ssl/DefaultHostnameVerifier;->getFirstCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, firstCn:Ljava/lang/String;
    invoke-direct {p0, v4, v3}, Ljavax/net/ssl/DefaultHostnameVerifier;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    move v7, v10

    .line 90
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v3           #firstCn:Ljava/lang/String;
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #x509:Ljava/security/cert/X509Certificate;
    :goto_1f
    return v7

    .line 67
    :catch_20
    move-exception v2

    .local v2, e:Ljavax/net/ssl/SSLException;
    move v7, v9

    .line 68
    goto :goto_1f

    .line 84
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #certs:[Ljava/security/cert/Certificate;
    .restart local v3       #firstCn:Ljava/lang/String;
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v6       #x509:Ljava/security/cert/X509Certificate;
    :cond_23
    invoke-direct {p0, v6}, Ljavax/net/ssl/DefaultHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, cn:Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v7, v10

    .line 86
    goto :goto_1f

    .end local v1           #cn:Ljava/lang/String;
    :cond_3f
    move v7, v9

    .line 90
    goto :goto_1f
.end method
