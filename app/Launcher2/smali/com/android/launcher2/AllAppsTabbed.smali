.class public Lcom/android/launcher2/AllAppsTabbed;
.super Landroid/widget/TabHost;
.source "AllAppsTabbed.java"

# interfaces
.implements Lcom/android/launcher2/AllAppsView;
.implements Lcom/android/launcher2/LauncherTransitionable;


# instance fields
.field private mAllApps:Lcom/android/launcher2/AllAppsPagedView;

.field private mBackground:Lcom/android/launcher2/AllAppsBackground;

.field private mContext:Landroid/content/Context;

.field private mFirstLayout:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mFirstLayout:Z

    .line 57
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    return-object v0
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->addApps(Ljava/util/ArrayList;)V

    .line 242
    return-void
.end method

.method public dumpState()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsPagedView;->dumpState()V

    .line 257
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsTabbed;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsPagedView;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f03001d

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsTabbed;->setup()V

    .line 67
    const v4, 0x7f08000d

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllAppsPagedView;

    iput-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    .line 68
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v4}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 72
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Launcher.AllAppsTabbed"

    const-string v5, "Can\'t find necessary layout elements for AllAppsTabbed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    new-instance v0, Lcom/android/launcher2/AllAppsTabbed$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AllAppsTabbed$1;-><init>(Lcom/android/launcher2/AllAppsTabbed;)V

    .line 84
    .local v0, contentFactory:Landroid/widget/TabHost$TabContentFactory;
    const v4, 0x1020013

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    .line 85
    .local v3, tabWidget:Landroid/widget/TabWidget;
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v4, "ALL"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #tabView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 90
    .restart local v2       #tabView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0013

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v4, "DOWNLOADED"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 93
    new-instance v4, Lcom/android/launcher2/AllAppsTabbed$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AllAppsTabbed$2;-><init>(Lcom/android/launcher2/AllAppsTabbed;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 123
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->setVisibility(I)V

    .line 124
    return-void

    .line 69
    .end local v0           #contentFactory:Landroid/widget/TabHost$TabContentFactory;
    .end local v2           #tabView:Landroid/widget/TextView;
    .end local v3           #tabWidget:Landroid/widget/TabWidget;
    :cond_1
    const v4, 0x7f080007

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsTabbed;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllAppsBackground;

    iput-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mBackground:Lcom/android/launcher2/AllAppsBackground;

    .line 70
    iget-object v4, p0, Lcom/android/launcher2/AllAppsTabbed;->mBackground:Lcom/android/launcher2/AllAppsBackground;

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v4}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public onLauncherTransitionEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v2, 0x8

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AllAppsTabbed;->setLayerType(ILandroid/graphics/Paint;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mBackground:Lcom/android/launcher2/AllAppsBackground;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsBackground;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->enableBackground()V

    .line 229
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mBackground:Lcom/android/launcher2/AllAppsBackground;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AllAppsBackground;->setVisibility(I)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsPagedView;->allowHardwareLayerCreation()V

    .line 232
    return-void
.end method

.method public onLauncherTransitionStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 198
    if-eqz p1, :cond_1

    .line 200
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AllAppsTabbed;->setLayerType(ILandroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->disableBackground()V

    .line 205
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mBackground:Lcom/android/launcher2/AllAppsBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsBackground;->setVisibility(I)V

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsTabbed;->buildLayer()V

    .line 214
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 164
    iget-boolean v6, p0, Lcom/android/launcher2/AllAppsTabbed;->mFirstLayout:Z

    if-eqz v6, :cond_0

    .line 165
    iput-boolean v7, p0, Lcom/android/launcher2/AllAppsTabbed;->mFirstLayout:Z

    .line 168
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/AllAppsPagedView;->getPageContentWidth()I

    move-result v3

    .line 169
    .local v3, pageWidth:I
    const v6, 0x1020013

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsTabbed;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    .line 170
    .local v4, tabWidget:Landroid/widget/TabWidget;
    const v6, 0x7f080008

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsTabbed;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, allAppsTabBar:Landroid/view/View;
    if-nez v0, :cond_1

    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v6}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v6

    .line 172
    :cond_1
    const/4 v5, 0x0

    .line 173
    .local v5, tabWidgetPadding:I
    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    .line 174
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 175
    invoke-virtual {v4, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsTabbed;->getMeasuredWidth()I

    move-result v6

    add-int v7, v3, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 179
    .local v2, newWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v6, :cond_3

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    new-instance v6, Lcom/android/launcher2/AllAppsTabbed$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/AllAppsTabbed$3;-><init>(Lcom/android/launcher2/AllAppsTabbed;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsTabbed;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 189
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AllAppsPagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 247
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->setApps(Ljava/util/ArrayList;)V

    .line 237
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 1
    .parameter "dragger"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 135
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 129
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 130
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 146
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/AllAppsTabbed;->mFirstLayout:Z

    if-eqz v2, :cond_0

    .line 149
    const/4 p1, 0x4

    .line 151
    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 152
    .local v0, isVisible:Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 153
    if-eqz v0, :cond_2

    const/high16 v2, 0x3f80

    move v1, v2

    .line 154
    .local v1, zoom:F
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/AllAppsPagedView;->zoom(FZ)V

    .line 155
    return-void

    .end local v0           #isVisible:Z
    .end local v1           #zoom:F
    :cond_1
    move v0, v3

    .line 151
    goto :goto_0

    .line 153
    .restart local v0       #isVisible:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1
.end method

.method public surrender()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsPagedView;->surrender()V

    .line 262
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 252
    return-void
.end method

.method public zoom(FZ)V
    .locals 1
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 140
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsTabbed;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed;->mAllApps:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/AllAppsPagedView;->zoom(FZ)V

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
