.class Lcom/google/googlenav/ui/view/android/rideabout/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->b:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->b:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;)Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    const/16 v1, 0xe7

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/e;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
