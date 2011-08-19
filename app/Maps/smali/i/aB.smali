.class Li/aB;
.super Lx/W;


# instance fields
.field final synthetic a:Li/aN;


# direct methods
.method constructor <init>(Li/aN;)V
    .locals 0

    iput-object p1, p0, Li/aB;->a:Li/aN;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 2

    iget-object v0, p0, Li/aB;->a:Li/aN;

    invoke-virtual {v0}, Li/aN;->B()V

    iget-object v0, p0, Li/aB;->a:Li/aN;

    iget-object v0, v0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x253

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    iget-object v0, p0, Li/aB;->a:Li/aN;

    invoke-static {v0}, Li/aN;->a(Li/aN;)V

    const/4 v0, 0x1

    return v0
.end method
