.class Lo/P;
.super LT/d;


# instance fields
.field final synthetic a:Lo/bf;


# direct methods
.method constructor <init>(Lo/bf;LT/c;)V
    .locals 0

    iput-object p1, p0, Lo/P;->a:Lo/bf;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method
