.class public Lcom/google/googlenav/ui/U;
.super Ljava/lang/Object;


# static fields
.field private static final o:Lk/f;

.field private static final p:Lk/f;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/googlenav/ui/aV;

.field private final l:LaF/a;

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, -0x100

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/ah;->a(IZI)Lk/f;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/U;->o:Lk/f;

    const/4 v0, -0x1

    invoke-static {v1, v1, v0}, Lcom/google/googlenav/ah;->a(IZI)Lk/f;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/U;->p:Lk/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/googlenav/ui/U;->a:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->b:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->c:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->d:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->f:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->g:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->l:LaF/a;

    iput v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iput v1, p0, Lcom/google/googlenav/ui/U;->n:I

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->k:Lcom/google/googlenav/ui/aV;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/U;->a:I

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/U;->b:I

    const/16 v0, 0x78

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/U;->c:I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/U;->d:I

    iget v0, p0, Lcom/google/googlenav/ui/U;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/U;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/U;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/U;->f:I

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/U;->a(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/U;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/U;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/aw;->a:Lcom/google/googlenav/ui/U;

    return-object v0
.end method

.method private static a(Lk/m;Ljava/lang/String;ZII)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/U;->o:Lk/f;

    :goto_0
    invoke-interface {p0, v0}, Lk/m;->a(Lk/f;)V

    sub-int v0, p3, v1

    invoke-interface {p0, p1, v0, p4}, Lk/m;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p0, p1, v0, p4}, Lk/m;->a(Ljava/lang/String;II)V

    sub-int v0, p4, v1

    invoke-interface {p0, p1, p3, v0}, Lk/m;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, p4, 0x1

    invoke-interface {p0, p1, p3, v0}, Lk/m;->a(Ljava/lang/String;II)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/U;->p:Lk/f;

    :goto_1
    invoke-interface {p0, v0}, Lk/m;->a(Lk/f;)V

    invoke-interface {p0, p1, p3, p4}, Lk/m;->a(Ljava/lang/String;II)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/U;->p:Lk/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/U;->o:Lk/f;

    goto :goto_1
.end method

.method private a(Z)V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/U;->a:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/U;->m:I

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->k:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ac()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/U;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/U;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/U;->n:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/U;->n:I

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/U;->n:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lf/v;Z)V
    .locals 10

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/U;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/U;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/U;->a(Z)V

    iget v0, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/U;->n:I

    invoke-virtual {p1, v0, v1}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->c:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    invoke-virtual {p1, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->b(Lf/h;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x400a3f28fd4f4b98L

    mul-double/2addr v3, v1

    const/4 v5, 0x0

    iput v5, p0, Lcom/google/googlenav/ui/U;->g:I

    const-string v5, ""

    iput-object v5, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    sget-object v5, LA/q;->a:[I

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_2

    sget-object v6, LA/q;->a:[I

    aget v6, v6, v5

    int-to-double v6, v6

    sub-double v6, v1, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_4

    sget-object v1, LA/q;->a:[I

    aget v1, v1, v5

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    const/16 v2, 0xdd

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lf/h;->c(II)Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/U;->l:LaF/a;

    invoke-virtual {p1, v1, v2}, Lf/v;->b(Lf/h;LaF/a;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/U;->l:LaF/a;

    iget v1, v1, LaF/a;->a:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->m:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/U;->g:I

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/ui/U;->h:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    sget-object v1, LA/q;->b:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_0

    sget-object v2, LA/q;->b:[I

    aget v2, v2, v1

    int-to-double v5, v2

    sub-double v5, v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_6

    sget-object v2, LA/q;->b:[I

    aget v1, v2, v1

    const/16 v2, 0x14a0

    if-ge v1, v2, :cond_5

    const/16 v2, 0xdb

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    :goto_4
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Double;

    int-to-double v4, v1

    const-wide v6, 0x400a3f28fd4f4b98L

    div-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lf/h;->c(II)Lf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/U;->l:LaF/a;

    invoke-virtual {p1, v0, v1}, Lf/v;->b(Lf/h;LaF/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->l:LaF/a;

    iget v0, v0, LaF/a;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/U;->h:I

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xdc

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    div-int/lit16 v5, v1, 0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0xde

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    div-int/lit16 v3, v1, 0x14a0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public a(Lk/m;Z)V
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/U;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/U;->h:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/U;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/U;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lk/m;->a(I)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->e:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/U;->b:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->f:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->h:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->e:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/U;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/googlenav/ui/U;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    const/high16 v1, -0x100

    invoke-interface {p1, v1}, Lk/m;->a(I)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/U;->d:I

    iget v4, p0, Lcom/google/googlenav/ui/U;->b:I

    invoke-interface {p1, v1, v2, v3, v4}, Lk/m;->b(IIII)V

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/U;->d:I

    invoke-interface {p1, v1, v2, v0, v3}, Lk/m;->b(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/U;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->e:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lk/m;->b(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/U;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->d:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lk/m;->b(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->j:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    sget-object v3, Lcom/google/googlenav/ui/U;->o:Lk/f;

    invoke-interface {v3}, Lk/f;->a()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/googlenav/ui/U;->a:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/U;->a(Lk/m;Ljava/lang/String;ZII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/U;->i:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/U;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/U;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/ui/U;->n:I

    iget v3, p0, Lcom/google/googlenav/ui/U;->a:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/googlenav/ui/U;->a(Lk/m;Ljava/lang/String;ZII)V

    goto/16 :goto_0
.end method
