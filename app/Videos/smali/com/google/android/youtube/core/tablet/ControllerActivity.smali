.class public abstract Lcom/google/android/youtube/core/tablet/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"


# instance fields
.field private final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/tablet/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private selectedController:Lcom/google/android/youtube/core/tablet/Controller;

.field private started:Z

.field private upNavigationEnabled:Z

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/core/tablet/Controller;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method protected addController(Lcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V
    .locals 7
    .parameter "controller"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 58
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/youtube/core/tablet/Controller;->getContentViewId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, content:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, controllerState:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 65
    iget-object v3, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v6

    .line 66
    .local v1, controllerIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controller_state_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 69
    .end local v1           #controllerIndex:I
    :cond_0
    invoke-virtual {p1, v0, v2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object v3, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectController(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 74
    :cond_1
    return-void
.end method

.method protected final addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V
    .locals 7
    .parameter "controller"

    .prologue
    const/4 v6, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getView(Lcom/google/android/youtube/core/tablet/Controller;)Landroid/view/View;

    move-result-object v2

    .line 277
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10102eb

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 278
    .local v1, vals:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v0, v3

    .line 279
    .local v0, actionBarHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 284
    return-void
.end method

.method public final enableUpNavigation(Z)V
    .locals 3
    .parameter "upNavigationEnabled"

    .prologue
    const/4 v2, 0x4

    .line 144
    iput-boolean p1, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->upNavigationEnabled:Z

    .line 145
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getSelectedController()Lcom/google/android/youtube/core/tablet/Controller;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    return-object v0
.end method

.method protected final getView(Lcom/google/android/youtube/core/tablet/Controller;)Landroid/view/View;
    .locals 1
    .parameter "controller"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/tablet/Controller;->onActivityResult(IILandroid/content/Intent;)Z

    .line 269
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 250
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->setVolumeControlStream(I)V

    .line 52
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 214
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/tablet/Controller;

    .line 138
    .local v0, controller:Lcom/google/android/youtube/core/tablet/Controller;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onDestroy()V

    goto :goto_0

    .line 140
    .end local v0           #controller:Lcom/google/android/youtube/core/tablet/Controller;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->upNavigationEnabled:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->onUpPressed()V

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 239
    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/tablet/Controller;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 178
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/tablet/Controller;

    .line 180
    .local v0, controller:Lcom/google/android/youtube/core/tablet/Controller;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 181
    .local v1, controllerState:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/tablet/Controller;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v4, "controller_ui_state"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 185
    .local v2, controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v0           #controller:Lcom/google/android/youtube/core/tablet/Controller;
    .end local v1           #controllerState:Landroid/os/Bundle;
    .end local v2           #controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    const-string v5, "selected_controller_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectController(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 189
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 161
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/tablet/Controller;

    .line 163
    .local v0, controller:Lcom/google/android/youtube/core/tablet/Controller;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, controllerOutState:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/tablet/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 167
    .local v2, controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v4, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 168
    const-string v4, "controller_ui_state"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v0           #controller:Lcom/google/android/youtube/core/tablet/Controller;
    .end local v1           #controllerOutState:Landroid/os/Bundle;
    .end local v2           #controllerUiState:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    const-string v4, "selected_controller_index"

    iget-object v5, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->started:Z

    .line 126
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->started:Z

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 133
    return-void
.end method

.method protected onUpPressed()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected selectController(Lcom/google/android/youtube/core/tablet/Controller;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    if-eq p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->invalidateOptionsMenu()V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->views:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->setContentView(Landroid/view/View;)V

    .line 97
    iget-boolean v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->started:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectedController:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 101
    :cond_1
    return-void
.end method

.method protected selectControllerFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v1, "selected_controller_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/youtube/core/tablet/ControllerActivity;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->selectController(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 115
    .end local v0           #index:I
    :cond_0
    return-void
.end method
