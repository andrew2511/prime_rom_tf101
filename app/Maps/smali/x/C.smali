.class public Lx/C;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lx/G;

.field public final d:[Lcom/google/googlenav/ui/aI;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Z

.field public final i:Lx/U;

.field public final j:Lx/U;

.field public final k:Ljava/util/Vector;

.field public final l:Z

.field public final m:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/C;->a:Ljava/lang/String;

    iput-object p2, p0, Lx/C;->b:Ljava/lang/String;

    iput-object p3, p0, Lx/C;->c:Lx/G;

    iput-object p4, p0, Lx/C;->d:[Lcom/google/googlenav/ui/aI;

    iput-object p5, p0, Lx/C;->e:Ljava/lang/String;

    iput-object p6, p0, Lx/C;->f:Ljava/lang/String;

    iput p7, p0, Lx/C;->g:I

    iput-boolean p8, p0, Lx/C;->h:Z

    iput-boolean p9, p0, Lx/C;->l:Z

    iput-boolean p10, p0, Lx/C;->m:Z

    iput-object p11, p0, Lx/C;->i:Lx/U;

    iput-object p12, p0, Lx/C;->j:Lx/U;

    iput-object p13, p0, Lx/C;->k:Ljava/util/Vector;

    return-void
.end method

.method public static a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;
    .locals 16

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-static/range {v0 .. v10}, Lx/C;->a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;
    .locals 14

    new-instance v0, Lx/C;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lx/C;-><init>(Ljava/lang/String;Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-static/range {v0 .. v9}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;
    .locals 14

    new-instance v0, Lx/C;

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v13}, Lx/C;-><init>(Ljava/lang/String;Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lx/C;->d:[Lcom/google/googlenav/ui/aI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx/C;->d:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
