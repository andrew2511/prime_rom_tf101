.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# instance fields
.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragController:Lcom/android/launcher2/DragController;

.field protected mDragItem:Lcom/android/launcher2/ShortcutInfo;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field protected mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 63
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCloseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 89
    return-void
.end method

.method onClose()V
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 157
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 158
    return-void
.end method

.method public onDragViewVisible()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    .line 118
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 73
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCloseButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 80
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 81
    .local v1, pos:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 82
    iget-object v2, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 84
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 102
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 104
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 106
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    .line 108
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showRenameDialog(Lcom/android/launcher2/FolderInfo;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 153
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 114
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 140
    return-void
.end method
