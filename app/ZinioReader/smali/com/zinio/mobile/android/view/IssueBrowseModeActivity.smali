.class public Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;
.implements Lcom/zinio/mobile/android/a/a/l;
.implements Lcom/zinio/mobile/android/a/a/v;
.implements Lcom/zinio/mobile/android/a/b/m;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field private final F:Landroid/view/View$OnClickListener;

.field private G:Ljava/lang/Integer;

.field private H:Ljava/lang/Integer;

.field a:Lcom/zinio/mobile/android/a/b/l;

.field b:Lcom/zinio/mobile/android/a/a/j;

.field c:I

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/LinearLayout;

.field f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/RelativeLayout;

.field k:Landroid/widget/ProgressBar;

.field public l:Z

.field private n:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;

.field private o:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;

.field private p:Lcom/zinio/mobile/android/view/ax;

.field private q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Gallery;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/os/Handler;

.field private w:Z

.field private x:I

.field private y:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->w:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->l:Z

    .line 109
    new-instance v0, Lcom/zinio/mobile/android/view/as;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/as;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->A:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/zinio/mobile/android/view/aq;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/aq;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->B:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Lcom/zinio/mobile/android/view/ap;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ap;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->C:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/zinio/mobile/android/view/an;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/an;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->D:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/zinio/mobile/android/view/ao;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ao;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->E:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/zinio/mobile/android/view/al;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/al;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    .line 760
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    .line 761
    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    .line 866
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 58
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v1

    if-gtz p1, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_1

    if-ge p1, p2, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    invoke-virtual {v3, p1, v4, v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/a/j;->e(I)Lcom/zinio/mobile/android/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    sub-int v0, p2, v0

    if-ge p1, v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-lez p1, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    invoke-virtual {v3, p1, v4, v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v0, v6, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    invoke-virtual {v3, p1, v4, v5}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v0, v6, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/j;->e(I)Lcom/zinio/mobile/android/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(Z)V

    .line 508
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    .line 509
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->p()V

    .line 510
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/zinio/mobile/android/view/am;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/am;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 530
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 533
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->z:Z

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 535
    :goto_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 536
    new-instance v2, Lcom/zinio/mobile/android/a/a/f;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3, v1}, Lcom/zinio/mobile/android/a/a/j;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/zinio/mobile/android/a/a/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_0
    new-instance v1, Lcom/zinio/mobile/android/view/bo;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {v1, p0, v0, v2}, Lcom/zinio/mobile/android/view/bo;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zinio/mobile/android/a/a/j;)V

    .line 539
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 540
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    new-instance v2, Lcom/zinio/mobile/android/view/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/zinio/mobile/android/view/b;-><init>(Lcom/zinio/mobile/android/view/bo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->t()Lcom/zinio/mobile/android/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v5

    .line 547
    :goto_1
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 548
    return-void

    :cond_3
    move v0, v4

    .line 546
    goto :goto_1
.end method

.method private g()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 551
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->E:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 565
    :cond_0
    :goto_0
    iget v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    if-nez v0, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h()V

    .line 568
    :cond_1
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 702
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 705
    const/16 v0, 0x8

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    .line 706
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 707
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g()V

    .line 736
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 721
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 723
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->x:I

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    iget v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    if-nez v0, :cond_2

    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/j;->c(Z)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 728
    :cond_1
    return-void

    .line 725
    :cond_2
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/a/a/j;->c(Z)V

    goto :goto_1
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 4
    .parameter

    .prologue
    .line 764
    invoke-interface {p1}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    check-cast p1, Lcom/zinio/mobile/android/a/a/h;

    .line 771
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/k;

    .line 773
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "regular"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "anchor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 777
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 778
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v1, p1, v0}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 779
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    .line 780
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    new-instance v1, Lcom/zinio/mobile/android/view/aj;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/aj;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method

.method public final b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 788
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    invoke-static {p1, v0, p0}, Lcom/zinio/mobile/android/App;->a(Lcom/zinio/mobile/android/a/a/j;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 789
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 497
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 809
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->finish()V

    .line 810
    return-void
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f()V

    .line 732
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 428
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->x:I

    .line 429
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c()V

    .line 430
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e()V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v2, 0x7f0c000a

    const/16 v4, 0x8

    .line 230
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    new-instance v0, Ljava/lang/Boolean;

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->z:Z

    .line 235
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->setContentView(I)V

    .line 238
    iput-object p0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->y:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    .line 239
    new-instance v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->y:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {v0, p0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->n:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;

    .line 242
    new-instance v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->y:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {v0, p0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->o:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;

    .line 244
    const/high16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Landroid/widget/FrameLayout;)V

    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->x:I

    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 245
    :goto_0
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    .line 246
    new-instance v0, Lcom/zinio/mobile/android/view/ax;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ax;-><init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->p:Lcom/zinio/mobile/android/view/ax;

    .line 248
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->c:Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Lcom/zinio/mobile/android/view/dialogs/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_0
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onDestroy()V

    .line 379
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    const-class v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Class;)V

    .line 385
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 397
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d()V

    .line 400
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i()V

    .line 402
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 405
    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    goto :goto_0

    .line 412
    :cond_3
    const/16 v0, 0x16

    if-ne p1, v0, :cond_5

    .line 413
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->b(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    goto :goto_0

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    goto :goto_0

    .line 421
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->setIntent(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onPause()V

    .line 340
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 346
    const-class v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Class;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->p:Lcom/zinio/mobile/android/view/ax;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->n:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->o:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c()V

    .line 364
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i()V

    .line 365
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 366
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->d(Lcom/zinio/mobile/android/a/a/j;)V

    .line 369
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/bo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->z:Z

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->s:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/bo;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/bo;->a()V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 282
    invoke-static {p0}, Lcom/zinio/mobile/android/App;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->p:Lcom/zinio/mobile/android/view/ax;

    invoke-static {}, Lcom/zinio/mobile/android/view/ax;->b()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->n:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$TimeOutExceptionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "TimeOutException"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->o:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity$OutOfMemoryErrorReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "OutOfMemoryError"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/s;->a(Ljava/lang/Object;)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/zinio/mobile/android/a/a/q;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/a/a/q;-><init>(Lcom/zinio/mobile/android/a/a/j;)V

    :goto_0
    const-string v2, "pub_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "issue_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v3, v2, v0}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/zinio/mobile/android/a/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f()V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_5

    .line 301
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->finish()V

    .line 334
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v1, v4

    .line 297
    goto :goto_0

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 306
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->q:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 308
    iput-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    .line 309
    iput-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    .line 311
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/k;

    .line 313
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "regular"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anchor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 315
    :cond_7
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->b()I

    move-result v0

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v0

    .line 316
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    iget-object v3, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v3, v0, v2}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 319
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    .line 320
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    .line 321
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 327
    :cond_9
    iput-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->G:Ljava/lang/Integer;

    .line 328
    iput-object v4, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->H:Ljava/lang/Integer;

    .line 330
    :cond_a
    iget-object v0, p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 331
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e()V

    .line 332
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->g()V

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStart()V

    .line 276
    invoke-static {}, Lcom/zinio/mobile/android/d/a;->a()V

    .line 277
    return-void
.end method
