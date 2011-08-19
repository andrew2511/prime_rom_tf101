.class Lam/i;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lad/i;

.field final synthetic b:Lam/m;


# direct methods
.method constructor <init>(Lam/m;Lad/i;)V
    .locals 0

    iput-object p1, p0, Lam/i;->b:Lam/m;

    iput-object p2, p0, Lam/i;->a:Lad/i;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lam/i;->a:Lad/i;

    invoke-virtual {v0}, Lad/i;->start()V

    return-void
.end method
