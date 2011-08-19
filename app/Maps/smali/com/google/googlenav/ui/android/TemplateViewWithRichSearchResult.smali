.class public Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field a:Ljava/util/List;

.field i:Ljava/util/List;

.field j:Ljava/util/List;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:[Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lx/U;Lx/Q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v5

    :goto_0
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bm:Lcom/google/googlenav/ui/av;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bn:Lcom/google/googlenav/ui/av;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    invoke-static {p0, v2, v1}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bp:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    if-eq v2, v3, :cond_5

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->br:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    if-eq v2, v3, :cond_7

    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bu:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lx/U;Lx/Q;)V

    goto :goto_1

    :cond_9
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->aF:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    goto :goto_1

    :cond_a
    iget-object v2, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->bv:Lcom/google/googlenav/ui/av;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bx;->C:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lcom/google/googlenav/ui/bx;->D:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-object v3, v1, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    iget-object v3, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    invoke-static {v2, v3, v1}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto/16 :goto_1

    :cond_b
    move v2, v5

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    move v1, v4

    :goto_3
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_e

    if-eqz v1, :cond_10

    :cond_e
    move v0, v4

    :goto_4
    move v1, v5

    :goto_5
    if-ge v1, v2, :cond_11

    iget-object v3, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto :goto_5

    :cond_f
    move v1, v5

    goto :goto_3

    :cond_10
    move v0, v5

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/ui/bi;

    iget-object v2, v0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->b:Lx/Q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/aV;->bM:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/google/googlenav/ui/aV;->bN:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->L:Ljava/lang/Object;

    sget-object v1, Lcom/google/googlenav/ui/bx;->h:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const v0, 0x7f02025c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->setBackgroundResource(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    check-cast v0, LaB/f;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f025f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0f0261

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f0f0262

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0f0263

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/TextView;

    const v0, 0x7f0f0260

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/CheckBox;

    const v0, 0x7f0f034e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->p:Landroid/widget/TextView;

    const v0, 0x7f0f0265

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->q:Landroid/widget/ImageView;

    return-void
.end method
