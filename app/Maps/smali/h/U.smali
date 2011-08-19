.class Lh/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lh/ar;


# direct methods
.method constructor <init>(Lh/ar;[B)V
    .locals 0

    iput-object p1, p0, Lh/U;->b:Lh/ar;

    iput-object p2, p0, Lh/U;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lh/U;->b:Lh/ar;

    iget-object v0, v0, Lh/ar;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lh/U;->a:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v2, 0x453

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x270

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v2, v1

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;

    move-result-object v0

    new-instance v2, Lx/i;

    invoke-direct {v2, v1, v6, v0, v1}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lx/k;->a(Lx/i;)Lx/J;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
