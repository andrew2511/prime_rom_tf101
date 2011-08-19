.class public Lcom/google/googlenav/ui/view/android/rideabout/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->b:I

    iput p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->c:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v4, v1, v2

    invoke-virtual {p0, v4, p2}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/p;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Landroid/content/Context;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->b:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method

.method public varargs b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/text/SpannableStringBuilder;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    const-string v2, "<b>"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "</b>"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "<b>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/text/SpannableStringBuilder;)V

    const-string v0, "</b>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    const-string v2, "{"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "}"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "{"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, p2, v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/text/SpannableStringBuilder;)V

    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    const-string v3, "<b>"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "{"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/text/SpannableStringBuilder;)V

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/p;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Landroid/content/Context;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->c:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method
