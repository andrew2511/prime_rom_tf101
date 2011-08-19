.class public final Ltwitter4j/internal/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter; = null

.field private static final serialVersionUID:J = -0x3011286b2699f78dL


# instance fields
.field private final authorization:Ltwitter4j/http/Authorization;

.field private final method:Ltwitter4j/internal/http/RequestMethod;

.field private final parameters:[Ltwitter4j/internal/http/HttpParameter;

.field private requestHeaders:Ljava/util/Map;
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

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    sput-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V
    .locals 2
    .parameter "method"
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            "Ltwitter4j/http/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p5, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    .line 66
    sget-object v0, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 68
    sget-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    .line 73
    :goto_0
    iput-object p4, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    .line 74
    iput-object p5, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    .line 75
    return-void

    .line 70
    :cond_0
    iput-object p2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 114
    :goto_0
    return v2

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 102
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/internal/http/HttpRequest;

    move-object v1, v0

    .line 104
    .local v1, that:Ltwitter4j/internal/http/HttpRequest;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 105
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v1, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    if-nez v2, :cond_3

    .line 106
    :cond_5
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    .line 107
    :cond_6
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v2, v4

    .line 108
    goto :goto_0

    .line 107
    :cond_8
    iget-object v2, v1, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-nez v2, :cond_7

    .line 109
    :cond_9
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v2, v3}, Ltwitter4j/internal/http/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v4

    .line 110
    goto :goto_0

    .line 109
    :cond_b
    iget-object v2, v1, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-nez v2, :cond_a

    .line 111
    :cond_c
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v2, v4

    .line 112
    goto :goto_0

    .line 111
    :cond_e
    iget-object v2, v1, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-nez v2, :cond_d

    :cond_f
    move v2, v5

    .line 114
    goto :goto_0
.end method

.method public getAuthorization()Ltwitter4j/http/Authorization;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    return-object v0
.end method

.method public getMethod()Ltwitter4j/internal/http/RequestMethod;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    return-object v0
.end method

.method public getParameters()[Ltwitter4j/internal/http/HttpParameter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v1}, Ltwitter4j/internal/http/RequestMethod;->hashCode()I

    move-result v1

    move v0, v1

    .line 120
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 121
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v1, v2

    .line 124
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 119
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 120
    goto :goto_1

    :cond_2
    move v2, v3

    .line 121
    goto :goto_2

    :cond_3
    move v2, v3

    .line 122
    goto :goto_3

    :cond_4
    move v2, v3

    .line 123
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpRequest{requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
