.class Lo/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lo/U;

.field final synthetic b:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;Lo/U;)V
    .locals 0

    iput-object p1, p0, Lo/ag;->b:Lo/cg;

    iput-object p2, p0, Lo/ag;->a:Lo/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lo/ag;->b:Lo/cg;

    iget-object v1, p0, Lo/ag;->a:Lo/U;

    invoke-static {v0, v1}, Lo/cg;->a(Lo/cg;Lo/U;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
