.class LP/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:LP/e;


# direct methods
.method private constructor <init>(LP/e;)V
    .locals 0

    iput-object p1, p0, LP/b;->a:LP/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LP/e;LP/h;)V
    .locals 0

    invoke-direct {p0, p1}, LP/b;-><init>(LP/e;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, LP/b;->a:LP/e;

    invoke-static {v0}, LP/e;->a(LP/e;)LP/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LP/d;->a(LP/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, LP/e;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LP/d;->a(LP/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
