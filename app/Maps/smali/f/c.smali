.class Lf/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aJ;


# instance fields
.field final synthetic a:Lf/u;


# direct methods
.method constructor <init>(Lf/u;)V
    .locals 0

    iput-object p1, p0, Lf/c;->a:Lf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lf/c;->a:Lf/u;

    invoke-virtual {v1, v2, v0, v2}, Lf/u;->a(ZZZ)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lf/c;->a:Lf/u;

    invoke-virtual {v0}, Lf/u;->n()V

    return-void
.end method
