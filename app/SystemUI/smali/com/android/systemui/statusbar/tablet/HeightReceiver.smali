.class public Lcom/android/systemui/statusbar/tablet/HeightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeightReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHeight:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    return-void
.end method

.method private setPlugged(Z)V
    .locals 10
    .parameter "plugged"

    .prologue
    .line 74
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 76
    .local v5, res:Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 77
    .local v1, height:I
    if-eqz p1, :cond_0

    .line 78
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 82
    .local v6, shortSide:I
    const/16 v7, 0x2d0

    sub-int v1, v6, v7

    .line 85
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #shortSide:I
    :cond_0
    const v7, 0x1050009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 87
    .local v4, minHeight:I
    if-ge v1, v4, :cond_1

    .line 88
    move v1, v4

    .line 90
    :cond_1
    const-string v7, "StatusBar.HeightReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resizing status bar plugged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    .line 94
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 96
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;

    invoke-interface {v7, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 53
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .local v0, plugged:Z
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->setPlugged(Z)V

    .line 64
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, val:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    return-void
.end method
