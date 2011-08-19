.class public LP/a;
.super Ln/l;


# static fields
.field private static d:I

.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LP/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ln/l;-><init>()V

    iput-object p1, p0, LP/a;->b:Landroid/content/Context;

    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, LP/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(LP/a;)Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, LP/a;->c:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, LP/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, LP/a;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LP/a;->d:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, LP/a;->d:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, LP/a;->d:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, LP/a;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/lang/String;Z)Ln/n;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, LP/a;->c:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, LP/a;->b:Landroid/content/Context;

    iget-object v2, p0, LP/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, LP/a;->c:Lorg/apache/http/client/HttpClient;

    :goto_0
    iget-object v0, p0, LP/a;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_0
    new-instance v0, LP/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LP/c;-><init>(LP/a;Ljava/lang/String;ZLP/m;)V

    return-object v0

    :cond_1
    new-instance v0, LP/k;

    iget-object v1, p0, LP/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, LP/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, LP/k;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, LP/a;->c:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LP/a;->a:Ljava/lang/String;

    return-void
.end method
