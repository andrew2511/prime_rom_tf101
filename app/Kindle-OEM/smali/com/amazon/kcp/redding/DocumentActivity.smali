.class public abstract Lcom/amazon/kcp/redding/DocumentActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DocumentActivity.java"


# static fields
.field public static final EXTRA_COLOR_CHANGE:Ljava/lang/String; = "colorChange"


# instance fields
.field private final allowScreenDimRunnable:Ljava/lang/Runnable;

.field private final delayScreenDimRunnable:Ljava/lang/Runnable;

.field private final screenDimHelperHandler:Landroid/os/Handler;

.field private final screenWakeReceiver:Landroid/content/BroadcastReceiver;

.field private textColorDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/amazon/kcp/redding/DocumentActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/DocumentActivity$1;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDimRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/amazon/kcp/redding/DocumentActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/DocumentActivity$2;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenWakeReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/amazon/kcp/redding/DocumentActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/DocumentActivity$3;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDim()V

    return-void
.end method

.method private delayScreenDim()V
    .locals 6

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getRootView()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 86
    .local v1, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    .line 87
    .local v0, currentMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getReaderThemeResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/redding/DocumentActivity;->setTheme(I)V

    .line 90
    .end local v0           #currentMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    .end local v1           #settings:Lcom/amazon/kcp/application/SettingsController;
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->textColorDrawables:Ljava/util/List;

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenWakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/DocumentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenWakeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/redding/DocumentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onUserInteraction()V

    .line 123
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDim()V

    .line 124
    return-void
.end method

.method protected registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->textColorDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method protected updateTextColorDrawables(Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 4
    .parameter "currentMode"

    .prologue
    .line 143
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getTextColorFilterFromColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 145
    .local v0, currentFilter:Landroid/graphics/ColorFilter;
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->textColorDrawables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 147
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 150
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-boolean v3, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v3, :cond_1

    .line 152
    invoke-static {p0}, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 154
    :cond_1
    return-void
.end method
