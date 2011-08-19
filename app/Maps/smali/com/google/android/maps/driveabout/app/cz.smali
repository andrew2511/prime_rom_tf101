.class public Lcom/google/android/maps/driveabout/app/cz;
.super Landroid/app/Dialog;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/view/View;

.field private u:Lcom/google/android/maps/driveabout/app/da;

.field private v:Lcom/google/android/maps/driveabout/app/dc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d00e2

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cz;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cz;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cz;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cz;)Lcom/google/android/maps/driveabout/app/dc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->v:Lcom/google/android/maps/driveabout/app/dc;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cz;->b:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/cz;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cz;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->u:Lcom/google/android/maps/driveabout/app/da;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/da;->setLevel(I)Z

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->v:Lcom/google/android/maps/driveabout/app/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->v:Lcom/google/android/maps/driveabout/app/dc;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dc;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->t:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cu;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cu;-><init>(Lcom/google/android/maps/driveabout/app/cz;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/cz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cz;->a()V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/maps/driveabout/app/dc;)V
    .locals 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cz;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/cz;->a:J

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cz;->v:Lcom/google/android/maps/driveabout/app/dc;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cz;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cz;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cz;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cz;->e:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/maps/driveabout/app/cz;->h:I

    iput p5, p0, Lcom/google/android/maps/driveabout/app/cz;->i:I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->g:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v1, 0x7f0f0373

    const v0, 0x7f03014b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->t:Landroid/view/View;

    const v0, 0x7f0f0375

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->l:Landroid/widget/TextView;

    const v0, 0x7f0f0376

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->m:Landroid/widget/TextView;

    const v0, 0x7f0f0377

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->n:Landroid/widget/TextView;

    const v0, 0x7f0f0378

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0f037a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->p:Landroid/widget/TextView;

    const v0, 0x7f0f037b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->q:Landroid/widget/TextView;

    const v0, 0x7f0f0374

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f037d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->r:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cr;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cr;-><init>(Lcom/google/android/maps/driveabout/app/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f037c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->s:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cs;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cs;-><init>(Lcom/google/android/maps/driveabout/app/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ct;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ct;-><init>(Lcom/google/android/maps/driveabout/app/cz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cz;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/da;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/da;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->u:Lcom/google/android/maps/driveabout/app/da;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->u:Lcom/google/android/maps/driveabout/app/da;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->k:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cz;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->s:Landroid/widget/Button;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cz;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TimeoutDialog"

    const-string v1, "error: no action text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4
.end method
