.class public Lcom/google/android/youtube/videos/tablet/LocalVideosController;
.super Lcom/google/android/youtube/core/tablet/Controller;
.source "LocalVideosController.java"


# instance fields
.field private adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

.field private carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

.field private helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .locals 0
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p1, p2, p4}, Lcom/google/android/youtube/core/tablet/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 37
    iput-object p3, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 38
    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f040004

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 47
    const v0, 0x7f080012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    .line 48
    new-instance v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    .line 49
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setAdapter(Landroid/widget/Adapter;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->destroy()V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->onDestroy()V

    .line 71
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onDestroy()V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->resume()V

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->helper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->reset()V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/LocalVideosController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->pause()V

    .line 64
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 65
    return-void
.end method
