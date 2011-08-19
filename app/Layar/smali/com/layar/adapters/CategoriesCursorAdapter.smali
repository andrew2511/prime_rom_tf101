.class public Lcom/layar/adapters/CategoriesCursorAdapter;
.super Lcom/layar/adapters/LayarCursorAdapter;
.source "CategoriesCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final PROJECTIONS_COUNT:I = 0x3

.field public static final PROJECTION_COUNT:I = 0x2

.field public static final PROJECTION_ID:I = 0x0

.field public static final PROJECTION_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCategoryManager:Lcom/layar/data/category/CategoryManager;

.field private final mIconSize:I

.field private final mImageCache:Lcom/layar/data/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/layar/adapters/CategoriesCursorAdapter;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/adapters/CategoriesCursorAdapter;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "autoRequery"

    .prologue
    .line 33
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/category/CategoryManager;->categoryCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/layar/adapters/LayarCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 34
    invoke-static {}, Lcom/layar/App;->getImageCache()Lcom/layar/data/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mImageCache:Lcom/layar/data/ImageCache;

    .line 35
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mCategoryManager:Lcom/layar/data/category/CategoryManager;

    .line 37
    sget-boolean v0, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    :goto_0
    iput v0, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mIconSize:I

    .line 38
    return-void

    .line 37
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method


# virtual methods
.method protected _initProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 42
    .local v0, projection:[Ljava/lang/String;
    const/4 v1, 0x0

    sget-object v2, Lcom/layar/provider/CategoriesAlias;->ID:Lcom/layar/provider/CategoriesAlias;

    iget-object v2, v2, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 43
    const/4 v1, 0x1

    sget-object v2, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v2, v2, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 44
    const/4 v1, 0x2

    sget-object v2, Lcom/layar/provider/CategoriesAlias;->CNT:Lcom/layar/provider/CategoriesAlias;

    iget-object v2, v2, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 45
    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;

    .line 74
    .local v1, holder:Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;
    :goto_0
    iget-object v4, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mFrom:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 75
    .local v2, id:I
    iget-object v4, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mImageCache:Lcom/layar/data/ImageCache;

    iget v5, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mIconSize:I

    iget-object v6, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/layar/data/ImageCache;->setCategoryImageBitmap(IILandroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 77
    iget-object v4, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mFrom:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, name:Ljava/lang/String;
    iget-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mFrom:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 80
    .local v0, count:I
    iget-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 64
    .end local v0           #count:I
    .end local v1           #holder:Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;-><init>(Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;)V

    .line 65
    .restart local v1       #holder:Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;
    const v4, 0x7f07003f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 66
    const v4, 0x7f070040

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->loading:Landroid/widget/ProgressBar;

    .line 67
    const v4, 0x7f07003d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 68
    const v4, 0x7f070041

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/layar/adapters/CategoriesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 90
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/layar/adapters/CategoriesCursorAdapter;->mCategoryManager:Lcom/layar/data/category/CategoryManager;

    invoke-virtual {v1}, Lcom/layar/data/category/CategoryManager;->categoryCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layar/adapters/CategoriesCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0
.end method
