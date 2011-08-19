.class Li/X;
.super Lx/W;


# instance fields
.field final synthetic a:I

.field final synthetic b:Li/aw;


# direct methods
.method constructor <init>(Li/aw;I)V
    .locals 0

    iput-object p1, p0, Li/X;->b:Li/aw;

    iput p2, p0, Li/X;->a:I

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 3

    iget-object v0, p0, Li/X;->b:Li/aw;

    invoke-static {v0}, Li/aw;->d(Li/aw;)V

    iget-object v0, p0, Li/X;->b:Li/aw;

    const-string v1, "m"

    iget v2, p0, Li/X;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li/X;->b:Li/aw;

    iget v1, p0, Li/X;->a:I

    invoke-virtual {v0, v1}, Li/aw;->d(I)V

    iget-object v0, p0, Li/X;->b:Li/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li/aw;->b(Z)V

    iget-object v0, p0, Li/X;->b:Li/aw;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/aw;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Li/X;->b:Li/aw;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Li/aw;->h(I)V

    const/4 v0, 0x1

    return v0
.end method
