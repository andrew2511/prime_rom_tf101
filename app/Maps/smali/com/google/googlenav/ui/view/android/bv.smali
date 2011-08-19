.class Lcom/google/googlenav/ui/view/android/bv;
.super Ljava/lang/Object;

# interfaces
.implements LI/k;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/CheckBox;

.field e:[Landroid/widget/TextView;

.field f:Lcom/google/googlenav/ui/view/android/DistanceView;

.field g:Lcom/google/googlenav/ui/view/android/HeadingView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/LinearLayout;

.field q:Landroid/widget/ImageView;

.field r:Lcom/google/googlenav/ui/view/android/af;

.field s:Lcom/google/googlenav/ui/view/android/af;

.field t:Lcom/google/googlenav/ui/view/android/af;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->e:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->r:Lcom/google/googlenav/ui/view/android/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->r:Lcom/google/googlenav/ui/view/android/af;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->s:Lcom/google/googlenav/ui/view/android/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->t:Lcom/google/googlenav/ui/view/android/af;

    iput v2, v0, Lcom/google/googlenav/ui/view/android/af;->b:I

    :cond_2
    return-void
.end method
