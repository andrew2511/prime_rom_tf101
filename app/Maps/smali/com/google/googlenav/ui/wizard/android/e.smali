.class Lcom/google/googlenav/ui/wizard/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cK;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/android/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/p;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/e;->b:Lcom/google/googlenav/ui/wizard/android/p;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/android/e;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/e;->b:Lcom/google/googlenav/ui/wizard/android/p;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/p;->b(Lcom/google/googlenav/ui/wizard/android/p;)Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/android/a;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/android/a;-><init>(Lcom/google/googlenav/ui/wizard/android/e;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ar;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/e;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/e;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/e;->b:Lcom/google/googlenav/ui/wizard/android/p;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/p;->b(Lcom/google/googlenav/ui/wizard/android/p;)Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/e;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
