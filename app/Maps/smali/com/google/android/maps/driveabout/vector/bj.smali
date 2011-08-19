.class public Lcom/google/android/maps/driveabout/vector/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aS;
.implements Lcom/google/android/maps/driveabout/vector/bY;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/aa;

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final h:Ljava/util/Comparator;


# instance fields
.field private final A:Ljava/util/HashSet;

.field private final B:[I

.field private C:Z

.field private final D:Lcom/google/android/maps/driveabout/vector/bm;

.field private E:Ljava/util/List;

.field private F:Z

.field private G:Z

.field private H:Landroid/graphics/Bitmap;

.field private I:Z

.field private J:F

.field private K:J

.field private volatile L:I

.field private M:Lcom/google/android/maps/driveabout/vector/a;

.field private N:Lcom/google/android/maps/driveabout/vector/aj;

.field private volatile O:Lcom/google/android/maps/driveabout/vector/aj;

.field private volatile P:Lcom/google/android/maps/driveabout/vector/aj;

.field private Q:I

.field private final R:Lcom/google/android/maps/driveabout/vector/bV;

.field private S:Z

.field private volatile T:F

.field private volatile U:Ljava/lang/String;

.field private volatile V:Z

.field private W:Z

.field private X:Ljava/lang/Object;

.field private Y:Z

.field private volatile Z:I

.field private aa:Z

.field private volatile ab:J

.field private ac:Ljava/lang/Object;

.field private volatile f:Lcom/google/android/maps/driveabout/vector/ak;

.field private volatile g:Lcom/google/android/maps/driveabout/vector/bI;

.field private i:Lcom/google/android/maps/driveabout/vector/u;

.field private volatile j:I

.field private volatile k:I

.field private final l:Ljava/util/LinkedList;

.field private final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/ArrayList;

.field private final o:Lcom/google/android/maps/driveabout/vector/bF;

.field private final p:Lcom/google/android/maps/driveabout/vector/bw;

.field private final q:Lcom/google/android/maps/driveabout/vector/x;

.field private final r:Landroid/content/res/Resources;

.field private final s:F

.field private t:Lcom/google/android/maps/driveabout/vector/ci;

.field private final u:Lcom/google/android/maps/driveabout/vector/cc;

.field private final v:Lcom/google/android/maps/driveabout/vector/cc;

.field private final w:Lcom/google/android/maps/driveabout/vector/r;

.field private final x:LM/b;

.field private y:LM/a;

.field private final z:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->d:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->e:[I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aa;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aa;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->a:Lcom/google/android/maps/driveabout/vector/aa;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/g;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/g;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bj;->h:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0xedt 0x0t 0x0t
        0x0t 0xeat 0x0t 0x0t
        0x0t 0xe2t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bw;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->k:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->z:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->A:Ljava/util/HashSet;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/h;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/h;-><init>(Lcom/google/android/maps/driveabout/vector/bj;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->D:Lcom/google/android/maps/driveabout/vector/bm;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->F:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->X:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->Y:Z

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->Z:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->aa:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ac:Ljava/lang/Object;

    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    invoke-static {v0}, La/e;->a(Lac/p;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ak;->q:Lcom/google/android/maps/driveabout/vector/ak;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->f:Lcom/google/android/maps/driveabout/vector/ak;

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->L:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/x;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/x;-><init>(Lcom/google/android/maps/driveabout/vector/bj;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->q:Lcom/google/android/maps/driveabout/vector/x;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bj;->r:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->s:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->s:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/Q;->a(F)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->s:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cE;->a(F)V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    const/16 v0, 0xa

    const-string v1, "map"

    invoke-static {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/bV;->a(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cc;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cc;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->u:Lcom/google/android/maps/driveabout/vector/cc;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cc;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/cc;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->v:Lcom/google/android/maps/driveabout/vector/cc;

    new-instance v0, LM/b;

    invoke-direct {v0, p2}, LM/b;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->x:LM/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->u:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->x:LM/b;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cl;

    const v1, 0x1d4c0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(I)V

    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cl;->a(II)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aF;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aF;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LM/a;

    invoke-direct {v0, p2}, LM/a;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->x:LM/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    invoke-virtual {v0, v1}, LM/b;->a(LM/d;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->D:Lcom/google/android/maps/driveabout/vector/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/bV;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->K:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    goto :goto_0
.end method

.method static a(IIF)F
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4380

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bj;)LM/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->s()[F

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bF;IZ)V
    .locals 11

    const/4 v10, 0x0

    const/16 v7, 0x14

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    if-nez p3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aj;->a(Lcom/google/android/maps/driveabout/vector/ci;Z)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->u()LG/F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/ab;)V

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->I:Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aj;->a(Lcom/google/android/maps/driveabout/vector/ci;)V

    :cond_1
    return-void

    :cond_2
    move v2, v9

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->I:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/driveabout/vector/ci;->a(I)V

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/google/android/maps/driveabout/vector/bL;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/vector/bL;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->u()LG/F;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    move-object v1, v10

    :goto_4
    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v9

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bV;->d()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/bV;->a(LG/F;Lcom/google/android/maps/driveabout/vector/bL;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/util/Set;)V

    goto :goto_5

    :cond_7
    move v0, v9

    goto :goto_3

    :cond_8
    move-object v1, v2

    goto :goto_4

    :cond_9
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->E:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v0

    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/bF;LG/ab;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/bL;Ljava/util/Set;I)V

    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/vector/bj;->I:Z

    goto :goto_2

    :cond_a
    move-object v4, v10

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bF;IZZ)V
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->r()[Lcom/google/android/maps/driveabout/vector/cr;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->u()V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->L:I

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/bj;->g(I)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->g()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->J:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->g()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->J:F

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bj;->b(Lcom/google/android/maps/driveabout/vector/bF;)V

    move v0, v9

    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_1

    aget-object v1, v6, v0

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/vector/cr;->c_(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    move v0, v9

    :goto_1
    array-length v1, v6

    if-ge v0, v1, :cond_2

    aget-object v1, v6, v0

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const/4 v0, 0x6

    if-eq v2, v0, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bF;IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    if-eqz v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->C:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->C:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    const/4 v1, -0x1

    aput v1, v0, v9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->z:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bj;->A:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/HashSet;Ljava/util/HashSet;[I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    aget v0, v0, v9

    if-le v0, v8, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->B:[I

    aget v0, v0, v9

    :goto_3
    move v8, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->z:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->A:Ljava/util/HashSet;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bj;->L:I

    invoke-virtual {v0, v1, v3, v8, v4}, LM/a;->a(Ljava/util/HashSet;Ljava/util/HashSet;II)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->n()V

    move v0, v9

    :goto_4
    array-length v1, v6

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    aget-object v3, v6, v0

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/aj;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->s()V

    aget-object v1, v6, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1, v3, p1, v2, v9}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->t()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    aget-object v3, v6, v0

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/aj;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->u()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "Renderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Las/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    move v0, v8

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->C:Z

    return p1
.end method

.method public static a(I)[I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->e:[I

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->b:[I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->b:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->b:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->c:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bj;->d:[I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->r()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f(I)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/V;->a(Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->b()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()V

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->F:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->F:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bF;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->s()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->O:Lcom/google/android/maps/driveabout/vector/aj;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/aj;->a(Lcom/google/android/maps/driveabout/vector/bj;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aj;->a()V

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->P:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->P:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aj;->a()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-direct {p0, v1, p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bF;IZZ)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->f()V

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aj;->c()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->N:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aj;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v1, v6, v6}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_6
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->G:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->q()Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-enter p0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->H:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->G:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ci;->c()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    move v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_c

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->K:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->K:J

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->b()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private g(I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/bj;->a(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->h()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->j:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->S:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    :goto_1
    :try_start_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->j:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->k:I

    goto :goto_1
.end method

.method private q()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->q:Lcom/google/android/maps/driveabout/vector/x;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/x;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    mul-int v2, v3, v4

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v6

    move-object v5, v13

    move v7, v1

    move v8, v3

    move v9, v1

    move v10, v1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v13
.end method

.method private r()[Lcom/google/android/maps/driveabout/vector/cr;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->aa:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->aa:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v5

    move v1, v5

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/by;

    iget-boolean v5, v0, Lcom/google/android/maps/driveabout/vector/by;->b:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/bV;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    check-cast v1, Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->D:Lcom/google/android/maps/driveabout/vector/bm;

    invoke-virtual {v1, v5}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bj;->c(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V

    move v0, v7

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    instance-of v5, v5, Lcom/google/android/maps/driveabout/vector/bV;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_8

    const v0, 0x7fffffff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v8

    move v5, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bV;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bV;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bV;->a()I

    move-result v6

    if-ge v6, v5, :cond_a

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bV;->a()I

    move-result v4

    :goto_4
    move v5, v4

    move-object v4, v0

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/vector/bV;->b(Z)V

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v7, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bj;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/maps/driveabout/vector/cr;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :cond_a
    move-object v0, v4

    move v4, v5

    goto :goto_4
.end method

.method private s()V
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Q:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->Q:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cr;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(LG/Q;)F
    .locals 4

    const/high16 v0, 0x41a8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bV;->a(LG/Q;)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/bS;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/maps/driveabout/vector/bS;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/r;Z)V

    return-object v0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ac:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x4e20

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v5, v5}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->y:LM/a;

    invoke-virtual {v0, p1, p2}, LM/a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/K;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/r;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->M:Lcom/google/android/maps/driveabout/vector/a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->O:Lcom/google/android/maps/driveabout/vector/aj;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ak;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->f:Lcom/google/android/maps/driveabout/vector/ak;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->f:Lcom/google/android/maps/driveabout/vector/ak;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/r;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->u:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cc;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/maps/driveabout/vector/by;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/by;-><init>(Lcom/google/android/maps/driveabout/vector/g;)V

    iput-object p1, v1, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/maps/driveabout/vector/by;->b:Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->E:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->v:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bj;->f()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->v:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    goto :goto_1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Z:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Z:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Z:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v2, v5}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->V:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->X:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->V:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->X:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->W:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->X:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ac:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v5, v5}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_5
    invoke-static {}, Lad/b;->d()Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/16 v0, 0xa

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v5, v5}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bj;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->f(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->s:F

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(IIF)V

    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bj;->a(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->g()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->J:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->s:F

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/bj;->a(IIF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->T:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->j:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->p()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->U:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cr;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->aa:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ci;->a()V

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bU;->a()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->q:Lcom/google/android/maps/driveabout/vector/x;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/x;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->S:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/V;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->r:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->w()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/Q;->a(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ci;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->f:Lcom/google/android/maps/driveabout/vector/ak;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ci;-><init>(Lcom/google/android/maps/driveabout/vector/ak;Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->u:Lcom/google/android/maps/driveabout/vector/cc;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cc;->a(Lcom/google/android/maps/driveabout/vector/ci;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->v:Lcom/google/android/maps/driveabout/vector/cc;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cc;->a(Lcom/google/android/maps/driveabout/vector/ci;)V

    :cond_3
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->F:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bj;->I:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Y:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Z:I

    :cond_4
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bj;->Y:Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->S:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/V;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/V;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->ac:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->ab:J

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->k:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bj;->p()V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/maps/driveabout/vector/by;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/by;-><init>(Lcom/google/android/maps/driveabout/vector/g;)V

    iput-object p1, v1, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/cr;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Z)V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    :try_start_0
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->Q:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-interface {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(I)Lcom/google/android/maps/driveabout/vector/bq;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bq;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->U:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->b:Lcom/google/android/maps/driveabout/vector/V;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/V;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ci;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->L:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bj;->L:I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->C:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bj;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->u:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cc;->a(I)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->t:Lcom/google/android/maps/driveabout/vector/ci;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ci;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->T:F

    return v0
.end method

.method public i()I
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->M:Lcom/google/android/maps/driveabout/vector/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->M:Lcom/google/android/maps/driveabout/vector/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->o:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->M:Lcom/google/android/maps/driveabout/vector/a;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/a;->a()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->p:Lcom/google/android/maps/driveabout/vector/bw;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bw;->a(ZZ)V

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized j()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->G:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->H:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->H:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bj;->H:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/r;->d()V

    return-void
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/r;->b()Lcom/google/android/maps/driveabout/vector/cA;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/maps/driveabout/vector/ae;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/ae;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/google/android/maps/driveabout/vector/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->w:Lcom/google/android/maps/driveabout/vector/r;

    return-object v0
.end method

.method public n()LM/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->x:LM/b;

    return-object v0
.end method

.method public o()Lcom/google/android/maps/driveabout/vector/bV;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bj;->R:Lcom/google/android/maps/driveabout/vector/bV;

    return-object v0
.end method
