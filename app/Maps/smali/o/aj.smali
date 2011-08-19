.class Lo/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bM;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lo/aj;->b:Lo/cg;

    iput-object p2, p0, Lo/aj;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lo/U;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lo/U;->b(I)V

    invoke-virtual {p1}, Lo/U;->C()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    iget-object v2, p0, Lo/aj;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lo/aj;->a(Lo/U;)V

    iget-object v2, p0, Lo/aj;->b:Lo/cg;

    invoke-static {v2}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v2

    invoke-virtual {v2}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lo/aj;->a(Lo/U;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/aj;->b:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    iget-object v0, p0, Lo/aj;->b:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Li/C;->a(B)V

    iget-object v0, p0, Lo/aj;->b:Lo/cg;

    invoke-static {v0}, Lo/cg;->h(Lo/cg;)Lo/by;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    return-void
.end method
