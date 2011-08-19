.class public Lcom/google/googlenav/ui/h;
.super Lcom/google/googlenav/ui/bx;

# interfaces
.implements Lcom/google/googlenav/C;


# instance fields
.field public final a:Lcom/google/googlenav/aB;

.field public final b:Li/x;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aB;IILi/x;)V
    .locals 38

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x0

    new-array v4, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v2, p0

    move/from16 v15, p2

    move/from16 v19, p3

    invoke-direct/range {v2 .. v37}, Lcom/google/googlenav/ui/bx;-><init>([Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;IILcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lx/U;Lx/x;Ljava/lang/Object;ZZLf/h;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bk;Lcom/google/googlenav/ui/z;ZLI/B;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/h;->b:Li/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/h;->b:Li/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/x;->g(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/h;->b:Li/x;

    invoke-virtual {v0}, Li/x;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/G;->c:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/googlenav/ui/G;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/G;-><init>(Lcom/google/googlenav/ui/h;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/aB;->c()V

    goto :goto_0
.end method
