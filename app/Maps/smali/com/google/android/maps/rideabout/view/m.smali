.class Lcom/google/android/maps/rideabout/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/google/android/maps/rideabout/view/j;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/m;->b:Lcom/google/android/maps/rideabout/view/j;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/m;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/m;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sub-int/2addr v0, v2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/m;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_0
    return-void
.end method
