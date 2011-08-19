.class final LM;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private synthetic a:LJ;


# direct methods
.method synthetic constructor <init>(LJ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LM;-><init>(LJ;B)V

    return-void
.end method

.method private constructor <init>(LJ;B)V
    .locals 0

    iput-object p1, p0, LM;->a:LJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, LM;->a:LJ;

    invoke-static {v0}, LJ;->a(LJ;)LN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LN;->a(LN;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, LJ;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LN;->a(LN;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
