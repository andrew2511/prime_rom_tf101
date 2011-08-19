.class public Lcom/google/googlenav/ui/android/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/View;

.field private e:[I

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:[I

.field private i:Landroid/view/View;

.field private j:[I

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Rect;

.field private n:[I

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/content/IntentFilter;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Landroid/os/Handler;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->j:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->m:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->n:[I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->p:Landroid/content/IntentFilter;

    new-instance v0, Lcom/google/googlenav/ui/android/Q;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/Q;-><init>(Lcom/google/googlenav/ui/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/googlenav/ui/android/P;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/P;-><init>(Lcom/google/googlenav/ui/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/google/googlenav/ui/android/ac;->u:Z

    iput-boolean v3, p0, Lcom/google/googlenav/ui/android/ac;->v:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->c:Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    const/high16 v0, 0x41a0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/ac;->a:I

    iget v0, p0, Lcom/google/googlenav/ui/android/ac;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/android/ac;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/android/ac;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->j()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    iput v2, p0, Lcom/google/googlenav/ui/android/ac;->t:I

    return-void
.end method

.method private a(II)Landroid/view/View;
    .locals 12

    const/4 v6, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    aget v0, v0, v10

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    aget v1, v1, v6

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    iget-object v5, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    move v11, v5

    move-object v5, v3

    move v3, v11

    :goto_0
    if-ltz v3, :cond_5

    iget-object v6, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v7, :cond_3

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v7, :cond_3

    move v7, v10

    :goto_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v8, :cond_4

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v8, :cond_4

    move v8, v10

    :goto_4
    mul-int/2addr v7, v7

    mul-int/2addr v8, v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/googlenav/ui/android/ac;->a:I

    if-ge v7, v8, :cond_0

    if-ge v7, v4, :cond_0

    move v4, v7

    move-object v5, v6

    goto :goto_1

    :cond_3
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_3

    :cond_4
    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_4

    :cond_5
    move-object v0, v5

    goto :goto_2
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ac;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->j:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/ac;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ac;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->w:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/ac;->a(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->l()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/ac;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/android/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->k()V

    return-void
.end method

.method private j()Landroid/widget/FrameLayout;
    .locals 4

    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x20218

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030017

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v0, 0x7f030016

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method private k()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    aget v3, v3, v5

    add-int/2addr v3, v0

    aput v3, v2, v5

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->n:[I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    aget v4, v2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    aget v2, v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lx/N;->l()Lx/N;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/N;->l()Lx/N;

    move-result-object v0

    invoke-virtual {v0}, Lx/N;->j()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->k()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/ac;->b(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/android/ac;->t:I

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public a(Z)V
    .locals 3

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/ac;->l:Z

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/googlenav/ui/android/O;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/O;-><init>(Lcom/google/googlenav/ui/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ac;->o:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->q:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->p:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->k:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->k:Z

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->m()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->v:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->m()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->s:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/ac;->t:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/android/ac;->t:I

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/android/ac;->t:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;->m()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->u:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->u:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->r:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/android/N;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/N;-><init>(Lcom/google/googlenav/ui/android/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->x:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/ac;->b(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->x:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->u:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->w:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ac;->w:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/ac;->b(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, -0x3e60

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/ac;->k:Z

    if-eqz v1, :cond_2

    if-eq v0, v6, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/ac;->a(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/google/googlenav/ui/android/ac;->k:Z

    :cond_1
    move v0, v6

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->i:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->j:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ac;->h:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ac;->j:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    aget v4, v4, v5

    sub-int v1, v4, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/google/googlenav/ui/android/ac;->e:[I

    aget v4, v4, v6

    sub-int v2, v4, v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v4, v1, v7

    if-gez v4, :cond_3

    cmpl-float v4, v1, v8

    if-lez v4, :cond_3

    neg-float v1, v1

    invoke-virtual {v3, v1, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    cmpg-float v1, v2, v7

    if-gez v1, :cond_4

    cmpl-float v1, v2, v8

    if-lez v1, :cond_4

    neg-float v1, v2

    invoke-virtual {v3, v7, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/ac;->a(II)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/ac;->a(Landroid/view/View;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/ac;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
