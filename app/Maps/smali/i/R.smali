.class Li/R;
.super LT/d;


# instance fields
.field final synthetic a:Li/aw;


# direct methods
.method constructor <init>(Li/aw;LT/c;)V
    .locals 0

    iput-object p1, p0, Li/R;->a:Li/aw;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Li/R;->a:Li/aw;

    invoke-static {v0}, Li/aw;->b(Li/aw;)V

    iget-object v0, p0, Li/R;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->p_()V

    return-void
.end method
