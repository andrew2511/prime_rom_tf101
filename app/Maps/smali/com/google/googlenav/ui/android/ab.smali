.class Lcom/google/googlenav/ui/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/BaseAndroidView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, LA/n;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ab;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->m()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AndroidView"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View Activity should be the MapsActivity, but was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
