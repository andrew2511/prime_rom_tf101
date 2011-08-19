.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mHasPhotoEditor:Z

.field private mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 1
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 61
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 62
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 63
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 97
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v3, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v1

    .line 99
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    move v2, v1

    .line 112
    .end local v1           #result:Z
    .local v2, result:Z
    :goto_0
    return v2

    .line 104
    .end local v2           #result:Z
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f070025

    if-ne v3, v4, :cond_1

    .line 106
    new-instance v0, Lcom/android/gallery3d/ui/ImportCompleteListener;

    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 108
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v3, p2, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)Z

    move-result v1

    .line 109
    .restart local v1       #result:Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f07002c

    if-ne v3, v4, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    :cond_2
    move v2, v1

    .line 112
    .end local v1           #result:Z
    .restart local v2       #result:Z
    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 117
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 124
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 174
    return-void
.end method

.method public setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 89
    return-void
.end method

.method public setHasPhotoEditor(Z)V
    .locals 0
    .parameter "hasPhotoEditor"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasPhotoEditor:Z

    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 67
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 68
    .local v1, actionMode:Landroid/view/ActionMode;
    new-instance v2, Lcom/android/gallery3d/ui/CustomMenu;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 69
    .local v2, customMenu:Lcom/android/gallery3d/ui/CustomMenu;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x7f04

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 71
    .local v3, customView:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 72
    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0b0008

    invoke-virtual {v2, v4, v5}, Lcom/android/gallery3d/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    .line 75
    new-instance v4, Lcom/android/gallery3d/ui/ActionModeHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 80
    return-object v1
.end method

.method public updateSupportedOperation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 138
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 139
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 140
    const/4 v4, -0x1

    .line 141
    .local v4, operation:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 142
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 143
    .local v1, item:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v5

    and-int/2addr v4, v5

    goto :goto_0

    .line 145
    .end local v1           #item:Lcom/android/gallery3d/data/Path;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 152
    and-int/lit16 v4, v4, 0x907

    .line 155
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-static {v5, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 160
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v4           #operation:I
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    const v6, 0x7f07002c

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 161
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 162
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 164
    const v5, 0x7f08001d

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 170
    :cond_3
    :goto_2
    return-void

    .line 147
    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #manager:Lcom/android/gallery3d/data/DataManager;
    .restart local v4       #operation:I
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasPhotoEditor:Z

    if-nez v5, :cond_1

    .line 148
    and-int/lit16 v4, v4, -0x201

    goto :goto_1

    .line 166
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v4           #operation:I
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 167
    const v5, 0x7f08001c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 133
    return-void
.end method
