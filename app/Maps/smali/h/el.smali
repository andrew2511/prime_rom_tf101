.class Lh/el;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/google/googlenav/ui/view/android/e;

.field c:Lh/eA;

.field final synthetic d:Lh/bc;


# direct methods
.method public constructor <init>(Lh/bc;Lh/eA;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lh/el;->d:Lh/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh/el;->a:Landroid/view/View;

    iput-object v0, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    iput-object p2, p0, Lh/el;->c:Lh/eA;

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/google/googlenav/c;)V
    .locals 3

    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ay;->a(J)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f0f0065

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0f0063

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_2

    const v0, 0x7f0f0205

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/DistanceView;

    const v0, 0x7f0f020f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aO;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lf/h;)V

    :cond_2
    invoke-virtual {p2}, Lcom/google/googlenav/c;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->be:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    const-string v0, " "

    sget-object v2, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    const v0, 0x7f0f0064

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Li/P;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    if-eqz v0, :cond_4

    const v1, 0x7f0f0067

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 6

    const/16 v4, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lh/el;->a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;II)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;II)V
    .locals 6

    invoke-virtual {p3}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f005f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, p5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, v0, p2}, Lh/el;->a(Landroid/widget/LinearLayout;Lcom/google/googlenav/c;)V

    const v1, 0x7f0f0068

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh/cJ;

    invoke-direct {v2, p0}, Lh/cJ;-><init>(Lh/el;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh/cI;

    invoke-direct {v2, p0}, Lh/cI;-><init>(Lh/el;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "card_id"

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/Workspace;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 6

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lh/el;->a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;II)V

    return-void
.end method

.method private c(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lh/el;->a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;II)V

    return-void
.end method

.method private d(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lh/el;->a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030152

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p2, p0, Lh/el;->a:Landroid/view/View;

    iput-object p1, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    const v0, 0x7f0f0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2d0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    const v0, 0x7f0f01f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh/cH;

    invoke-direct {v1, p0}, Lh/cH;-><init>(Lh/el;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh/cG;

    invoke-direct {v1, p0}, Lh/cG;-><init>(Lh/el;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/Workspace;

    check-cast p0, Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/Workspace;->setHapticFeedbackEnabled(Z)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    return-void
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lh/el;->a:Landroid/view/View;

    const v1, 0x7f0f0349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/Workspace;

    check-cast v0, Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->av()[Lcom/google/googlenav/c;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    array-length v6, v1

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0, v0, v5, v6}, Lh/el;->a(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    iget-object v6, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0, v0, v5, v6}, Lh/el;->b(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_1

    :cond_1
    array-length v6, v1

    sub-int/2addr v6, v8

    if-ne v4, v6, :cond_2

    iget-object v6, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0, v0, v5, v6}, Lh/el;->c(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lh/el;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0, v0, v5, v6}, Lh/el;->d(Lcom/google/googlenav/ui/Workspace;Lcom/google/googlenav/c;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method
