.class public final Lcom/google/api/client/googleapis/GoogleTransport;
.super Ljava/lang/Object;
.source "GoogleTransport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static create()Lcom/google/api/client/http/HttpTransport;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/api/client/http/HttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 61
    .local v0, transport:Lcom/google/api/client/http/HttpTransport;
    invoke-static {v0}, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;->setAsFirstFor(Lcom/google/api/client/http/HttpTransport;)V

    .line 62
    new-instance v1, Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {v1}, Lcom/google/api/client/googleapis/GoogleHeaders;-><init>()V

    iput-object v1, v0, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 63
    return-object v0
.end method
