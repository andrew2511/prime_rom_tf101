.class Li/T;
.super Lx/W;


# instance fields
.field final synthetic a:Li/aw;


# direct methods
.method constructor <init>(Li/aw;)V
    .locals 0

    iput-object p1, p0, Li/T;->a:Li/aw;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 1

    iget-object v0, p0, Li/T;->a:Li/aw;

    invoke-static {v0}, Li/aw;->d(Li/aw;)V

    instance-of v0, p1, Lx/q;

    if-nez v0, :cond_0

    iget-object v0, p0, Li/T;->a:Li/aw;

    invoke-static {v0}, Li/aw;->e(Li/aw;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
