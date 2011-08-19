.class public Lcom/google/android/maps/driveabout/app/eE;
.super Landroid/widget/Toast;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eE;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x31

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eE;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/maps/driveabout/app/eE;->setGravity(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/eE;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eE;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eE;->setView(Landroid/view/View;)V

    :cond_0
    move-object v1, v0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f0200d3

    move v2, p1

    move v3, v0

    :goto_0
    const v0, 0x7f0f0105

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0f0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/eE;->show()V

    return-void

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    const v0, 0x7f0200d4

    move v2, v3

    move v3, v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0200d2

    move v2, v3

    move v3, v0

    goto :goto_0
.end method
