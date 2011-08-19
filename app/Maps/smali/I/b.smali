.class public LI/b;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field private final a:Lcom/google/googlenav/c;

.field private final b:Lx/U;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Lx/U;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LI/b;->c:Ljava/lang/String;

    iput-object p1, p0, LI/b;->a:Lcom/google/googlenav/c;

    iput-object p2, p0, LI/b;->b:Lx/U;

    return-void
.end method

.method static synthetic a(LI/b;)Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, LI/b;->a:Lcom/google/googlenav/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f03009e

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 3

    new-instance v0, LI/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI/A;-><init>(LI/m;)V

    const v1, 0x7f0f0222

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, v0, LI/A;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0226

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, v0, LI/A;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0f022a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    iput-object p0, v0, LI/A;->c:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    iget-object v1, v0, LI/A;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0224

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, LI/A;->d:Landroid/widget/TextView;

    iget-object v1, v0, LI/A;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0228

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, LI/A;->e:Landroid/widget/TextView;

    const v1, 0x7f0f0221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, LI/A;->f:Landroid/view/View;

    const v1, 0x7f0f0229

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, LI/A;->g:Landroid/view/View;

    const v1, 0x7f0f0225

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, LI/A;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    check-cast p2, LI/A;

    iget-object v0, p0, LI/b;->a:Lcom/google/googlenav/c;

    invoke-static {v0}, Li/bl;->k(Lcom/google/googlenav/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LI/b;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LI/b;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, LI/A;->d:Landroid/widget/TextView;

    iget-object v1, p0, LI/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, LI/A;->a:Landroid/widget/LinearLayout;

    new-instance v1, LI/m;

    invoke-direct {v1, p0, p1}, LI/m;-><init>(LI/b;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v4, 0x1

    iget-object v1, p2, LI/A;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, LI/A;->e:Landroid/widget/TextView;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, LI/A;->b:Landroid/widget/LinearLayout;

    new-instance v2, LI/l;

    invoke-direct {v2, p0, p1}, LI/l;-><init>(LI/b;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p2, LI/A;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const/16 v1, 0x3d

    if-nez v0, :cond_3

    iget-object v0, p2, LI/A;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, LI/A;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, LI/A;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x3e

    :goto_3
    iget-object v1, p0, LI/b;->a:Lcom/google/googlenav/c;

    sget-object v2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    iget-object v3, p0, LI/b;->b:Lx/U;

    invoke-static {v1, v2, v0, v3}, Lh/v;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/av;ILx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iget-object v1, p2, LI/A;->c:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v1, p2, LI/A;->c:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    iget-object v2, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    new-instance v3, Lx/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    return-void

    :cond_0
    const/16 v0, 0x84

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LI/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p2, LI/A;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v1, p2, LI/A;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p2, LI/A;->f:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, LI/A;->g:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, LI/A;->h:Landroid/view/View;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    move v0, v5

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_4
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
