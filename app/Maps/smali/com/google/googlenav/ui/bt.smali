.class public Lcom/google/googlenav/ui/bt;
.super Lcom/google/googlenav/ui/bx;


# instance fields
.field public final a:[Lcom/google/googlenav/ui/aI;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;II)V
    .locals 38

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;)[Lcom/google/googlenav/ui/aI;

    move-result-object v3

    const/4 v2, 0x0

    new-array v4, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

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

    move/from16 v15, p3

    move/from16 v19, p4

    invoke-direct/range {v2 .. v37}, Lcom/google/googlenav/ui/bx;-><init>([Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;IILcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lx/U;Lx/x;Ljava/lang/Object;ZZLf/h;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bk;Lcom/google/googlenav/ui/z;ZLI/B;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bt;->a:[Lcom/google/googlenav/ui/aI;

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bt;->a:[Lcom/google/googlenav/ui/aI;

    goto :goto_0
.end method
