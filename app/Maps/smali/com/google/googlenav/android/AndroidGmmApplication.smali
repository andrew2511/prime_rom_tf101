.class public Lcom/google/googlenav/android/AndroidGmmApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/google/googlenav/android/P;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/android/P;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/android/P;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, LA/n;->c()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->e()V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->d()V

    :cond_0
    return-void
.end method
