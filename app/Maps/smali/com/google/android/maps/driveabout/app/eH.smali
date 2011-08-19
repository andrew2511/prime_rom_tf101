.class Lcom/google/android/maps/driveabout/app/eH;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/eH;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/eH;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/eH;->c:I

    iput p4, p0, Lcom/google/android/maps/driveabout/app/eH;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/eH;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eH;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:I

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030041

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eH;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/eH;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0f0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/eH;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ac;Lf/h;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/eH;->d:I

    invoke-virtual {p1, v0, p2, v2}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
