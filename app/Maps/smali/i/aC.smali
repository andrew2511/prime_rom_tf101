.class Li/aC;
.super Lx/W;


# instance fields
.field final synthetic a:Li/aN;


# direct methods
.method constructor <init>(Li/aN;)V
    .locals 0

    iput-object p1, p0, Li/aC;->a:Li/aN;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Li/aC;->a:Li/aN;

    invoke-virtual {v0, v1}, Li/aN;->j(Z)V

    iget-object v0, p0, Li/aC;->a:Li/aN;

    invoke-static {v0}, Li/aN;->a(Li/aN;)V

    return v1
.end method
