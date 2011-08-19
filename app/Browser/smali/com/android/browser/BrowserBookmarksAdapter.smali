.class Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/CursorAdapter;
.source "BrowserBookmarksAdapter.java"


# instance fields
.field mCurrentView:I

.field mFaviconBackground:Landroid/graphics/drawable/Drawable;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "defaultView"

    .prologue
    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->selectView(I)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .local v0, density:F
    invoke-static {p1}, Lcom/android/browser/BookmarkUtils;->createListFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method


# virtual methods
.method bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 59
    const v4, 0x7f100018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, thumb:Landroid/widget/ImageView;
    const v4, 0x7f100012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const v4, 0x7f020076

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 69
    .local v2, thumbData:[B
    const/4 v1, 0x0

    .line 70
    .local v1, thumbBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 71
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    :cond_1
    if-nez v1, :cond_2

    .line 75
    const v4, 0x7f020011

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :goto_1
    const v4, 0x7f020010

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 84
    const v4, 0x7f100001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, favicon:Landroid/widget/ImageView;
    const v4, 0x7f100012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const v4, 0x7f020038

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 94
    .local v2, faviconData:[B
    const/4 v1, 0x0

    .line 95
    .local v1, faviconBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 96
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    :cond_1
    if-nez v1, :cond_2

    .line 100
    const v4, 0x7f020001

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 0
    .parameter "position"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040004

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040007

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public selectView(I)V
    .locals 3
    .parameter "view"

    .prologue
    .line 120
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    .line 125
    return-void
.end method
