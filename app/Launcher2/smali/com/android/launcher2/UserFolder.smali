.class public Lcom/android/launcher2/UserFolder;
.super Lcom/android/launcher2/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/UserFolder;

    return-object p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 34
    move-object v0, p7

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v1, v0

    .line 35
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    iget v2, v1, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 36
    .local v2, itemType:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    iget-wide v3, v1, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v5, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v5, v5, Lcom/android/launcher2/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v3, v7

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 80
    new-instance v0, Lcom/android/launcher2/ShortcutsAdapter;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher2/UserFolderInfo;

    .end local p1
    iget-object v2, p1, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 81
    return-void
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 56
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 64
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 60
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 44
    instance-of v1, p7, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 46
    check-cast p7, Lcom/android/launcher2/ApplicationInfo;

    .end local p7
    invoke-virtual {p7}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v2

    .line 50
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ShortcutsAdapter;->add(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 52
    return-void

    .line 48
    .end local v2           #item:Lcom/android/launcher2/ShortcutInfo;
    .restart local p7
    :cond_0
    move-object v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .restart local v2       #item:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    .line 68
    if-eqz p3, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    .line 70
    .local v0, adapter:Lcom/android/launcher2/ShortcutsAdapter;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutsAdapter;->remove(Ljava/lang/Object;)V

    .line 72
    .end local v0           #adapter:Lcom/android/launcher2/ShortcutsAdapter;
    :cond_0
    return-void
.end method

.method onOpen()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/launcher2/Folder;->onOpen()V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->requestFocus()Z

    .line 89
    return-void
.end method
