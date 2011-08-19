.class public LM/a;
.super LM/d;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/google/android/maps/driveabout/vector/bk;

.field private final c:F

.field private d:[F

.field private e:Lcom/google/android/maps/driveabout/vector/p;

.field private final f:Lcom/google/android/maps/driveabout/vector/az;

.field private g:Ljava/lang/String;

.field private volatile h:I

.field private volatile i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, LM/d;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bk;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bk;-><init>()V

    iput-object v0, p0, LM/a;->b:Lcom/google/android/maps/driveabout/vector/bk;

    iput-object v1, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    iput-object v1, p0, LM/a;->g:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, LM/a;->h:I

    const/4 v0, 0x4

    iput v0, p0, LM/a;->i:I

    const/4 v0, 0x6

    iput v0, p0, LM/a;->j:I

    iput-object p1, p0, LM/a;->a:Landroid/content/res/Resources;

    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LM/a;->c:F

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    return-void
.end method

.method private static a(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v0, -0x100

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 v0, -0x1

    move v5, v0

    :goto_0
    iget-object v0, p0, LM/a;->b:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v2, p0, LM/a;->g:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v4, p0, LM/a;->c:F

    move-object v1, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIII)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    iput-object v0, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, LM/a;->b:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v1, p0, LM/a;->g:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bk;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget v3, p0, LM/a;->c:F

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F

    move-result-object v0

    iput-object v0, p0, LM/a;->d:[F

    iget-object v0, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v0

    iget-object v1, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v1

    iget-object v2, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v8, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v8, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v2, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const v0, -0x3f3f40

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, LM/a;->h:I

    iput p2, p0, LM/a;->i:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-direct {p0}, LM/a;->d()V

    iget-object v0, p0, LM/a;->b:Lcom/google/android/maps/driveabout/vector/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bk;->a()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, LM/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget v1, p0, LM/a;->j:I

    if-eq p3, v1, :cond_1

    invoke-direct {p0}, LM/a;->d()V

    iput p3, p0, LM/a;->j:I

    :cond_1
    iget-object v1, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, LM/a;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    :cond_2
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, LM/a;->d:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, LM/a;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, LM/a;->i:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LM/a;->d:[F

    aget v1, v1, v4

    iget-object v2, p0, LM/a;->d:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const/high16 v3, 0x3f80

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v1, p0, LM/a;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, LM/a;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->m()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;II)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    move v0, p3

    :goto_0
    invoke-static {p1}, LM/a;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, LM/a;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, LM/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f0b00f5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, LM/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, LM/a;->g:Ljava/lang/String;

    invoke-direct {p0}, LM/a;->d()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, LM/a;->a:Landroid/content/res/Resources;

    const v2, 0x7f0b00f4

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, LM/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f0b00f7

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object v1, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, LM/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f0b00f6

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object v2, v4, v9

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
