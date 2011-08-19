.class public Lcom/layar/adapters/BaseLayersAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;,
        Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;,
        Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;
    }
.end annotation


# static fields
.field protected static final MAX_ICON_TASKS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected emptyIcon:Landroid/graphics/Bitmap;

.field protected helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

.field protected iconTaskCount:I

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field protected mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/ResultLayer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingHeight:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mRowHeight:I

.field protected showAddButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/layar/adapters/BaseLayersAdapter;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/adapters/BaseLayersAdapter;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 53
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    iput-boolean v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->showAddButton:Z

    .line 55
    iput-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    .line 58
    new-instance v0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    invoke-direct {v0, v1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;-><init>(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    .line 61
    iput-object p1, p0, Lcom/layar/adapters/BaseLayersAdapter;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x7f0a0004

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mRowHeight:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f0a0005

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mLoadingHeight:I

    .line 68
    return-void
.end method

.method private getEmptyIcon()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v5, p0, Lcom/layar/adapters/BaseLayersAdapter;->emptyIcon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/layar/adapters/BaseLayersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 417
    .local v4, resources:Landroid/content/res/Resources;
    const v5, 0x7f0200a9

    .line 416
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 420
    .local v1, maskBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 419
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/adapters/BaseLayersAdapter;->emptyIcon:Landroid/graphics/Bitmap;

    .line 421
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/layar/adapters/BaseLayersAdapter;->emptyIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 424
    .local v3, p:Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 425
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 428
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 430
    const v5, 0x7f0200a8

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 431
    .local v2, overlayBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #maskBitmap:Landroid/graphics/Bitmap;
    .end local v2           #overlayBitmap:Landroid/graphics/Bitmap;
    .end local v3           #p:Landroid/graphics/Paint;
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_0
    iget-object v5, p0, Lcom/layar/adapters/BaseLayersAdapter;->emptyIcon:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v5

    .line 413
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getIcon(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    .line 327
    .local v0, holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    iget-object v1, v0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    .line 328
    .local v1, rlayer:Lcom/layar/data/layer/ResultLayer;
    iget-object v2, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v3, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$7(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    monitor-exit p0

    .line 343
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v2, v2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    monitor-exit p0

    goto :goto_0

    .line 325
    .end local v0           #holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .end local v1           #rlayer:Lcom/layar/data/layer/ResultLayer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 334
    .restart local v0       #holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .restart local v1       #rlayer:Lcom/layar/data/layer/ResultLayer;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 335
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v3, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$8(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V

    .line 325
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 337
    :cond_2
    new-instance v2, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    invoke-direct {v2, p0, v0}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;-><init>(Lcom/layar/adapters/BaseLayersAdapter;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V

    iput-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    .line 338
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    iget v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 340
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v3, v0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v3, v3, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$9(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/layar/data/layer/Layer20;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/data/layer/ResultLayer;

    invoke-direct {v1, p1}, Lcom/layar/data/layer/ResultLayer;-><init>(Lcom/layar/data/layer/Layer20;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 83
    monitor-exit p0

    .line 87
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPendingItem()V
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->hasPendingItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/data/layer/ResultLayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/layar/data/layer/ResultLayer;-><init>(Lcom/layar/data/layer/Layer20;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 297
    :cond_0
    return-void
.end method

.method protected childGetView(Landroid/view/ViewGroup;Lcom/layar/data/layer/ResultLayer;)Z
    .locals 1
    .parameter "root"
    .parameter "rlayer"

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    invoke-static {v0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$5(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 116
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 112
    monitor-exit p0

    .line 118
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->onPause()V

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void
.end method

.method public get(I)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter "position"

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 92
    monitor-exit p0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/ResultLayer;

    iget-object v0, v0, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    monitor-exit p0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/layar/data/layer/ResultLayer;
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 129
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/data/layer/ResultLayer;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getLayoutParams(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    return-object v0
.end method

.method public getLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 172
    if-nez p2, :cond_1

    .line 173
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/layar/adapters/BaseLayersAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 174
    .local v7, root:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 176
    move-object p2, v7

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v6

    .line 183
    .local v6, rlayer:Lcom/layar/data/layer/ResultLayer;
    iget-object v9, v6, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    if-nez v9, :cond_2

    .line 184
    iget-object v9, p0, Lcom/layar/adapters/BaseLayersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030038

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 185
    .local v8, viewLoadingMore:Landroid/view/View;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    const/4 v9, -0x2

    iget v10, p0, Lcom/layar/adapters/BaseLayersAdapter;->mLoadingHeight:I

    invoke-virtual {p0, v9, v10}, Lcom/layar/adapters/BaseLayersAdapter;->getLayoutParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    .line 186
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 276
    .end local v8           #viewLoadingMore:Landroid/view/View;
    .end local p1
    :cond_0
    :goto_1
    return-object p2

    .line 177
    .end local v6           #rlayer:Lcom/layar/data/layer/ResultLayer;
    .end local v7           #root:Landroid/widget/LinearLayout;
    .restart local p1
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v7, v0

    .restart local v7       #root:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 192
    .restart local v6       #rlayer:Lcom/layar/data/layer/ResultLayer;
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/layar/adapters/BaseLayersAdapter;->childGetView(Landroid/view/ViewGroup;Lcom/layar/data/layer/ResultLayer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 195
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 196
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    .line 230
    .end local p1
    .local v3, holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    :goto_2
    monitor-enter p0

    .line 231
    :try_start_0
    invoke-virtual {p0, v6, p2, v3}, Lcom/layar/adapters/BaseLayersAdapter;->showItem(Lcom/layar/data/layer/ResultLayer;Landroid/view/View;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 232
    const/4 v9, 0x4

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 233
    monitor-exit p0

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 198
    .end local v3           #holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .restart local p1
    :cond_3
    iget-object v9, p0, Lcom/layar/adapters/BaseLayersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030007

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, headerView:Landroid/view/View;
    iget-object v9, p0, Lcom/layar/adapters/BaseLayersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03002d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, detailsView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {p0, v9, v10}, Lcom/layar/adapters/BaseLayersAdapter;->getLayoutParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    .line 201
    invoke-virtual {v7, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const/4 v9, -0x1

    iget v10, p0, Lcom/layar/adapters/BaseLayersAdapter;->mRowHeight:I

    invoke-virtual {p0, v9, v10}, Lcom/layar/adapters/BaseLayersAdapter;->getLayoutParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    .line 203
    invoke-virtual {v7, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;-><init>()V

    .line 207
    .restart local v3       #holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #headerView:Landroid/view/View;
    iput-object v2, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->headerText:Landroid/widget/TextView;

    .line 208
    iput-object v1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    .line 210
    const v9, 0x7f070079

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    .line 209
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 212
    const v9, 0x7f07007a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 211
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    .line 214
    const v9, 0x7f07007e

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 213
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->publisher:Landroid/widget/TextView;

    .line 216
    const v9, 0x7f07007f

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 215
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 218
    const v9, 0x102000d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 217
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 220
    const v9, 0x7f07008c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 219
    iput-object p1, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->editStub:Landroid/view/ViewStub;

    .line 222
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    iget-object v10, p0, Lcom/layar/adapters/BaseLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    iget-object v10, p0, Lcom/layar/adapters/BaseLayersAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 225
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    .line 227
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 235
    .end local v1           #detailsView:Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p0, v3, v6}, Lcom/layar/adapters/BaseLayersAdapter;->implViewStub(Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;Lcom/layar/data/layer/ResultLayer;)V

    .line 238
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    if-ne v9, v6, :cond_5

    .line 239
    monitor-exit p0

    goto/16 :goto_1

    .line 241
    :cond_5
    iget-object v5, v6, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    .line 242
    .local v5, item:Lcom/layar/data/layer/Layer20;
    iput-object v6, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    .line 243
    iget-object v9, p0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v10, v6, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v10, v10, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v9, v10, v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$6(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V

    .line 245
    iget-object v9, v5, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 246
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->headerText:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->headerText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :goto_3
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->publisher:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/layar/data/layer/Layer20;->publisher:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    iget v10, v5, Lcom/layar/data/layer/Layer20;->layerType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->detailsRoot:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    iget-object v9, v6, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    move-object v4, p1

    .line 260
    .local v4, icon:Landroid/graphics/Bitmap;
    :goto_5
    if-nez v4, :cond_6

    .line 261
    iget-object v9, v6, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v9, v9, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 262
    if-eqz v4, :cond_6

    .line 263
    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v6, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    .line 266
    :cond_6
    if-nez v4, :cond_a

    .line 267
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/layar/data/layer/ResultLayer;->initialized:Z

    .line 268
    invoke-direct {p0, p2}, Lcom/layar/adapters/BaseLayersAdapter;->getIcon(Landroid/view/View;)V

    .line 269
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getEmptyIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    :goto_6
    monitor-exit p0

    goto/16 :goto_1

    .line 249
    .end local v4           #icon:Landroid/graphics/Bitmap;
    :cond_7
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->headerText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 255
    :cond_8
    const/16 v10, 0x8

    goto :goto_4

    .line 259
    :cond_9
    const/4 v9, 0x0

    move-object v4, v9

    goto :goto_5

    .line 272
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    :cond_a
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v9, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public hasPendingItem()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    .line 286
    .local v0, count:I
    if-nez v0, :cond_0

    move v2, v3

    .line 289
    :goto_0
    return v2

    .line 288
    :cond_0
    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/layar/adapters/BaseLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v1

    .line 289
    .local v1, item:Lcom/layar/data/layer/ResultLayer;
    iget-object v2, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected implViewStub(Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;Lcom/layar/data/layer/ResultLayer;)V
    .locals 0
    .parameter "holder"
    .parameter "rlayer"

    .prologue
    .line 163
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter;->emptyIcon:Landroid/graphics/Bitmap;

    .line 77
    monitor-exit p0

    .line 80
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    .line 100
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 98
    monitor-exit p0

    .line 109
    :goto_1
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/layar/adapters/BaseLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v2

    .line 102
    .local v2, rlayer:Lcom/layar/data/layer/ResultLayer;
    iget-object v3, v2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 105
    monitor-exit p0

    goto :goto_1

    .line 98
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #rlayer:Lcom/layar/data/layer/ResultLayer;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 100
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #rlayer:Lcom/layar/data/layer/ResultLayer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removePendingItem()V
    .locals 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->hasPendingItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    .line 302
    .local v0, count:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/layar/adapters/BaseLayersAdapter;->getItem(I)Lcom/layar/data/layer/ResultLayer;

    move-result-object v1

    .line 303
    .local v1, item:Lcom/layar/data/layer/ResultLayer;
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p0}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 306
    .end local v0           #count:I
    .end local v1           #item:Lcom/layar/data/layer/ResultLayer;
    :cond_0
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/layar/adapters/BaseLayersAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 314
    return-void
.end method

.method public setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/layar/adapters/BaseLayersAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 322
    return-void
.end method

.method protected showItem(Lcom/layar/data/layer/ResultLayer;Landroid/view/View;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)Z
    .locals 1
    .parameter "rlayer"
    .parameter "convertView"
    .parameter "holder"

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method
