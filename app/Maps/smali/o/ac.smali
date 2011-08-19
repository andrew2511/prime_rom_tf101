.class Lo/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aj;


# instance fields
.field final synthetic a:Lo/O;


# direct methods
.method constructor <init>(Lo/O;)V
    .locals 0

    iput-object p1, p0, Lo/ac;->a:Lo/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lo/ac;->a:Lo/O;

    iget-object v0, v0, Lo/O;->e:Lo/be;

    invoke-static {v0}, Lo/be;->a(Lo/be;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    iget-object v0, p0, Lo/ac;->a:Lo/O;

    iget-object v0, v0, Lo/O;->c:Li/q;

    iget-object v1, p0, Lo/ac;->a:Lo/O;

    iget-object v1, v1, Lo/O;->e:Lo/be;

    invoke-static {v1}, Lo/be;->a(Lo/be;)Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v1}, Li/aE;->I()Li/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/q;->b(Li/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ac;->a:Lo/O;

    iget-object v0, v0, Lo/O;->c:Li/q;

    iget-object v1, p0, Lo/ac;->a:Lo/O;

    iget-object v1, v1, Lo/O;->d:Lcom/google/googlenav/bG;

    invoke-virtual {v0, p1, v1}, Li/q;->b(ZLcom/google/googlenav/bG;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/ac;->a:Lo/O;

    iget-object v0, v0, Lo/O;->e:Lo/be;

    invoke-static {v0}, Lo/be;->a(Lo/be;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x45

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
