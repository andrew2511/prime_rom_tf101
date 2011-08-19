.class public Lcom/google/googlenav/ui/android/SwipeySwitcher;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field static final b:[I

.field static final c:[I


# instance fields
.field a:Ljava/lang/Runnable;

.field final d:Ljava/util/HashMap;

.field e:Lcom/google/googlenav/ui/android/L;

.field private f:[Lcom/google/googlenav/ui/android/Z;

.field private g:Lcom/google/googlenav/ui/android/a;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Landroid/view/GestureDetector;

.field private m:Landroid/widget/Scroller;

.field private n:Lcom/google/googlenav/ui/android/C;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Ljava/lang/Runnable;

.field private x:Lcom/google/googlenav/ui/android/r;

.field private y:Lcom/google/googlenav/ui/android/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/android/Z;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/android/r;

    new-instance v1, Lcom/google/googlenav/ui/android/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/U;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/r;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/R;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    new-instance v0, Lcom/google/googlenav/ui/android/r;

    new-instance v1, Lcom/google/googlenav/ui/android/W;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/W;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/r;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/R;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    new-instance v0, Lcom/google/googlenav/ui/android/X;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/X;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/L;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/android/Z;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/android/r;

    new-instance v1, Lcom/google/googlenav/ui/android/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/U;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/r;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/R;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    new-instance v0, Lcom/google/googlenav/ui/android/r;

    new-instance v1, Lcom/google/googlenav/ui/android/W;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/W;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/android/r;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/R;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    new-instance v0, Lcom/google/googlenav/ui/android/X;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/X;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/google/googlenav/ui/android/L;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/L;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->r:I

    return p1
.end method

.method private a(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->i()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->m:Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4200

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->u:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/SwipeySwitcher;Lcom/google/googlenav/ui/android/Z;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/Z;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/Z;I)V
    .locals 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getHeight()I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-interface {p1}, Lcom/google/googlenav/ui/android/Z;->d()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    mul-int v2, v0, p2

    const/4 v4, 0x0

    mul-int v5, v0, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aput-object p1, v0, p2

    return-void
.end method

.method private a(ZLjava/lang/Runnable;I)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    iput-object p2, v0, Lcom/google/googlenav/ui/android/L;->a:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->q:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->s:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->o:Z

    return p1
.end method

.method private c(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int v1, p1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    :goto_1
    rem-int v0, v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/SwipeySwitcher;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/SwipeySwitcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->requestLayout()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/android/SwipeySwitcher;)[Lcom/google/googlenav/ui/android/Z;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f()V

    return-void
.end method

.method private i()Landroid/view/GestureDetector;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/android/V;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/V;-><init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method static synthetic i(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Lcom/google/googlenav/ui/android/r;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/android/SwipeySwitcher;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/googlenav/ui/android/Z;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->m:Landroid/widget/Scroller;

    return-object v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/googlenav/ui/android/Z;->f()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/Z;->d()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/google/googlenav/ui/android/Z;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v1, p1}, Lcom/google/googlenav/ui/android/a;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Landroid/content/Intent;)Lcom/google/googlenav/ui/android/Z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/android/C;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/android/a;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-nez p1, :cond_1

    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/googlenav/ui/android/Z;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->requestLayout()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(I)V
    .locals 3

    iput p1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->requestLayout()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/android/a;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/android/C;->a(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->q:Z

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(I)I

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->o:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->r:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->s:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->u:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f00

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->r:I

    iput v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->s:I

    iput-boolean v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v1}, Lcom/google/googlenav/ui/android/a;->a()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    if-nez v4, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Lcom/google/googlenav/ui/android/Z;->g()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_7

    sget-object v3, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b:[I

    :goto_4
    const/4 v4, 0x0

    :goto_5
    array-length v5, v3

    if-ge v4, v5, :cond_9

    aget v5, v3, v4

    iget v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    add-int/2addr v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(I)I

    move-result v6

    invoke-interface {v7, v6}, Lcom/google/googlenav/ui/android/a;->a(I)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_8

    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    sget-object v3, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c:[I

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlenav/ui/android/Z;

    if-eqz p1, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aput-object p1, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    iget-object v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v5, v6, v5

    invoke-interface {v5}, Lcom/google/googlenav/ui/android/Z;->c()V

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlenav/ui/android/Z;

    invoke-interface {p1}, Lcom/google/googlenav/ui/android/Z;->a()V

    goto :goto_7

    :cond_a
    const/4 v2, -0x1

    :goto_8
    const/4 v3, 0x1

    if-gt v2, v3, :cond_14

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    aget-object v4, v4, v3

    if-nez v4, :cond_d

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v5, 0x0

    :cond_b
    :goto_9
    if-eqz v5, :cond_12

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/android/r;->a(Landroid/content/Intent;)Lcom/google/googlenav/ui/android/Z;

    move-result-object v4

    :cond_c
    :goto_a
    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v6

    :cond_d
    invoke-direct {p0, v4, v3}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/Z;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_0
    if-eqz v2, :cond_e

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :pswitch_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_10

    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    goto :goto_9

    :cond_10
    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->x:Lcom/google/googlenav/ui/android/r;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/Z;)Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    :cond_12
    iget v5, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->h:I

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->c(I)I

    move-result v5

    if-nez v2, :cond_13

    if-lez v1, :cond_13

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v4, v5, p0}, Lcom/google/googlenav/ui/android/a;->a(ILandroid/view/ViewGroup;)Lcom/google/googlenav/ui/android/Z;

    move-result-object v4

    :cond_13
    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->y:Lcom/google/googlenav/ui/android/r;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->g:Lcom/google/googlenav/ui/android/a;

    invoke-interface {v6, v5}, Lcom/google/googlenav/ui/android/a;->a(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/android/r;->a(Landroid/content/Intent;)Lcom/google/googlenav/ui/android/Z;

    move-result-object v4

    goto :goto_a

    :cond_14
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->scrollTo(II)V

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->f:[Lcom/google/googlenav/ui/android/Z;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/Z;->b()V

    :cond_16
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->v:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->p:Z

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->v:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->w:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/high16 v1, 0x3f00

    const/high16 v3, -0x4100

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->o:Z

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v4

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->r:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->s:I

    iput-boolean v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j()V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l()F

    move-result v0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :cond_2
    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/ui/android/C;->a(FZ)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->j:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->k()V

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->l()F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Z)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->n:Lcom/google/googlenav/ui/android/C;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/C;->a()V

    :cond_5
    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/SwipeySwitcher;->t:Z

    goto :goto_1

    :cond_6
    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->b(Z)V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->e()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
