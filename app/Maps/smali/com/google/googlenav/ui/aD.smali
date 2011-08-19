.class Lcom/google/googlenav/ui/aD;
.super Ljava/lang/Object;

# interfaces
.implements LE/d;


# instance fields
.field final synthetic a:Lf/h;

.field final synthetic b:Lcom/google/googlenav/ui/at;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/at;Lf/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    iput-object p2, p0, Lcom/google/googlenav/ui/aD;->a:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/a;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/a;-><init>(Lcom/google/googlenav/ui/aD;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlenav/ui/c;-><init>(Lcom/google/googlenav/ui/aD;II)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/b;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/b;-><init>(Lcom/google/googlenav/ui/aD;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
