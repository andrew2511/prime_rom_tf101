.class public Lcom/android/launcher2/AllApps2D;
.super Landroid/widget/RelativeLayout;
.source "AllApps2D.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/AllAppsView;
.implements Lcom/android/launcher2/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AllApps2D$AppsAdapter;,
        Lcom/android/launcher2/AllApps2D$HomeButton;,
        Lcom/android/launcher2/AllApps2D$AppType;
    }
.end annotation


# instance fields
.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsAdapter:Lcom/android/launcher2/AllApps2D$AppsAdapter;

.field private mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mGrid:Landroid/widget/GridView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mVisibleAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllApps2D;->mVisibleAppsList:Ljava/util/ArrayList;

    .line 67
    sget-object v0, Lcom/android/launcher2/AllApps2D$AppType;->ALL:Lcom/android/launcher2/AllApps2D$AppType;

    iput-object v0, p0, Lcom/android/launcher2/AllApps2D;->mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

    .line 126
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->setVisibility(I)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->setSoundEffectsEnabled(Z)V

    .line 129
    new-instance v0, Lcom/android/launcher2/AllApps2D$AppsAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mVisibleAppsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher2/AllApps2D$AppsAdapter;-><init>(Lcom/android/launcher2/AllApps2D;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/launcher2/AllApps2D;->mAppsAdapter:Lcom/android/launcher2/AllApps2D$AppsAdapter;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AllApps2D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AllApps2D;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 328
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 329
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 330
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 331
    .local v3, x:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v3, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 335
    .end local v3           #x:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v4

    .line 329
    .restart local v3       #x:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v3           #x:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 273
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 276
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 277
    .local v3, item:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 279
    .local v2, index:I
    if-gez v2, :cond_0

    .line 280
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 282
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllApps2D;->filterApps(Lcom/android/launcher2/AllApps2D$AppType;)V

    .line 285
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 339
    const-string v0, "Launcher.AllApps2D"

    const-string v1, "mAllAppsList"

    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 340
    return-void
.end method

.method public filterApps(Lcom/android/launcher2/AllApps2D$AppType;)V
    .locals 4
    .parameter "appType"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/launcher2/AllApps2D;->mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

    .line 312
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mAppsAdapter:Lcom/android/launcher2/AllApps2D$AppsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllApps2D$AppsAdapter;->setNotifyOnChange(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mVisibleAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 314
    sget-object v2, Lcom/android/launcher2/AllApps2D$AppType;->ALL:Lcom/android/launcher2/AllApps2D$AppType;

    if-ne p1, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mVisibleAppsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mAppsAdapter:Lcom/android/launcher2/AllApps2D$AppsAdapter;

    invoke-virtual {v2}, Lcom/android/launcher2/AllApps2D$AppsAdapter;->notifyDataSetChanged()V

    .line 324
    return-void

    .line 316
    :cond_1
    sget-object v2, Lcom/android/launcher2/AllApps2D$AppType;->DOWNLOADED:Lcom/android/launcher2/AllApps2D$AppType;

    if-ne p1, v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 318
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget v2, v1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mVisibleAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->getAnimation()Landroid/view/animation/Animation;

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
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/android/launcher2/AllApps2D;->mZoom:F

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AllApps2D;->mZoom:F

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v1, p0, Lcom/android/launcher2/AllApps2D;->mZoom:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->zoomed(F)V

    .line 256
    return-void

    .line 252
    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/AllApps2D;->mZoom:F

    goto :goto_0
.end method

.method public onDragViewVisible()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    .line 215
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    const-string v2, "all_apps_2d_grid"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AllApps2D;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    .line 136
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 151
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Launcher.AllApps2D"

    const-string v3, "Can\'t find necessary layout elements for AllApps2D"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AllApps2D;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    return-void

    .line 137
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 141
    const-string v2, "all_apps_2d_home"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AllApps2D;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 142
    .local v1, homeButton:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    .line 143
    new-instance v2, Lcom/android/launcher2/AllApps2D$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AllApps2D$1;-><init>(Lcom/android/launcher2/AllApps2D;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 202
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 180
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 181
    .local v0, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 185
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 195
    :goto_0
    return v2

    .line 189
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 190
    .local v0, app:Lcom/android/launcher2/ApplicationInfo;
    new-instance v1, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/ApplicationInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .line 192
    .end local v0           #app:Lcom/android/launcher2/ApplicationInfo;
    .local v1, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mDragController:Lcom/android/launcher2/DragController;

    sget v3, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v2, p2, p0, v1, v3}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    .line 193
    iget-object v2, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    move v2, v4

    .line 195
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    .line 168
    :cond_0
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 173
    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    move v0, v2

    .line 176
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 288
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 290
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 292
    .local v3, item:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/launcher2/AllApps2D;->findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v2

    .line 293
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    const-string v4, "Launcher.AllApps2D"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t find a match for item \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AllApps2D;->mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllApps2D;->filterApps(Lcom/android/launcher2/AllApps2D$AppType;)V

    .line 301
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
    .line 267
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps2D;->addApps(Ljava/util/ArrayList;)V

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mCurrentFilter:Lcom/android/launcher2/AllApps2D$AppType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->filterApps(Lcom/android/launcher2/AllApps2D$AppType;)V

    .line 270
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/launcher2/AllApps2D;->mDragController:Lcom/android/launcher2/DragController;

    .line 207
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/launcher2/AllApps2D;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 163
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 305
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps2D;->removeApps(Ljava/util/ArrayList;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps2D;->addApps(Ljava/util/ArrayList;)V

    .line 307
    return-void
.end method

.method public zoom(FZ)V
    .locals 2
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->cancelLongPress()V

    .line 226
    iput p1, p0, Lcom/android/launcher2/AllApps2D;->mZoom:F

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/AllApps2D;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/launcher2/AllApps2D;->mAppsAdapter:Lcom/android/launcher2/AllApps2D$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->onAnimationEnd()V

    goto :goto_0

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps2D;->onAnimationEnd()V

    goto :goto_0
.end method
