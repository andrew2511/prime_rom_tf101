.class public Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
.super Landroid/widget/ImageButton;
.source "TableOfContentsActionItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/books/model/LoaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ImageButton;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/books/model/LoaderListener",
        "<",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TableOfContentsActionItem"


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mNavigator:Lcom/google/android/apps/books/util/Navigator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mReadingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    .line 117
    new-instance v2, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;-><init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)V

    iput-object v2, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 63
    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-super {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    return v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private show()V
    .locals 6

    .prologue
    .line 125
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :cond_0
    const-string v3, "TableOfContentsActionItem"

    const-string v4, "missing volumemetadata when trying to show chapterlist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    const v5, 0x1010300

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 135
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 136
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v3, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;-><init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    .line 138
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 141
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 147
    .local v2, popupWidth:I
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->show()V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 155
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 156
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const-string v4, "TableOfContentsActionItem"

    .line 169
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    const-string v3, "TableOfContentsActionItem"

    const-string v3, "missing volumemetadata when trying to show chapterlist"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 175
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, chapterId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterStartPosition(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    .line 178
    .local v2, readingPos:Lcom/google/android/apps/books/common/Position;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    const-string v4, "SelectChapter"

    invoke-interface {v3, v2, v5, v4}, Lcom/google/android/apps/books/util/Navigator;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;)V

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 181
    :cond_2
    const-string v3, "TableOfContentsActionItem"

    const-string v3, "missing NavigationListener"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const-string v0, "missing metadata"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/VolumeMetadata;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 89
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Lcom/google/android/apps/books/model/VolumeMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setEnabled(Z)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 96
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 105
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method

.method public setNavigator(Lcom/google/android/apps/books/util/Navigator;)V
    .locals 1
    .parameter "navigator"

    .prologue
    .line 72
    const-string v0, "missing navigator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Navigator;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    .line 73
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    return-void
.end method

.method public setReadingMode(I)V
    .locals 0
    .parameter "readingMode"

    .prologue
    .line 99
    iput p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    .line 100
    return-void
.end method
