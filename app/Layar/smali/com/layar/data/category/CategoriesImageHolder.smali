.class public Lcom/layar/data/category/CategoriesImageHolder;
.super Ljava/lang/Object;
.source "CategoriesImageHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;,
        Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final baseUrl:Ljava/lang/String;

.field final bitmaps:[Landroid/graphics/Bitmap;

.field final count:I

.field final iconSize:I

.field final iconsToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;

.field final needResize:Z

.field final noIcon:[Z

.field task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/layar/data/category/CategoriesImageHolder;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/category/CategoriesImageHolder;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(IZLcom/layar/data/category/CategoriesImageHolder$IconInvalidator;)V
    .locals 2
    .parameter "iconSize"
    .parameter "needResize"
    .parameter "listener"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconsToLoad:Ljava/util/Stack;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    .line 37
    iput-object p3, p0, Lcom/layar/data/category/CategoriesImageHolder;->listener:Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;

    .line 38
    iput p1, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconSize:I

    .line 39
    iput-boolean p2, p0, Lcom/layar/data/category/CategoriesImageHolder;->needResize:Z

    .line 41
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v0

    .line 42
    .local v0, categoryManager:Lcom/layar/data/category/CategoryManager;
    invoke-virtual {v0}, Lcom/layar/data/category/CategoryManager;->categoryCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    .line 43
    iget v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->noIcon:[Z

    .line 44
    iget v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v0}, Lcom/layar/data/category/CategoryManager;->getCategoryBaseURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->baseUrl:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->cancel(Z)Z

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    .line 96
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    if-lt v0, v2, :cond_1

    .line 89
    monitor-exit p0

    .line 105
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v2, v0

    .line 98
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 99
    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 100
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->noIcon:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0           #i:I
    .end local v1           #image:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "category"

    .prologue
    .line 50
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoriesImageHolder;->initImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoriesImageHolder;->initImage(I)Landroid/graphics/Bitmap;

    :cond_2
    move-object v1, v0

    .line 53
    goto :goto_0
.end method

.method public initImage(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "category"

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->noIcon:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    .line 62
    iget v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconSize:I

    iget-boolean v2, p0, Lcom/layar/data/category/CategoriesImageHolder;->needResize:Z

    .line 61
    invoke-static {p1, v1, v2}, Lcom/layar/data/ImageCache;->readCategoryIcon(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 64
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->noIcon:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 67
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconsToLoad:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconsToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    monitor-exit p0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    if-eqz v1, :cond_1

    .line 80
    monitor-exit p0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->iconsToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, category:I
    new-instance v1, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    invoke-direct {v1, p0, v0}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;-><init>(Lcom/layar/data/category/CategoriesImageHolder;I)V

    iput-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    .line 84
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
