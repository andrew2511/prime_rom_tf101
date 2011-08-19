.class public abstract Lcom/google/googlenav/ui/aX;
.super Ljava/lang/Object;


# instance fields
.field private a:Lh/eY;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/googlenav/g;
.end method

.method public abstract a(Lf/v;)Lcom/google/googlenav/ui/P;
.end method

.method public a(Lf/v;Lf/Y;LH/f;ZLh/l;Lcom/google/googlenav/bL;Lcom/google/googlenav/ui/bu;Lo/bj;)Lh/eY;
    .locals 11

    iget-object v0, p0, Lcom/google/googlenav/ui/aX;->a:Lh/eY;

    if-nez v0, :cond_0

    new-instance v0, Lh/eY;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aX;->d()LaU/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aX;->a()Lcom/google/googlenav/g;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lh/eY;-><init>(LaU/a;Lf/v;Lf/Y;LH/f;Lcom/google/googlenav/g;ZLh/l;Lcom/google/googlenav/bL;Lcom/google/googlenav/ui/bu;Lo/bj;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/aX;->a:Lh/eY;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/aX;->a:Lh/eY;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aX;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->K()V

    return-void
.end method

.method public abstract b()Lcom/google/googlenav/ui/aN;
.end method

.method public abstract b(Lf/v;)Lcom/google/googlenav/ui/bV;
.end method

.method public abstract c()Lcom/google/googlenav/ui/X;
.end method

.method public abstract d()LaU/a;
.end method

.method public e()Lcom/google/googlenav/layer/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()LE/i;
    .locals 1

    new-instance v0, LE/g;

    invoke-direct {v0}, LE/g;-><init>()V

    return-object v0
.end method

.method public g()LE/f;
    .locals 1

    new-instance v0, LE/a;

    invoke-direct {v0}, LE/a;-><init>()V

    return-object v0
.end method

.method public abstract h()LT/c;
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const-string v1, "UseAnimation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lac/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
