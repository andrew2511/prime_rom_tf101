.class Li/Y;
.super Lx/W;


# instance fields
.field final synthetic a:Li/aw;


# direct methods
.method constructor <init>(Li/aw;)V
    .locals 0

    iput-object p1, p0, Li/Y;->a:Li/aw;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/Y;->a:Li/aw;

    invoke-static {v0}, Li/aw;->d(Li/aw;)V

    iget-object v0, p0, Li/Y;->a:Li/aw;

    const-string v1, "m"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li/Y;->a:Li/aw;

    invoke-virtual {v0, v3}, Li/aw;->d(I)V

    iget-object v0, p0, Li/Y;->a:Li/aw;

    invoke-virtual {v0, v3}, Li/aw;->b(Z)V

    iget-object v0, p0, Li/Y;->a:Li/aw;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/aw;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Li/Y;->a:Li/aw;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Li/aw;->h(I)V

    const/4 v0, 0x1

    return v0
.end method
