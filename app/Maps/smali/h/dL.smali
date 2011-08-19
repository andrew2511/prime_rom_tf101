.class Lh/dL;
.super Ljava/lang/Object;

# interfaces
.implements Lo/M;


# instance fields
.field final synthetic a:Lh/fM;

.field final synthetic b:Lh/eI;


# direct methods
.method constructor <init>(Lh/eI;Lh/fM;)V
    .locals 0

    iput-object p1, p0, Lh/dL;->b:Lh/eI;

    iput-object p2, p0, Lh/dL;->a:Lh/fM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lh/dL;->b:Lh/eI;

    invoke-static {v0}, Lh/eI;->a(Lh/eI;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v1, Lh/W;

    invoke-direct {v1, p0, p1}, Lh/W;-><init>(Lh/dL;Z)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
