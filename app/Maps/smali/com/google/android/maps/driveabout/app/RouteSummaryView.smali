.class public Lcom/google/android/maps/driveabout/app/RouteSummaryView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/t;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/t;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    const v0, 0x7f0f00ea

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    const v0, 0x7f0f00ed

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    return-void
.end method

.method private b(LF/M;)Ljava/util/ArrayList;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, LF/M;->c()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, LF/M;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00cb

    const/4 v3, 0x1

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, LF/M;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/v;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, LF/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/M;->B()[LF/K;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, LF/c;->a([LF/K;I)Z

    move-result v0

    invoke-virtual {p1}, LF/M;->C()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    const-string v0, "!"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, LF/M;->B()[LF/K;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, LF/c;->a([LF/K;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00c8

    const v3, 0x7f020082

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1

    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b00c7

    const v3, 0x7f020083

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "!"

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method public a(LF/M;)V
    .locals 7

    const/4 v2, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, LF/M;->c()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0200f2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, LF/M;->c()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a:Lcom/google/android/maps/driveabout/app/t;

    invoke-virtual {p1}, LF/M;->o()I

    move-result v2

    invoke-virtual {p1}, LF/M;->n()I

    move-result v3

    invoke-virtual {p1}, LF/M;->p()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(III)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, LF/M;->l()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, LF/u;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    invoke-virtual {v1}, LF/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LF/u;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa0

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->b(LF/M;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void

    :cond_0
    const v1, 0x7f0200ef

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    invoke-virtual {v1}, LF/s;->a()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v3, v5

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    if-lez v3, :cond_6

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
