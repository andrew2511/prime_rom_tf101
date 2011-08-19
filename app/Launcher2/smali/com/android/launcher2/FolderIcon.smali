.class public Lcom/android/launcher2/FolderIcon;
.super Lcom/android/launcher2/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/android/launcher2/UserFolderInfo;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher2/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"
    .parameter "iconCache"

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 54
    .local v1, icon:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f020066

    invoke-virtual {p4, v2, v3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const v3, 0x7f020067

    invoke-virtual {p4, v2, v3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher2/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v1, v5, v0, v5, v5}, Lcom/android/launcher2/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v3, p3, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v1, p3}, Lcom/android/launcher2/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object p3, v1, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    .line 63
    iput-object p1, v1, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 65
    return-object v1
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

    .line 70
    move-object v0, p7

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v1, v0

    .line 71
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    iget v2, v1, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 72
    .local v2, itemType:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    iget-wide v3, v1, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-wide v5, v5, Lcom/android/launcher2/UserFolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v3, v7

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
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
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher2/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/launcher2/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
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
    .line 99
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

    .line 80
    instance-of v1, p7, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 82
    check-cast p7, Lcom/android/launcher2/ApplicationInfo;

    .end local p7
    invoke-virtual {p7}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v2

    .line 86
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/UserFolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 88
    return-void

    .line 84
    .end local v2           #item:Lcom/android/launcher2/ShortcutInfo;
    .restart local p7
    :cond_0
    move-object v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .restart local v2       #item:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_0
.end method
