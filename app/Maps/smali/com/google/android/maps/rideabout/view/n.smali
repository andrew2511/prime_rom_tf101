.class Lcom/google/android/maps/rideabout/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/google/android/maps/rideabout/view/j;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/n;->c:Lcom/google/android/maps/rideabout/view/j;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/n;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/google/android/maps/rideabout/view/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/n;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/n;->a:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_0
    return-void
.end method
