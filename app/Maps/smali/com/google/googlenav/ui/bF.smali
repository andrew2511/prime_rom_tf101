.class Lcom/google/googlenav/ui/bF;
.super Ljava/lang/Object;

# interfaces
.implements Lf/V;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bF;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/C;)V
    .locals 3

    invoke-virtual {p1}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lf/C;->b()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bF;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v2}, Lcom/google/googlenav/ui/aT;->c(Lcom/google/googlenav/ui/aT;)LT/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, LH/a;->a(Lf/h;ILT/c;)V

    return-void
.end method
