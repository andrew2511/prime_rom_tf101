.class public Lcom/google/android/maps/driveabout/vector/bV;
.super Lcom/google/android/maps/driveabout/vector/cr;


# static fields
.field private static final J:Lcom/google/android/maps/driveabout/vector/m;

.field public static final a:Lad/r;

.field public static final b:Lad/r;


# instance fields
.field private final A:Ljava/util/Set;

.field private final B:Lad/g;

.field private final C:LG/Q;

.field private D:Lcom/google/android/maps/driveabout/vector/bI;

.field private E:Z

.field private final F:Z

.field private volatile G:Z

.field private volatile H:Z

.field private final I:Lcom/google/android/maps/driveabout/vector/m;

.field protected c:Lcom/google/android/maps/driveabout/vector/cb;

.field protected volatile d:Lcom/google/android/maps/driveabout/vector/bw;

.field protected final e:Lcom/google/android/maps/driveabout/vector/bh;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:I

.field private final q:Lcom/google/android/maps/driveabout/vector/cB;

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;

.field private final t:[I

.field private final u:Ljava/util/ArrayList;

.field private final v:[I

.field private final w:Lcom/google/android/maps/driveabout/vector/ca;

.field private x:Lcom/google/android/maps/driveabout/vector/cv;

.field private y:Z

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lad/r;->a([I)Lad/r;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lad/r;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lad/r;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bV;->a:Lad/r;

    invoke-static {v0, v1}, Lad/r;->a(Lad/r;Lad/r;)Lad/r;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bV;->b:Lad/r;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/I;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/I;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    return-void
.end method

.method constructor <init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/vector/ca;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/ca;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->w:Lcom/google/android/maps/driveabout/vector/ca;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    new-instance v2, Lad/g;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Lad/g;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->B:Lad/g;

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->C:LG/Q;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->G:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->H:Z

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bV;->p:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bV;->I:Lcom/google/android/maps/driveabout/vector/m;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/bV;->f:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    iput p7, p0, Lcom/google/android/maps/driveabout/vector/bV;->h:I

    iput p8, p0, Lcom/google/android/maps/driveabout/vector/bV;->j:I

    iput p9, p0, Lcom/google/android/maps/driveabout/vector/bV;->k:I

    iput-boolean p10, p0, Lcom/google/android/maps/driveabout/vector/bV;->o:Z

    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->l:Z

    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->m:Z

    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->n:Z

    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->F:Z

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->F:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bh;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/bh;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->e:Lcom/google/android/maps/driveabout/vector/bh;

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    new-array v2, p4, [I

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->t:[I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p6, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->e:Lcom/google/android/maps/driveabout/vector/bh;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p6, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/B;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/vector/B;-><init>(Lcom/google/android/maps/driveabout/vector/bV;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/j;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 3

    const v2, 0x64140

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    div-int/lit16 v1, p1, 0x100

    int-to-float v1, v1

    mul-float/2addr v1, v1

    mul-int/lit8 v0, v0, 0x18

    div-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;I)I
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    if-nez v2, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;

    add-int/lit8 v0, v2, -0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static a(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 20

    const/16 v5, 0x100

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v9

    mul-int/lit8 v10, v9, 0x2

    const/16 p2, 0xa

    move/from16 v0, p0

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    const/16 p2, 0x1

    move/from16 v17, p2

    :goto_0
    if-eqz v17, :cond_1

    new-instance p2, Lcom/google/android/maps/driveabout/vector/cB;

    sget-object v5, La/a;->a:La/a;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/bV;->b:Lad/r;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, v17

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;La/a;ZLad/r;)V

    move-object/from16 v7, p2

    :goto_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x1

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bV;

    new-instance v8, Lcom/google/android/maps/driveabout/vector/bf;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/vector/bf;-><init>()V

    const/16 v11, 0x8

    const v12, 0x186a0

    const/16 v13, 0x100

    const/16 v14, 0x100

    move/from16 v6, p0

    move/from16 v18, v17

    invoke-direct/range {v5 .. v19}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-object v5

    :cond_0
    const/16 p2, 0x0

    move/from16 v17, p2

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/maps/driveabout/vector/cB;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/bV;->b:Lad/r;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;ZLad/r;)V

    move-object/from16 v7, p2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lau/e;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 10

    const/16 v7, 0x100

    invoke-static {p1, v7}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v3, 0x2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cB;

    const-string v2, "inaka"

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/v;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    const/4 v5, 0x4

    const v6, 0x25d78

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/v;-><init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIILandroid/content/Context;Lau/e;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/m;ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 20

    const/16 v5, 0x100

    move-object/from16 v0, p3

    move v1, v5

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v9

    mul-int/lit8 v10, v9, 0x2

    const/16 p3, 0x0

    new-instance v7, Lcom/google/android/maps/driveabout/vector/cB;

    sget-object v5, La/a;->b:La/a;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/bV;->a:Lad/r;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, p3

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;La/a;ZLad/r;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v11, 0x0

    const v12, 0x2bf20

    const/16 v13, 0x100

    const/16 v14, 0x100

    move/from16 v6, p1

    move-object/from16 v8, p0

    invoke-direct/range {v5 .. v19}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-object v5
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bV;)Lcom/google/android/maps/driveabout/vector/cB;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cn;
    .locals 12

    const/16 v7, 0x100

    const/4 v5, 0x0

    invoke-static {p0, v7}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cB;

    const-string v0, "traffic"

    invoke-direct {v1, v0, v5}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    const/4 v8, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    const v6, 0x249f0

    move v9, v5

    move v10, v5

    move v11, v5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIZZZZ)V

    return-object v0
.end method

.method private a(Ljava/util/Set;LG/Q;)Ljava/util/Set;
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v3, v0, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(LG/w;LG/Q;)LG/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(LG/w;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->B:Lad/g;

    invoke-virtual {v0, p1, p1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->d()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;ILG/w;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x4000

    invoke-virtual {p4}, LG/w;->b()I

    move-result v2

    shr-int/2addr v1, v2

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p4}, LG/w;->h()LG/Q;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v0, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/bj;->a(I)[I

    move-result-object v1

    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private a(Ljava/util/Collection;LG/Q;Ljava/util/Set;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/w;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v4, v1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(LG/w;LG/Q;)LG/w;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    move-object v3, v0

    move v4, p4

    :goto_2
    if-gt v1, v2, :cond_0

    if-eqz v3, :cond_0

    if-eq v1, v2, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt v0, v4, :cond_6

    :cond_4
    const/4 v0, 0x0

    move-object v5, v0

    :goto_3
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    monitor-enter v6

    :try_start_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(LG/w;)V

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_7

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move-object v5, v0

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_5

    :try_start_1
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v7, v0, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(LG/w;LG/Q;)LG/w;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v3, v5

    goto :goto_2
.end method

.method private a(Ljava/util/List;LG/Q;Ljava/util/Set;I)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bV;->c(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Set;LG/Q;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v0

    move v5, p4

    move v1, v9

    :goto_0
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-lez v5, :cond_7

    const/16 v0, 0x8

    if-ge v1, v0, :cond_7

    if-ge v2, v8, :cond_7

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v0

    const/16 v6, 0xd

    if-gt v0, v6, :cond_9

    if-ge v2, v9, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_2

    :cond_0
    if-ge v2, v7, :cond_1

    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    :cond_1
    if-ge v2, v8, :cond_9

    const/4 v0, 0x6

    if-lt v1, v0, :cond_9

    :cond_2
    invoke-direct {p0, v4, p3, v5}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Set;Ljava/util/Set;I)I

    move-result v0

    if-eq v5, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v7, :cond_3

    if-lt v1, v8, :cond_4

    :cond_3
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-gt v5, v7, :cond_5

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/bV;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v3, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Set;LG/Q;)Ljava/util/Set;

    move-result-object v3

    :cond_6
    invoke-direct {p0, v4, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Set;LG/Q;)Ljava/util/Set;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    move v5, v2

    move v2, v0

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_1

    :cond_9
    move v0, v2

    move v2, v5

    goto :goto_1
.end method

.method public static b(Landroid/content/res/Resources;I)I
    .locals 4

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/bV;)Lad/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->B:Lad/g;

    return-object v0
.end method

.method public static b(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 18

    const/16 v3, 0x100

    move-object/from16 v0, p2

    move v1, v3

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->b(Landroid/content/res/Resources;I)I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    const/16 v12, 0x180

    const/16 p2, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/vector/cB;

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bV;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    const/4 v9, 0x4

    const v10, 0xc350

    const/16 v11, 0x100

    move/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-object v3
.end method

.method public static b(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 15

    const/16 v8, 0x100

    const/4 v6, 0x0

    invoke-static {p0, v8}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cB;

    const-string v0, "transit"

    invoke-direct {v2, v0, v6}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bV;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    const v7, 0x27100

    move v9, v8

    move v10, v6

    move v11, v6

    move v12, v6

    move v13, v6

    move v14, v6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-object v0
.end method

.method static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/w;

    invoke-virtual {p0}, LG/w;->b()I

    move-result v2

    shl-int v2, v10, v2

    sub-int v3, v2, v10

    move v4, v11

    :goto_0
    if-gt v4, v10, :cond_0

    move v5, v11

    :goto_1
    if-gt v5, v10, :cond_3

    invoke-virtual {p0}, LG/w;->d()I

    move-result v6

    add-int/2addr v6, v5

    if-ltz v6, :cond_1

    if-lt v6, v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, LG/w;

    invoke-virtual {p0}, LG/w;->b()I

    move-result v8

    invoke-virtual {p0}, LG/w;->c()I

    move-result v9

    add-int/2addr v9, v4

    add-int/2addr v9, v2

    and-int/2addr v9, v3

    invoke-direct {v7, v8, v9, v6}, LG/w;-><init>(III)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static c(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;
    .locals 18

    const/16 v12, 0x14c

    move-object/from16 v0, p2

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->b(Landroid/content/res/Resources;I)I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    const/16 p2, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/vector/cB;

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bV;

    sget-object v6, Lcom/google/android/maps/driveabout/vector/bV;->J:Lcom/google/android/maps/driveabout/vector/m;

    const/4 v9, 0x2

    const v10, 0xc350

    const/16 v11, 0x100

    move/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(ILcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/m;IIIIIIZZZZZ)V

    return-object v3
.end method

.method static c(Ljava/util/Set;)Ljava/util/Set;
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v2

    shl-int v3, v9, v2

    sub-int v4, v3, v9

    shr-int/lit8 v5, v3, 0x1

    invoke-virtual {v0}, LG/w;->c()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->c()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v0}, LG/w;->c()I

    move-result v0

    sub-int/2addr v0, v7

    if-lt v0, v5, :cond_2

    move v0, v9

    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v8

    move v9, v8

    move v10, v3

    move v8, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/w;

    invoke-virtual {p0}, LG/w;->c()I

    move-result v11

    if-eqz v0, :cond_3

    if-ge v11, v5, :cond_3

    add-int/2addr v11, v3

    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0}, LG/w;->d()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0}, LG/w;->d()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_3

    :cond_4
    new-instance v0, LG/w;

    and-int v3, v10, v4

    invoke-direct {v0, v2, v3, v8}, LG/w;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/w;

    and-int v3, v10, v4

    invoke-direct {v0, v2, v3, v7}, LG/w;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/w;

    and-int v3, v9, v4

    invoke-direct {v0, v2, v3, v8}, LG/w;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/w;

    and-int v3, v9, v4

    invoke-direct {v0, v2, v3, v7}, LG/w;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v8

    goto :goto_2
.end method


# virtual methods
.method a(LG/Q;)F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v0, :cond_0

    const/high16 v0, 0x41a8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->b(LG/Q;)F

    move-result v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->h:I

    return v0
.end method

.method public a(LG/F;Lcom/google/android/maps/driveabout/vector/bL;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v3

    invoke-virtual {v3}, LG/w;->i()LG/S;

    move-result-object v3

    invoke-virtual {p1, v3}, LG/F;->b(LG/z;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->e:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bh;)V

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bL;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->b()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/HashSet;Ljava/util/HashSet;[I)V
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V

    invoke-interface {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V

    invoke-interface {p0}, Lcom/google/android/maps/driveabout/vector/cu;->e()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    array-length v1, p5

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aput v0, p5, v1

    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bV;->D:Lcom/google/android/maps/driveabout/vector/bI;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->d:Lcom/google/android/maps/driveabout/vector/bw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cB;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->z:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-lez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->m:Z

    if-eqz v0, :cond_5

    if-eq p3, v10, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    :cond_4
    move v1, v10

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0, p1, p2, p3, v10}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0, p1, p2, p3, v10}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto :goto_2

    :cond_5
    move v1, v9

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->t()V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->E:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cB;->a(Ljava/util/List;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_3
    if-ltz v2, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    aget v0, v0, v2

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    aget v0, v0, v2

    sub-int v4, v3, v0

    if-eqz v1, :cond_a

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v6

    invoke-virtual {v6}, LG/w;->b()I

    move-result v6

    const/16 v7, 0xe

    if-lt v6, v7, :cond_9

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->b()LG/w;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;ILG/w;)V

    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_a
    move v5, v4

    move v6, v9

    :goto_5
    if-ge v5, v3, :cond_b

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bV;->t:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/bF;I)I

    move-result v0

    aput v0, v7, v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->t:[I

    aget v0, v0, v5

    or-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_5

    :cond_b
    move v5, v9

    :goto_6
    if-eqz v6, :cond_f

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0, p1, p2, p3, v5}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    shl-int v7, v10, v5

    move v8, v4

    :goto_7
    if-ge v8, v3, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->t:[I

    aget v0, v0, v8

    and-int/2addr v0, v7

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0, p1, p2, p3, v5}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->t()V

    :cond_c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->t()V

    :cond_e
    add-int/lit8 v0, v5, 0x1

    ushr-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v0

    goto :goto_6

    :cond_f
    move v0, v4

    :goto_8
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto/16 :goto_3

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->E:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cB;->b(Ljava/util/List;)V

    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/vector/bV;->E:Z

    :cond_11
    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->G:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cu;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v10

    :goto_9
    if-nez v0, :cond_13

    move v0, v10

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->H:Z

    goto/16 :goto_0

    :cond_13
    move v0, v9

    goto :goto_a

    :cond_14
    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/vector/bV;->H:Z

    goto/16 :goto_0

    :cond_15
    move v0, v9

    goto :goto_9

    :cond_16
    move v0, v3

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bV;->d:Lcom/google/android/maps/driveabout/vector/bw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->I:Lcom/google/android/maps/driveabout/vector/m;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->p:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->k:I

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bV;->o:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/m;->a(IIZ)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->I:Lcom/google/android/maps/driveabout/vector/m;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->p:I

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bV;->o:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/m;->a(IZ)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->x:Lcom/google/android/maps/driveabout/vector/cv;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->x:Lcom/google/android/maps/driveabout/vector/cv;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cv;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->x:Lcom/google/android/maps/driveabout/vector/cv;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad out-of-bounds coord generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->e:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->z:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 20

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->G:Z

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->E:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->C:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->w:Lcom/google/android/maps/driveabout/vector/ca;

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->c()LG/Q;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/maps/driveabout/vector/ca;->a(LG/Q;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->w:Lcom/google/android/maps/driveabout/vector/ca;

    move-object v5, v0

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->j:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v7

    mul-float/2addr v5, v7

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    move-object v5, v0

    const/4 v8, 0x0

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cB;->e()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->n:Z

    move v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->o:Z

    move v5, v0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    move v10, v5

    :goto_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    move v5, v0

    if-nez v5, :cond_1

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v12, v0

    if-ge v5, v12, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->C:LG/Q;

    move-object v5, v0

    const/16 v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v13, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move-object v3, v11

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/List;LG/Q;Ljava/util/Set;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cB;->b()I

    move-result v12

    const/4 v5, 0x0

    move v13, v5

    move-object v14, v6

    :goto_1
    if-gt v13, v8, :cond_9

    if-ne v13, v8, :cond_5

    const/4 v5, 0x0

    move-object v15, v5

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    move v5, v0

    if-nez v5, :cond_2

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->l:Z

    move v5, v0

    if-nez v5, :cond_6

    :cond_2
    const/4 v5, 0x1

    move/from16 v16, v5

    :goto_3
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/w;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    if-nez v13, :cond_8

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->u:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    move-object v15, v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_3

    :cond_7
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cB;->b(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v17

    :goto_5
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    move-object/from16 v18, v0

    aget v19, v18, v13

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->f:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->f:I

    move v14, v0

    if-eq v5, v14, :cond_9

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v14, v0

    if-eq v5, v14, :cond_9

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v5, v8, :cond_11

    const/4 v5, 0x1

    :goto_6
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->G:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->i:Z

    move v5, v0

    if-eqz v5, :cond_13

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/w;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v5}, LG/w;->b()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    move-object v13, v0

    new-instance v14, Lcom/google/android/maps/driveabout/vector/cH;

    shl-int v9, v7, v9

    invoke-direct {v14, v5, v9}, Lcom/google/android/maps/driveabout/vector/cH;-><init>(LG/w;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v17

    goto/16 :goto_5

    :cond_b
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Lcom/google/android/maps/driveabout/vector/cu;->c()Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_c
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->C:LG/Q;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cb;->a(LG/w;LG/Q;)LG/w;

    move-result-object v18

    if-eqz v18, :cond_d

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v13, :cond_e

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v17, :cond_f

    if-nez v16, :cond_3

    :cond_f
    invoke-virtual {v11, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    move-object v14, v15

    goto/16 :goto_1

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->x:Lcom/google/android/maps/driveabout/vector/cv;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->b(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/w;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v5}, LG/w;->b()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->r:Ljava/util/ArrayList;

    move-object v13, v0

    new-instance v14, Lcom/google/android/maps/driveabout/vector/cH;

    shl-int v9, v7, v9

    invoke-direct {v14, v5, v9}, Lcom/google/android/maps/driveabout/vector/cH;-><init>(LG/w;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    if-eqz v10, :cond_14

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v7, v0

    if-ge v5, v7, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->D:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->D:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v5, :cond_14

    new-instance v7, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v10

    invoke-direct {v7, v5, v8, v9, v10}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    move-object v5, v0

    invoke-interface {v5, v7}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v7

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v9, v0

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v11

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/List;LG/Q;Ljava/util/Set;I)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->n:Z

    move v5, v0

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    move v5, v0

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->v:[I

    move-object v5, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_15

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v7, v0

    if-ge v5, v7, :cond_15

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->g:I

    move v7, v0

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->C:LG/Q;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v11

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Collection;LG/Q;Ljava/util/Set;I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cB;->a()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->c:Lcom/google/android/maps/driveabout/vector/cb;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/cb;LG/Q;)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/driveabout/vector/bV;->z:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cB;->b()I

    move-result v5

    sub-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->z:Z

    move v6, v0

    if-nez v6, :cond_19

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/bm;->a(Z)Z

    move-result v6

    if-nez v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_18
    const/4 v6, 0x0

    goto :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bV;->q:Lcom/google/android/maps/driveabout/vector/cB;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cB;->f()V

    const/4 v5, 0x1

    return v5
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bV;->i:Z

    return-void
.end method

.method public c_(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->y:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->F:Z

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Lcom/google/android/maps/driveabout/vector/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->I:Lcom/google/android/maps/driveabout/vector/m;

    return-object v0
.end method
