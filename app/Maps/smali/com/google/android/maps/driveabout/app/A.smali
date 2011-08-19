.class Lcom/google/android/maps/driveabout/app/A;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/aK;)V
    .locals 11

    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v0, 0x7f030027

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/aK;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/aK;->i()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    aget-object v4, v2, v8

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0d000b

    invoke-direct {v4, p1, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    move v2, v8

    :goto_0
    new-instance v4, Lcom/google/android/maps/driveabout/app/dn;

    invoke-direct {v4, v3, v2}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/app/A;->add(Ljava/lang/Object;)V

    :cond_1
    cmp-long v0, v0, v9

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/app/dn;

    const v1, 0x7f0b00be

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/A;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/A;->add(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move v2, v7

    goto :goto_0
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/A;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/A;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/A;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/A;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/dn;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dn;->a()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
