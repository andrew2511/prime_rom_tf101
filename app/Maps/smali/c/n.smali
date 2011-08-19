.class final Lc/n;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic a:LaU/a;

.field final synthetic b:Li/C;

.field final synthetic c:Lh/eY;


# direct methods
.method constructor <init>(LaU/a;Li/C;Lh/eY;)V
    .locals 0

    iput-object p1, p0, Lc/n;->a:LaU/a;

    iput-object p2, p0, Lc/n;->b:Li/C;

    iput-object p3, p0, Lc/n;->c:Lh/eY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-static {}, Lc/q;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lc/n;->a:LaU/a;

    new-instance v1, Lc/d;

    invoke-direct {v1, p0}, Lc/d;-><init>(Lc/n;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
