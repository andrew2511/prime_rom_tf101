.class public Lcom/google/googlenav/ui/view/android/K;
.super Lcom/google/googlenav/ui/view/android/bz;


# static fields
.field private static final c:I


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x36

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/K;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lu/v;Lcom/google/googlenav/ui/aY;Z)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/view/ViewGroup;Lu/v;Lcom/google/googlenav/ui/aY;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bz;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    sget v0, Lcom/google/googlenav/ui/view/android/K;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/K;->d:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/K;->f()V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lu/v;Lcom/google/googlenav/ui/aY;Z)Landroid/view/View;
    .locals 11

    const v10, 0x7f0f011c

    const v9, 0x7f0d00df

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030048

    invoke-virtual {v0, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f011f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aL;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/aL;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0f0120

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v2, 0x421

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0121

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lu/v;->K()I

    move-result v2

    invoke-virtual {p1}, Lu/v;->Y()Lu/k;

    move-result-object v3

    invoke-virtual {v3}, Lu/k;->n()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lcom/google/googlenav/ui/aM;->a(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/K;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v3

    if-ne v3, v6, :cond_1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " - "

    invoke-static {v1, v3, v2, v9}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {p1}, Lu/v;->as()I

    move-result v4

    invoke-static {p1, v2, v4, v6}, Lh/q;->a(Lu/v;Lcom/google/googlenav/ui/aV;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const v4, 0x7f0d003e

    invoke-static {v1, v3, v2, v4}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0f0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    const v1, 0x7f0f0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_5

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aK;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/aK;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0125

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v2, 0x267

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lu/v;->m()I

    move-result v2

    if-ne v2, v6, :cond_6

    const v2, 0x7f0f0126

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aJ;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/aJ;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0f0127

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v2, 0x3f7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0128

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lu/v;->P()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    return-object v0

    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lu/v;->m()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    sget-char v4, Lcom/google/googlenav/ui/aV;->bE:C

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    :goto_4
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " - "

    invoke-static {v1, v3, v2, v9}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1}, Lu/v;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/K;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " - "

    invoke-static {v1, v3, v2, v9}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1}, Lu/v;->aA()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0d00e0

    invoke-static {v1, v3, v2, v4}, Lcom/google/googlenav/ui/view/android/K;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lu/v;->m()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    sget-char v4, Lcom/google/googlenav/ui/aV;->bB:C

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lu/v;->Y()Lu/k;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/view/android/aI;->a:[I

    invoke-virtual {v1}, Lu/k;->o()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f0203a2

    :goto_5
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_0
    const v1, 0x7f0203a4

    goto :goto_5

    :pswitch_1
    const v1, 0x7f0203a3

    goto :goto_5

    :pswitch_2
    const v1, 0x7f0203a5

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    const v1, 0x7f0f0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f0d0045

    const v2, 0x7f0d00de

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p0, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method protected static ae_()V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/K;->d:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->g(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bz;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/K;->f()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bz;->b()V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->g(I)V

    return-void
.end method
