.class Lac/n;
.super Ljava/lang/Object;

# interfaces
.implements Lac/y;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac/n;->a:Ljava/lang/String;

    return-void
.end method

.method private static b()Ln/a;
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .locals 2

    invoke-static {}, Lac/n;->b()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lac/n;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ln/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method public a()[B
    .locals 2

    invoke-static {}, Lac/n;->b()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lac/n;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lac/n;->b()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method
