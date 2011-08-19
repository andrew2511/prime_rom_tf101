.class Lcom/google/googlenav/ui/android/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/aa;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/aa;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/aa;

    iget-object v1, v1, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x14

    iget-object v6, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/aa;

    iget-object v6, v6, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v6, v6, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v6}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Landroid/os/Handler;JJLT/c;J)V

    return-void
.end method
