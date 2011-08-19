.class public Lnet/oauth/OAuthMessage;
.super Ljava/lang/Object;
.source "OAuthMessage.java"


# static fields
.field private static final AUTHORIZATION:Ljava/util/regex/Pattern;

.field private static final NVP:Ljava/util/regex/Pattern;


# instance fields
.field public URL:Ljava/lang/String;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field private parameterMap:Ljava/util/Map;
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

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private parametersAreComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const-string v0, "\\s*(\\w*)\\s+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oauth/OAuthMessage;->AUTHORIZATION:Ljava/util/regex/Pattern;

    .line 388
    const-string v0, "(\\S*)\\s*\\=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oauth/OAuthMessage;->NVP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .parameter "method"
    .parameter "URL"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, parameters:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/Map$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oauth/OAuthMessage;->headers:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    .line 53
    if-nez p3, :cond_1

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    .line 62
    :cond_0
    return-void

    .line 56
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    .line 57
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    .local v1, p:Ljava/util/Map$Entry;
    iget-object v2, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    new-instance v3, Lnet/oauth/OAuth$Parameter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private beforeGetParameter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->completeParameters()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    .line 82
    :cond_0
    return-void
.end method

.method private static final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "from"

    .prologue
    .line 391
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    new-instance v0, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v0, p1, p2}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/util/Map$Entry;)V

    .line 98
    return-void
.end method

.method public addParameter(Ljava/util/Map$Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, parameter:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    .line 103
    return-void
.end method

.method public addRequiredParameters(Lnet/oauth/OAuthAccessor;)V
    .locals 9
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v3, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v3}, Lnet/oauth/OAuth;->newMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 256
    .local v1, pMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "oauth_token"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 257
    const-string v3, "oauth_token"

    iget-object v4, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    .line 260
    .local v0, consumer:Lnet/oauth/OAuthConsumer;
    const-string v3, "oauth_consumer_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 261
    const-string v3, "oauth_consumer_key"

    iget-object v4, v0, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_1
    const-string v3, "oauth_signature_method"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, signatureMethod:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 265
    const-string v3, "oauth_signature_method"

    invoke-virtual {v0, v3}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #signatureMethod:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 266
    .restart local v2       #signatureMethod:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 267
    const-string v2, "HMAC-SHA1"

    .line 269
    :cond_2
    const-string v3, "oauth_signature_method"

    invoke-virtual {p0, v3, v2}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_3
    const-string v3, "oauth_timestamp"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 272
    const-string v3, "oauth_timestamp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4
    const-string v3, "oauth_nonce"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 275
    const-string v3, "oauth_nonce"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_5
    const-string v3, "oauth_version"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 278
    const-string v3, "oauth_version"

    const-string v4, "1.0"

    invoke-virtual {p0, v3, v4}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_6
    invoke-virtual {p0, p1}, Lnet/oauth/OAuthMessage;->sign(Lnet/oauth/OAuthAccessor;)V

    .line 281
    return-void
.end method

.method protected completeParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getParameterMap()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lnet/oauth/OAuthMessage;->beforeGetParameter()V

    .line 133
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v0}, Lnet/oauth/OAuth;->newMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    .line 136
    :cond_0
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lnet/oauth/OAuthMessage;->beforeGetParameter()V

    .line 93
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "oauth_signature_method"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs requireParameters([Ljava/lang/String;)V
    .locals 9
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthProblemException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameterMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 233
    .local v4, present:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, absent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v1, v2

    .line 235
    .local v6, required:Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 236
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v6           #required:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 240
    new-instance v5, Lnet/oauth/OAuthProblemException;

    const-string v7, "parameter_absent"

    invoke-direct {v5, v7}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    .line 241
    .local v5, problem:Lnet/oauth/OAuthProblemException;
    const-string v7, "oauth_parameters_absent"

    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    throw v5

    .line 244
    .end local v5           #problem:Lnet/oauth/OAuthProblemException;
    :cond_2
    return-void
.end method

.method public sign(Lnet/oauth/OAuthAccessor;)V
    .locals 1
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/oauth/OAuthException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->newSigner(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oauth/signature/OAuthSignatureMethod;->sign(Lnet/oauth/OAuthMessage;)V

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuthMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
