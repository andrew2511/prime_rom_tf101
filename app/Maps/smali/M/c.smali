.class public LM/c;
.super LM/d;


# static fields
.field private static b:Lcom/google/android/maps/driveabout/vector/br;

.field private static c:Lcom/google/android/maps/driveabout/vector/cq;

.field private static d:Lcom/google/android/maps/driveabout/vector/cq;

.field private static e:Lcom/google/android/maps/driveabout/vector/cq;


# instance fields
.field private a:I

.field private f:F

.field private g:D

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[F

.field private k:[F

.field private l:F

.field private m:F

.field private final n:Lcom/google/android/maps/driveabout/vector/bk;

.field private o:Lcom/google/android/maps/driveabout/vector/p;

.field private p:Lcom/google/android/maps/driveabout/vector/p;

.field private final q:Lcom/google/android/maps/driveabout/vector/az;

.field private final r:Lcom/google/android/maps/driveabout/vector/az;

.field private volatile s:Lcom/google/android/maps/driveabout/vector/bH;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    sput-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    sput-object v0, LM/c;->c:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    sput-object v0, LM/c;->d:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    sput-object v0, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    sget-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v3, v1, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v0, LM/c;->c:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->c:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->c:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->d:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->d:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v5, v7}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->d:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/maps/driveabout/vector/cq;->a(SS)V

    sget-object v0, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    sget-object v0, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    sget-object v0, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    sget-object v0, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, LM/d;-><init>()V

    iput-object v0, p0, LM/c;->h:Ljava/lang/String;

    iput-object v0, p0, LM/c;->i:Ljava/lang/String;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bk;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bk;-><init>()V

    iput-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    const v0, 0x7f09003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LM/c;->f:F

    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LM/c;->a:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bz;

    const-wide/16 v1, 0x96

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bz;-><init>(J)V

    iput-object v0, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    iget-object v0, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    const/16 v1, 0xa

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bH;->c(II)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;IFFFFZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v0, p3, p4, p5, p6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    iget v1, p0, LM/c;->m:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    sget-object v1, LM/c;->c:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    if-eqz p7, :cond_0

    sget-object v1, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    :cond_0
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v1, p0, LM/c;->l:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/high16 v1, -0x3e90

    invoke-interface {v0, v3, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    sget-object v1, LM/c;->d:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    if-eqz p7, :cond_1

    sget-object v1, LM/c;->e:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    :cond_1
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-interface {v0, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LM/c;->k:[F

    aget v1, v1, v4

    iget-object v2, p0, LM/c;->k:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/high16 v1, 0x3fc0

    iget v2, p0, LM/c;->f:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-interface {v0, v7, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LM/c;->j:[F

    aget v1, v1, v4

    iget-object v2, p0, LM/c;->j:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->m()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iput-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iput-object v1, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    :cond_1
    return-void
.end method

.method private k()V
    .locals 11

    iget v0, p0, LM/c;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, LM/c;->g:D

    div-double/2addr v0, v2

    const-wide v2, 0x400a3f28fd4f4b98L

    mul-double/2addr v2, v0

    const-string v4, ""

    const-string v5, ""

    sget-object v6, LA/q;->a:[I

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_7

    sget-object v7, LA/q;->a:[I

    aget v7, v7, v6

    int-to-double v7, v7

    sub-double v7, v0, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_3

    sget-object v0, LA/q;->a:[I

    aget v0, v0, v6

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    const/16 v1, 0xdd

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    int-to-double v6, v0

    iget-wide v8, p0, LM/c;->g:D

    mul-double/2addr v6, v8

    double-to-float v0, v6

    iput v0, p0, LM/c;->l:F

    move-object v0, v1

    :goto_2
    sget-object v1, LA/q;->b:[I

    array-length v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_3
    if-ltz v1, :cond_6

    sget-object v4, LA/q;->b:[I

    aget v4, v4, v1

    int-to-double v6, v4

    sub-double v6, v2, v6

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_5

    sget-object v2, LA/q;->b:[I

    aget v1, v2, v1

    const/16 v2, 0x14a0

    if-ge v1, v2, :cond_4

    const/16 v2, 0xdb

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-wide v3, p0, LM/c;->g:D

    const-wide v5, 0x400a3f28fd4f4b98L

    div-double/2addr v3, v5

    int-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, LM/c;->m:F

    move-object v1, v2

    :goto_5
    iget-object v2, p0, LM/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, LM/c;->i:Ljava/lang/String;

    iget-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v1, 0x0

    iput-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    iget-object v1, p0, LM/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, LM/c;->h:Ljava/lang/String;

    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    div-int/lit16 v4, v0, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xde

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    div-int/lit16 v3, v1, 0x14a0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3

    :cond_6
    move-object v1, v5

    goto :goto_5

    :cond_7
    move-object v0, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-direct {p0}, LM/c;->j()V

    iget-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bk;->a()V

    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/bH;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bH;->a()F

    move-result v1

    iget-object v2, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bH;->b()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0, p1}, LM/c;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v0, LM/c;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, LM/c;->a(Lcom/google/android/maps/driveabout/vector/u;IFFFFZ)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, LM/c;->a(Lcom/google/android/maps/driveabout/vector/u;IFFFFZ)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v9, 0x0

    invoke-virtual {p0}, LM/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LM/c;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v8

    iget-object v0, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_2

    iget-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v2, p0, LM/c;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v4, p0, LM/c;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    iput-object v0, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v1, p0, LM/c;->i:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v3, p0, LM/c;->f:F

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F

    move-result-object v0

    iput-object v0, p0, LM/c;->k:[F

    iget-object v0, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v0

    iget-object v1, p0, LM/c;->o:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v1

    iget-object v2, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v9, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v9}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->q:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :cond_2
    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_3

    iget-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v2, p0, LM/c;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v4, p0, LM/c;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    iput-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, LM/c;->n:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v1, p0, LM/c;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v3, p0, LM/c;->f:F

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F

    move-result-object v0

    iput-object v0, p0, LM/c;->j:[F

    iget-object v0, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v0

    iget-object v1, p0, LM/c;->p:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v1

    iget-object v2, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v9, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v9}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/c;->r:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    :cond_3
    invoke-interface {v8}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0, p1, p2}, LM/c;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v8}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    invoke-virtual {p0}, LM/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->e()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, LM/c;->g:D

    invoke-direct {p0}, LM/c;->k()V

    :cond_0
    invoke-super {p0, p1}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p0}, LM/c;->i()LM/b;

    move-result-object v0

    invoke-virtual {v0}, LM/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    const/16 v1, 0x50

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/bH;->a(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LM/c;->s:Lcom/google/android/maps/driveabout/vector/bH;

    const/16 v1, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/bH;->a(II)V

    goto :goto_0
.end method
