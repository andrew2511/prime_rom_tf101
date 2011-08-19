.class Lh/fE;
.super Lh/bi;


# instance fields
.field final synthetic a:Lh/v;


# direct methods
.method constructor <init>(Lh/v;)V
    .locals 0

    iput-object p1, p0, Lh/fE;->a:Lh/v;

    invoke-direct {p0}, Lh/bi;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lh/fE;->a:Lh/v;

    invoke-virtual {v0}, Lh/v;->v()V

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lh/fE;->a:Lh/v;

    invoke-static {v0}, Lh/v;->b(Lh/v;)V

    return-void
.end method
