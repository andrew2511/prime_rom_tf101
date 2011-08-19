.class Lo/F;
.super LT/d;


# instance fields
.field final synthetic a:Lo/ap;


# direct methods
.method constructor <init>(Lo/ap;LT/c;)V
    .locals 0

    iput-object p1, p0, Lo/F;->a:Lo/ap;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lo/F;->a:Lo/ap;

    invoke-virtual {v1}, Lo/ap;->b()Lo/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method
