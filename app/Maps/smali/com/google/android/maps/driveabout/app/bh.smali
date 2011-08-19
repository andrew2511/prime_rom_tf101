.class public Lcom/google/android/maps/driveabout/app/bh;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;[LF/u;IZ)V
    .locals 2

    const v0, 0x7f030025

    invoke-static {p2, p3, p4}, Lcom/google/android/maps/driveabout/app/bh;->a([LF/u;IZ)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private static a([LF/u;IZ)[Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "__SEARCH"

    aput-object v2, v1, v0

    :cond_2
    return-object v1
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/u;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/u;

    const-string v1, "\n"

    invoke-static {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "__SEARCH"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const v0, 0x7f0f0099

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f009a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f009b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0200e1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bh;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method
