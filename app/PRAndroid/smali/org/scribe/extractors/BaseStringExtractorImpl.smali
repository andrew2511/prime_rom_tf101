.class public Lorg/scribe/extractors/BaseStringExtractorImpl;
.super Ljava/lang/Object;
.source "BaseStringExtractorImpl.java"

# interfaces
.implements Lorg/scribe/extractors/BaseStringExtractor;


# static fields
.field private static final AMPERSAND_SEPARATED_STRING:Ljava/lang/String; = "%s&%s&%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPreconditions(Lorg/scribe/model/OAuthRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 44
    const-string v0, "Cannot extract base string from null object"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Lorg/scribe/exceptions/OAuthParametersMissingException;

    invoke-direct {v0, p1}, Lorg/scribe/exceptions/OAuthParametersMissingException;-><init>(Lorg/scribe/model/OAuthRequest;)V

    throw v0

    .line 50
    :cond_1
    return-void
.end method

.method private getSortedAndEncodedParams(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;
    .locals 2
    .parameter "request"

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getQueryStringParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getBodyParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    invoke-static {v0}, Lorg/scribe/utils/MapUtils;->sort(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lorg/scribe/utils/URLUtils;->formURLEncodeMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/scribe/utils/URLUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;
    .locals 6
    .parameter "request"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/scribe/extractors/BaseStringExtractorImpl;->checkPreconditions(Lorg/scribe/model/OAuthRequest;)V

    .line 26
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    invoke-virtual {v3}, Lorg/scribe/model/Verb;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/scribe/utils/URLUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, verb:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getSanitizedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/scribe/utils/URLUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, url:Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/scribe/extractors/BaseStringExtractorImpl;->getSortedAndEncodedParams(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, params:Ljava/lang/String;
    const-string v3, "%s&%s&%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
