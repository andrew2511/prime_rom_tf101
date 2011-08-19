.class Li/aU;
.super LT/d;


# instance fields
.field final synthetic a:Li/x;

.field final synthetic b:Li/aE;


# direct methods
.method constructor <init>(Li/aE;LT/c;Li/x;)V
    .locals 0

    iput-object p1, p0, Li/aU;->b:Li/aE;

    iput-object p3, p0, Li/aU;->a:Li/x;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Li/aU;->a:Li/x;

    invoke-static {v1}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    return-void
.end method
