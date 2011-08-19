.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static s:[I

.field private static t:[I


# instance fields
.field private a:[Lcom/google/android/common/g;

.field private b:Lcom/google/android/common/e;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/GestureDetector;

.field private i:Landroid/widget/Scroller;

.field private j:Lcom/google/android/common/h;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/common/j;

.field private q:Lcom/google/android/common/j;

.field private r:Ljava/lang/Runnable;

.field private u:Ljava/util/HashMap;

.field private v:Lcom/google/android/common/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 599
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->s:[I

    .line 600
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->t:[I

    return-void

    .line 599
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 600
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/g;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/google/android/common/j;

    new-instance v1, Lcom/google/android/common/a;

    invoke-direct {v1, p0}, Lcom/google/android/common/a;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/j;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/f;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    .line 138
    new-instance v0, Lcom/google/android/common/j;

    new-instance v1, Lcom/google/android/common/b;

    invoke-direct {v1, p0}, Lcom/google/android/common/b;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/j;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/f;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/j;

    .line 553
    new-instance v0, Lcom/google/android/common/d;

    invoke-direct {v0, p0}, Lcom/google/android/common/d;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/google/android/common/i;

    invoke-direct {v0, p0}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/g;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/google/android/common/j;

    new-instance v1, Lcom/google/android/common/a;

    invoke-direct {v1, p0}, Lcom/google/android/common/a;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/j;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/f;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    .line 138
    new-instance v0, Lcom/google/android/common/j;

    new-instance v1, Lcom/google/android/common/b;

    invoke-direct {v1, p0}, Lcom/google/android/common/b;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/j;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/f;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/j;

    .line 553
    new-instance v0, Lcom/google/android/common/d;

    invoke-direct {v0, p0}, Lcom/google/android/common/d;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/google/android/common/i;

    invoke-direct {v0, p0}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-nez v0, :cond_0

    move v0, p1

    .line 294
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v0}, Lcom/google/android/common/e;->c()I

    move-result v0

    .line 286
    if-nez v0, :cond_1

    move v0, p1

    .line 287
    goto :goto_0

    .line 289
    :cond_1
    if-gez p1, :cond_2

    .line 290
    neg-int v1, p1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    .line 292
    :goto_1
    rem-int v0, v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 273
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 492
    new-instance v0, Lcom/google/android/common/c;

    invoke-direct {v0, p0}, Lcom/google/android/common/c;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    .line 493
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    .line 494
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    .line 496
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:I

    .line 498
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/g;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/g;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/common/g;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 537
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getHeight()I

    move-result v1

    .line 540
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 543
    invoke-interface {p1}, Lcom/google/android/common/g;->b()Landroid/view/View;

    move-result-object v3

    .line 544
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/google/android/common/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 545
    mul-int v2, v0, p2

    const/4 v4, 0x0

    mul-int v5, v0, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 546
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aput-object p1, v0, p2

    .line 547
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    .line 319
    return-void
.end method

.method private a(ZLjava/lang/Runnable;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 302
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 303
    :goto_0
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    .line 304
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    iput-object p2, v0, Lcom/google/android/common/i;->a:Ljava/lang/Runnable;

    .line 306
    if-nez p1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 309
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :goto_1
    return-void

    .line 302
    :cond_0
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 313
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/e;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v0, v0, v3

    .line 330
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 331
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aput-object v0, v1, v4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 334
    return-void
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    return v0
.end method

.method private c()F
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 841
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    sub-int/2addr v1, v0

    .line 846
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 847
    return v0
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v0}, Lcom/google/android/common/e;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/j;->a(Lcom/google/android/common/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v0}, Lcom/google/android/common/e;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/j;->a(Lcom/google/android/common/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/g;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/j;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/j;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/common/SwipeySwitcher;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v1, v1, v0

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1}, Lcom/google/android/common/g;->a()V

    .line 150
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public foreachView(Lcom/google/android/common/l;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    return-void
.end method

.method public getAdapter()Lcom/google/android/common/e;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getAdapter()Lcom/google/android/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/common/e;->c()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 800
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/g;->b()Landroid/view/View;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedViewAdjacent(Z)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    aget-object v0, v0, v1

    .line 792
    if-eqz v0, :cond_1

    .line 793
    invoke-interface {v0}, Lcom/google/android/common/g;->b()Landroid/view/View;

    move-result-object v0

    .line 795
    :goto_1
    return-object v0

    .line 791
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 795
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 853
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 870
    :goto_0
    return v0

    .line 857
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 858
    packed-switch v0, :pswitch_data_0

    .line 870
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    goto :goto_0

    .line 860
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 863
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 864
    iget v1, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    sub-int v1, v0, v1

    .line 865
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 866
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->n:I

    if-le v1, v2, :cond_1

    .line 867
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    .line 868
    iput-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    goto :goto_1

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v1}, Lcom/google/android/common/e;->c()I

    move-result v1

    .line 607
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->removeAllViews()V

    .line 609
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-nez v2, :cond_2

    .line 745
    :cond_0
    :goto_1
    return-void

    .line 605
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 614
    :cond_2
    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    iput v2, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    .line 617
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    .line 618
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 619
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 620
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v4, v4, v3

    .line 621
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 623
    if-eqz v4, :cond_3

    .line 624
    invoke-interface {v4}, Lcom/google/android/common/g;->c()Landroid/content/Intent;

    move-result-object v5

    .line 627
    if-eqz v5, :cond_3

    .line 628
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 643
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_6

    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->s:[I

    .line 644
    :goto_3
    const/4 v4, 0x0

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_7

    .line 645
    aget v5, v3, v4

    .line 646
    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v6}, Lcom/google/android/common/e;->b()Landroid/content/Intent;

    move-result-object v6

    .line 648
    if-eqz v6, :cond_5

    .line 649
    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/g;

    .line 653
    if-eqz p1, :cond_5

    .line 654
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aput-object p1, v6, v5

    .line 658
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 643
    :cond_6
    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->t:[I

    goto :goto_3

    .line 665
    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 666
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 667
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/g;

    .line 668
    invoke-interface {p1}, Lcom/google/android/common/g;->a()V

    goto :goto_5

    .line 677
    :cond_8
    const/4 v2, -0x1

    :goto_6
    const/4 v3, 0x1

    if-gt v2, v3, :cond_12

    .line 678
    add-int/lit8 v3, v2, 0x1

    .line 679
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v4, v4, v3

    .line 680
    if-nez v4, :cond_b

    .line 681
    const/4 v5, 0x0

    .line 683
    packed-switch v1, :pswitch_data_0

    .line 701
    const/4 v5, 0x0

    .line 704
    :cond_9
    :goto_7
    if-eqz v5, :cond_10

    .line 705
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/common/j;->a(Landroid/content/Intent;)Lcom/google/android/common/g;

    move-result-object v4

    .line 717
    :cond_a
    :goto_8
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v6

    .line 723
    :cond_b
    invoke-direct {p0, v4, v3}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/g;I)V

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 687
    :pswitch_0
    if-eqz v2, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    .line 694
    :pswitch_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_e

    .line 695
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/j;->a(Lcom/google/android/common/g;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    .line 696
    :cond_e
    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    .line 697
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/j;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/j;->a(Lcom/google/android/common/g;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto :goto_7

    .line 709
    :cond_10
    if-nez v2, :cond_11

    if-lez v1, :cond_11

    .line 711
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v4}, Lcom/google/android/common/e;->a()Lcom/google/android/common/g;

    move-result-object v4

    .line 713
    :cond_11
    if-nez v4, :cond_a

    .line 714
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/j;

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    invoke-interface {v5}, Lcom/google/android/common/e;->b()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/common/j;->a(Landroid/content/Intent;)Lcom/google/android/common/g;

    move-result-object v4

    goto :goto_8

    .line 728
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    if-eqz v1, :cond_13

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 733
    :cond_13
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    goto/16 :goto_1

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    .line 511
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 512
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 513
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 514
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    .line 515
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 516
    invoke-virtual {p0, v3}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 518
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 520
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 523
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setMeasuredDimension(II)V

    .line 526
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 884
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 944
    :goto_0
    return v0

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 889
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    .line 944
    goto :goto_0

    .line 891
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    .line 893
    iput-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    .line 894
    iput-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    goto :goto_1

    .line 898
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 901
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->j:Lcom/google/android/common/h;

    if-eqz v0, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()F

    .line 908
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    goto :goto_1

    .line 918
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    if-eqz v0, :cond_1

    .line 919
    iput-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    .line 920
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 921
    if-nez v0, :cond_2

    .line 925
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()F

    move-result v0

    .line 927
    const/high16 v1, 0x3f00

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 928
    invoke-direct {p0, v2}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    .line 935
    :cond_2
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->o:Z

    goto :goto_1

    .line 929
    :cond_3
    const/high16 v1, -0x4100

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 930
    invoke-direct {p0, v3}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    goto :goto_2

    .line 932
    :cond_4
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    goto :goto_2

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    .line 323
    return-void
.end method

.method public setAdapter(Lcom/google/android/common/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 952
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    .line 955
    if-nez p1, :cond_1

    move v0, v3

    .line 956
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/common/g;->a()V

    .line 959
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/g;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 956
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_1
    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    .line 964
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 967
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public setOnTouchCallback(Lcom/google/android/common/h;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->j:Lcom/google/android/common/h;

    .line 502
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lcom/google/android/common/e;

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 978
    :cond_0
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    .line 980
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    goto :goto_0
.end method
