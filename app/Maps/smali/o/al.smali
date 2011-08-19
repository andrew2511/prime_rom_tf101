.class Lo/al;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aT;


# instance fields
.field final synthetic a:Lo/aT;

.field final synthetic b:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;Lo/aT;)V
    .locals 0

    iput-object p1, p0, Lo/al;->b:Lo/cg;

    iput-object p2, p0, Lo/al;->a:Lo/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lo/al;->a:Lo/aT;

    invoke-interface {v0, p1}, Lo/aT;->a(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/al;->b:Lo/cg;

    invoke-static {v0}, Lo/cg;->g(Lo/cg;)LaU/a;

    move-result-object v0

    new-instance v1, Lo/D;

    invoke-direct {v1, p0}, Lo/D;-><init>(Lo/al;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
