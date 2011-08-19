.class public Lnet/oauth/OAuthAccessor;
.super Ljava/lang/Object;
.source "OAuthAccessor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d967877bf9ee767L


# instance fields
.field public accessToken:Ljava/lang/String;

.field public final consumer:Lnet/oauth/OAuthConsumer;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public requestToken:Ljava/lang/String;

.field public tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oauth/OAuthConsumer;)V
    .locals 2
    .parameter "consumer"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    .line 45
    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 6
    .parameter "method"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry;",
            ">;)",
            "Lnet/oauth/OAuthMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 74
    .local p3, parameters:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/Map$Entry;>;"
    if-nez p1, :cond_0

    .line 75
    const-string v2, "httpMethod"

    invoke-virtual {p0, v2}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 76
    .restart local p1
    if-nez p1, :cond_0

    .line 77
    iget-object v2, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v3, "httpMethod"

    invoke-virtual {v2, v3}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 78
    .restart local p1
    if-nez p1, :cond_0

    .line 79
    const-string p1, "GET"

    .line 83
    :cond_0
    new-instance v1, Lnet/oauth/OAuthMessage;

    invoke-direct {v1, p1, p2, p3}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 84
    .local v1, message:Lnet/oauth/OAuthMessage;
    invoke-virtual {v1, p0}, Lnet/oauth/OAuthMessage;->addRequiredParameters(Lnet/oauth/OAuthAccessor;)V

    .line 85
    iget-object v2, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v3, "HTTP.header.Accept-Encoding"

    invoke-virtual {v2, v3}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, accepted:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v1}, Lnet/oauth/OAuthMessage;->getHeaders()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lnet/oauth/OAuth$Parameter;

    const-string v4, "Accept-Encoding"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    return-object v1
.end method
