.class public Lcom/google/api/client/googleapis/MethodOverrideIntercepter;
.super Ljava/lang/Object;
.source "MethodOverrideIntercepter.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteIntercepter;


# static fields
.field public static final overriddenMethods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;->overriddenMethods:Ljava/util/HashSet;

    .line 48
    invoke-static {}, Lcom/google/api/client/http/HttpTransport;->useLowLevelHttpTransport()Lcom/google/api/client/http/LowLevelHttpTransport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpTransport;->supportsPatch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;->overriddenMethods:Ljava/util/HashSet;

    const-string v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAsFirstFor(Lcom/google/api/client/http/HttpTransport;)V
    .locals 3
    .parameter "transport"

    .prologue
    .line 66
    const-class v0, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpTransport;->removeIntercepters(Ljava/lang/Class;)V

    .line 67
    iget-object v0, p0, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    return-void
.end method


# virtual methods
.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 54
    iget-object v0, p1, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    .line 55
    .local v0, method:Ljava/lang/String;
    sget-object v1, Lcom/google/api/client/googleapis/MethodOverrideIntercepter;->overriddenMethods:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "POST"

    iput-object v1, p1, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
