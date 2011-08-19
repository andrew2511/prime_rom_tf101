.class public final Ltwitter4j/internal/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a5f30acf4f34913L


# instance fields
.field private http:Ltwitter4j/internal/http/HttpClient;

.field private httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

.field private final requestHeaders:Ljava/util/Map;
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

.field private final wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 64
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    invoke-static {v0}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 66
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
    .locals 1
    .parameter "wrapperConf"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;

    .line 57
    invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    .line 58
    invoke-static {p1}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    .line 59
    return-void
.end method

.method private request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 75
    :try_start_0
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-interface {v2, p1}, Ltwitter4j/internal/http/HttpClient;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    .line 77
    .local v0, res:Ltwitter4j/internal/http/HttpResponse;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-object v0

    .line 80
    .end local v0           #res:Ltwitter4j/internal/http/HttpResponse;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 81
    .local v1, te:Ltwitter4j/TwitterException;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;

    invoke-direct {v3, p1, v5, v1}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    .line 84
    :cond_1
    throw v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltwitter4j/internal/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 120
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 121
    .local v5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 122
    invoke-interface {v5, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    :cond_0
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v3, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .parameter "authorization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;

    iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;

    .line 91
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;

    invoke-interface {v0}, Ltwitter4j/internal/http/HttpClient;->shutdown()V

    .line 70
    return-void
.end method
