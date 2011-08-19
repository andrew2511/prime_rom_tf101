.class Lcom/google/googlenav/ui/android/U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/U;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/U;->a:Lcom/google/googlenav/ui/android/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/SwipeySwitcher;->a(Lcom/google/googlenav/ui/android/SwipeySwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
