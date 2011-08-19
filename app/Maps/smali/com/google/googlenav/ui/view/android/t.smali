.class Lcom/google/googlenav/ui/view/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DistanceView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/t;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/t;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->requestLayout()V

    return-void
.end method
