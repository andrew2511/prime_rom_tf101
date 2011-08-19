.class Lcom/google/android/maps/driveabout/app/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    check-cast p2, Lcom/google/android/maps/driveabout/app/aW;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/aW;->a()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v2, 0x7f0f00d5

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const v2, 0x7f0f00d4

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CHIME_BEFORE_SPEECH"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/er;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;

    return-void
.end method
