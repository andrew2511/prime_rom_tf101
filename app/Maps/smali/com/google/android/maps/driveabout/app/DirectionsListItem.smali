.class public Lcom/google/android/maps/driveabout/app/DirectionsListItem;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lt/ae;


# instance fields
.field private a:LF/y;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-static {v1, v2}, LF/D;->a(Landroid/content/Context;LF/y;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/driveabout/app/t;->b(LF/y;Lt/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-virtual {v2}, LF/y;->j()LF/y;

    move-result-object v2

    invoke-virtual {v2}, LF/y;->e()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/t;->a(II)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-virtual {v0}, LF/y;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/n;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/t;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/app/t;->a(LF/n;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->b:Landroid/widget/TextView;

    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->g:Lcom/google/android/maps/driveabout/app/t;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->f:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    :cond_0
    return-void
.end method

.method public a(LF/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a:LF/y;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a()V

    :cond_0
    return-void
.end method

.method public a(Lt/aB;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/s;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/s;-><init>(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
