.class Lcom/google/android/maps/rideabout/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/google/android/maps/rideabout/view/j;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/p;->b:Lcom/google/android/maps/rideabout/view/j;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/p;->a:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/p;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/i;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/maps/rideabout/view/o;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "position"

    iget-object v0, v0, Lcom/google/android/maps/rideabout/view/i;->a:LB/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/p;->b:Lcom/google/android/maps/rideabout/view/j;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/p;->b:Lcom/google/android/maps/rideabout/view/j;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/j;->dismiss()V

    return-void
.end method
