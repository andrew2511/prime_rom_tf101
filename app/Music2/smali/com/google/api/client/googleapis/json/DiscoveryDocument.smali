.class public final Lcom/google/api/client/googleapis/json/DiscoveryDocument;
.super Ljava/lang/Object;
.source "DiscoveryDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceParameter;,
        Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;,
        Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceResource;,
        Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;,
        Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;
    }
.end annotation


# instance fields
.field public final apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

.field private apiName:Ljava/lang/String;

.field public serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public transport:Lcom/google/api/client/http/HttpTransport;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    .line 158
    return-void
.end method

.method public static load(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/DiscoveryDocument;
    .locals 7
    .parameter "apiName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    const-string v6, "http://www.googleapis.com/discovery/0.1/describe"

    invoke-direct {v1, v6}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, discoveryUrl:Lcom/google/api/client/http/GenericUrl;
    const-string v6, "api"

    invoke-virtual {v1, v6, p0}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleTransport;->create()Lcom/google/api/client/http/HttpTransport;

    move-result-object v5

    .line 173
    .local v5, transport:Lcom/google/api/client/http/HttpTransport;
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 174
    .local v3, request:Lcom/google/api/client/http/HttpRequest;
    iput-object v1, v3, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 175
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v6

    invoke-static {v6}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 176
    .local v2, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->skipToKey(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V

    .line 177
    new-instance v4, Lcom/google/api/client/googleapis/json/DiscoveryDocument;

    invoke-direct {v4}, Lcom/google/api/client/googleapis/json/DiscoveryDocument;-><init>()V

    .line 178
    .local v4, result:Lcom/google/api/client/googleapis/json/DiscoveryDocument;
    iput-object p0, v4, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiName:Ljava/lang/String;

    .line 179
    iget-object v0, v4, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    .line 180
    .local v0, apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;
    const/4 v6, 0x0

    invoke-static {v2, v0, v6}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 181
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    iput-object p0, v4, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    .line 184
    :cond_0
    return-object v4
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .locals 3
    .parameter "fullyQualifiedMethodName"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/google/api/client/googleapis/json/GoogleApi;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/json/GoogleApi;-><init>()V

    .line 202
    .local v0, googleAPI:Lcom/google/api/client/googleapis/json/GoogleApi;
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->transport:Lcom/google/api/client/http/HttpTransport;

    iput-object v1, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 203
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->name:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->version:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    iput-object p0, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/googleapis/json/GoogleApi;->buildRequest(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    return-object v1
.end method
