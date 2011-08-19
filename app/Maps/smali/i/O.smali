.class Li/O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf/h;

.field final synthetic b:I

.field final synthetic c:LG/Z;

.field final synthetic d:Li/D;


# direct methods
.method constructor <init>(Li/D;Lf/h;ILG/Z;)V
    .locals 0

    iput-object p1, p0, Li/O;->d:Li/D;

    iput-object p2, p0, Li/O;->a:Lf/h;

    iput p3, p0, Li/O;->b:I

    iput-object p4, p0, Li/O;->c:LG/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li/O;->d:Li/D;

    iget-object v1, p0, Li/O;->a:Lf/h;

    invoke-static {v0, v1}, Li/D;->a(Li/D;Lf/h;)Lf/h;

    iget-object v0, p0, Li/O;->d:Li/D;

    iget v1, p0, Li/O;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Li/D;->a(Li/D;J)J

    iget-object v0, p0, Li/O;->d:Li/D;

    iget-object v1, p0, Li/O;->c:LG/Z;

    invoke-static {v0, v1}, Li/D;->a(Li/D;LG/Z;)LG/Z;

    iget-object v0, p0, Li/O;->d:Li/D;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Li/D;->b(Li/D;J)J

    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/O;->d:Li/D;

    invoke-virtual {v0}, Li/D;->a()V

    :cond_0
    return-void
.end method
