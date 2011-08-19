.class Lcom/google/android/maps/rideabout/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/NavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/c;->a:Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v0, 0x61

    const-string v1, "sm"

    const-string v2, "c"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/NavigationView;)Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
