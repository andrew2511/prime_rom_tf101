.class Lcom/google/android/maps/driveabout/app/cw;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cb;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/cb;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cw;->a:Lcom/google/android/maps/driveabout/app/cb;

    const v0, 0x1090005

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cw;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const v0, 0x7f0f00b6

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/cb;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bi;Lcom/google/android/maps/driveabout/app/cn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/cw;-><init>(Lcom/google/android/maps/driveabout/app/cb;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bi;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v3, 0x1020014

    if-eqz p2, :cond_0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    move-object v2, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/cw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->e()I

    move-result v0

    const v3, 0x7f0f0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02008c

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    :goto_2
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0200d6

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cw;->a:Lcom/google/android/maps/driveabout/app/cb;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/app/cb;->a(Lcom/google/android/maps/driveabout/app/cb;Lcom/google/android/maps/driveabout/app/bi;)V

    return-void
.end method
