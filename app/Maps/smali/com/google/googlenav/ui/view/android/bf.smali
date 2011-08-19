.class Lcom/google/googlenav/ui/view/android/bf;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bf;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/ui/view/android/bf;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    iput-boolean p5, p0, Lcom/google/googlenav/ui/view/android/bf;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bf;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bf;->d:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030146

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bf;->a(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bf;->e:Z

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bf;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bf;->e:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bf;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0f0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bf;->e:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
