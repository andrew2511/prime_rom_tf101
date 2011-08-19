.class Lh/dO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/I;

.field final synthetic b:Lh/br;


# direct methods
.method constructor <init>(Lh/br;Lo/I;)V
    .locals 0

    iput-object p1, p0, Lh/dO;->b:Lh/br;

    iput-object p2, p0, Lh/dO;->a:Lo/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/dO;->b:Lh/br;

    iget-object v0, v0, Lh/br;->a:Lh/k;

    invoke-static {v0}, Lh/k;->b(Lh/k;)Lh/at;

    move-result-object v0

    iget-object v1, p0, Lh/dO;->a:Lo/I;

    invoke-interface {v0, v1}, Lh/at;->a(Lo/I;)V

    return-void
.end method
