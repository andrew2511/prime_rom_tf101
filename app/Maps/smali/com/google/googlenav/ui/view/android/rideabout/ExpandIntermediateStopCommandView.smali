.class public Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field final b:Landroid/view/View$OnClickListener;

.field private final c:Lu/e;

.field private final d:Ljava/util/List;

.field private final e:Z

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lu/e;)V
    .locals 2

    const/4 v1, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/h;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)Lu/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v0}, Lu/e;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e()V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->k()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0f013b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v1}, Lu/e;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f0f013a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->k()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v1}, Lu/e;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v0}, Lu/e;->s()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x397

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Landroid/view/LayoutInflater;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v0}, Lu/e;->G()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d()V

    return-void
.end method

.method b()Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lu/e;

    invoke-virtual {v0}, Lu/e;->H()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e()V

    return-void
.end method
