.class Li/aV;
.super LT/d;


# instance fields
.field final synthetic a:Li/x;

.field final synthetic b:Li/aE;


# direct methods
.method constructor <init>(Li/aE;LT/c;Li/x;)V
    .locals 0

    iput-object p1, p0, Li/aV;->b:Li/aE;

    iput-object p3, p0, Li/aV;->a:Li/x;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Li/aV;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v()V

    return-void
.end method
