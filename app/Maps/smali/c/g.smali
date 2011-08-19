.class Lc/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/e;

.field final synthetic b:Lo/i;

.field final synthetic c:Lc/k;


# direct methods
.method constructor <init>(Lc/k;Lc/e;Lo/i;)V
    .locals 0

    iput-object p1, p0, Lc/g;->c:Lc/k;

    iput-object p2, p0, Lc/g;->a:Lc/e;

    iput-object p3, p0, Lc/g;->b:Lo/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/g;->a:Lc/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/g;->a:Lc/e;

    iget-object v1, p0, Lc/g;->b:Lo/i;

    invoke-interface {v0, v1}, Lc/e;->a(Lo/i;)V

    :cond_0
    return-void
.end method
