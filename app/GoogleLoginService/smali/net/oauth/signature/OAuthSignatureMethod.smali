.class public abstract Lnet/oauth/signature/OAuthSignatureMethod;
.super Ljava/lang/Object;
.source "OAuthSignatureMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;
    }
.end annotation


# static fields
.field private static final NAME_TO_CLASS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    .line 251
    const-string v0, "HMAC-SHA1"

    const-class v1, Lnet/oauth/signature/HMAC_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 252
    const-string v0, "PLAINTEXT"

    const-class v1, Lnet/oauth/signature/PLAINTEXT;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 253
    const-string v0, "RSA-SHA1"

    const-class v1, Lnet/oauth/signature/RSA_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 254
    const-string v0, "HMAC-SHA1-Accessor"

    const-class v1, Lnet/oauth/signature/HMAC_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 255
    const-string v0, "PLAINTEXT-Accessor"

    const-class v1, Lnet/oauth/signature/PLAINTEXT;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 256
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;
    .locals 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x26

    .line 143
    iget-object v2, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    .line 144
    .local v2, url:Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 145
    .local v1, q:I
    if-gez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, parameters:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lnet/oauth/signature/OAuthSignatureMethod;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lnet/oauth/signature/OAuthSignatureMethod;->normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 149
    .end local v0           #parameters:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v0       #parameters:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/oauth/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getParameters(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;>;"
    if-nez p0, :cond_0

    .line 294
    const/4 v3, 0x0

    .line 300
    :goto_0
    return-object v3

    .line 296
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    .line 298
    .local v2, parameter:Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;
    iget-object v3, v2, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->value:Ljava/util/Map$Entry;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #parameter:Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;
    :cond_1
    move-object v3, v1

    .line 300
    goto :goto_0
.end method

.method public static newMethod(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;
    .locals 7
    .parameter "name"
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    sget-object v5, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 220
    .local v3, methodClass:Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oauth/signature/OAuthSignatureMethod;

    .line 223
    .local v2, method:Lnet/oauth/signature/OAuthSignatureMethod;
    invoke-virtual {v2, p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V

    .line 224
    return-object v2

    .line 226
    .end local v2           #method:Lnet/oauth/signature/OAuthSignatureMethod;
    :cond_0
    new-instance v4, Lnet/oauth/OAuthProblemException;

    const-string v5, "signature_method_rejected"

    invoke-direct {v4, v5}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    .line 228
    .local v4, problem:Lnet/oauth/OAuthProblemException;
    sget-object v5, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, acceptable:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 230
    const-string v5, "oauth_acceptable_signature_methods"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_1
    throw v4
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v0           #acceptable:Ljava/lang/String;
    .end local v3           #methodClass:Ljava/lang/Class;
    .end local v4           #problem:Lnet/oauth/OAuthProblemException;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 235
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v5, Lnet/oauth/OAuthException;

    invoke-direct {v5, v1}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 236
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 237
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Lnet/oauth/OAuthException;

    invoke-direct {v5, v1}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static newSigner(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;
    .locals 4
    .parameter "message"
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "oauth_signature_method"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->newMethod(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;

    move-result-object v0

    .line 211
    .local v0, signer:Lnet/oauth/signature/OAuthSignatureMethod;
    iget-object v1, p1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->setTokenSecret(Ljava/lang/String;)V

    .line 212
    return-object v0
.end method

.method protected static normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, parameters:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/Map$Entry;>;"
    if-nez p0, :cond_0

    .line 183
    const-string v3, ""

    .line 193
    :goto_0
    return-object v3

    .line 185
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    .local v2, parameter:Ljava/util/Map$Entry;
    const-string v3, "oauth_signature"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    new-instance v3, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    invoke-direct {v3, v2}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v2           #parameter:Ljava/util/Map$Entry;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    invoke-static {v1}, Lnet/oauth/signature/OAuthSignatureMethod;->getParameters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 160
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, authority:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_1

    :cond_0
    const-string v6, "https"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v6

    const/16 v7, 0x1bb

    if-ne v6, v7, :cond_5

    :cond_1
    const/4 v6, 0x1

    move v1, v6

    .line 165
    .local v1, dropPort:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 167
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 169
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    .end local v2           #index:I
    :cond_2
    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 174
    :cond_3
    const-string v3, "/"

    .line 177
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v1           #dropPort:Z
    .end local v3           #path:Ljava/lang/String;
    :cond_5
    move v1, v8

    .line 163
    goto :goto_0
.end method

.method public static registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "name"
    .parameter "clazz"

    .prologue
    .line 246
    sget-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method


# virtual methods
.method protected getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSignature(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation
.end method

.method protected getSignature(Lnet/oauth/OAuthMessage;)Ljava/lang/String;
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, baseString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/oauth/signature/OAuthSignatureMethod;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, signature:Ljava/lang/String;
    return-object v1
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V
    .locals 5
    .parameter "name"
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v3, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v2, v3, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    .line 93
    .local v2, secret:Ljava/lang/String;
    const-string v3, "-Accessor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string v1, "oauth_accessor_secret"

    .line 97
    .local v1, key:Ljava/lang/String;
    const-string v3, "oauth_accessor_secret"

    invoke-virtual {p2, v3}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, accessorSecret:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 99
    iget-object v3, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v4, "oauth_accessor_secret"

    invoke-virtual {v3, v4}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v0           #accessorSecret:Ljava/lang/Object;
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 106
    const-string v2, ""

    .line 108
    :cond_2
    invoke-virtual {p0, v2}, Lnet/oauth/signature/OAuthSignatureMethod;->setConsumerSecret(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"

    .prologue
    .line 129
    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod;->consumerSecret:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "tokenSecret"

    .prologue
    .line 137
    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod;->tokenSecret:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public sign(Lnet/oauth/OAuthMessage;)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v1, "oauth_signature"

    invoke-virtual {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getSignature(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/util/Map$Entry;)V

    .line 54
    return-void
.end method
