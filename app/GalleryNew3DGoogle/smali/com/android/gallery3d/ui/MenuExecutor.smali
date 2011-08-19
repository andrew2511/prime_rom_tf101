.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 92
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 93
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onShareItemClicked(Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 11
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 353
    const/4 v5, 0x1

    .line 354
    .local v5, result:Z
    sparse-switch p3, :sswitch_data_0

    .line 404
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 356
    :sswitch_0
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 406
    .end local p0
    :cond_0
    :goto_0
    return v5

    .line 359
    .restart local p0
    :sswitch_1
    const/16 v7, 0x5a

    invoke-virtual {p1, p4, v7}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 362
    :sswitch_2
    const/16 v7, -0x5a

    invoke-virtual {p1, p4, v7}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 365
    :sswitch_3
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 366
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 367
    .local v1, cacheFlag:I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 368
    const/4 v1, 0x1

    .line 372
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 370
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 376
    .end local v1           #cacheFlag:I
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 377
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v7, 0x2

    new-array v3, v7, [D

    .line 378
    .local v3, latlng:[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 379
    const/4 v7, 0x0

    aget-wide v7, v3, v7

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    iget-object p0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p0
    check-cast p0, Landroid/content/Context;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    invoke-static {p0, v7, v8, v9, v10}, Lcom/android/gallery3d/util/Utils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 385
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #latlng:[D
    .restart local p0
    :sswitch_5
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 386
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v5

    .line 387
    goto :goto_0

    .line 390
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 391
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 393
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 396
    .local v6, t:Ljava/lang/Throwable;
    const-string v7, "MenuExecutor"

    const-string v8, "failed to start edit activity: "

    invoke-static {v7, v8, v6}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const v7, 0x7f080026

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 354
    :sswitch_data_0
    .sparse-switch
        0x7f070000 -> :sswitch_3
        0x7f070023 -> :sswitch_0
        0x7f070025 -> :sswitch_5
        0x7f070026 -> :sswitch_4
        0x7f070027 -> :sswitch_2
        0x7f070028 -> :sswitch_1
        0x7f07002b -> :sswitch_6
    .end sparse-switch
.end method

.method private static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 342
    packed-switch p0, :pswitch_data_0

    .line 347
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 344
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 346
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getShareType(Lcom/android/gallery3d/ui/SelectionManager;)I
    .locals 6
    .parameter "selectionManager"

    .prologue
    .line 147
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 148
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v4, 0x0

    .line 149
    .local v4, type:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 150
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    .line 151
    .local v2, id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 153
    .end local v2           #id:Lcom/android/gallery3d/data/Path;
    :cond_0
    return v4
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/Path;

    return-object p0

    .restart local p0
    :cond_0
    move v1, v3

    .line 265
    goto :goto_0
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method private onShareItemClicked(Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "selectionManager"
    .parameter "mimeType"
    .parameter "component"

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 159
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f080006

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 163
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 193
    return-void

    .line 158
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 235
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 236
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    :cond_0
    return-void
.end method

.method private static showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 77
    if-le p2, v2, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 81
    return-object v0
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 13
    .parameter "menu"
    .parameter "supported"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 240
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_0

    move v2, v12

    .line 241
    .local v2, supportDelete:Z
    :goto_0
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_1

    move v6, v12

    .line 242
    .local v6, supportRotate:Z
    :goto_1
    and-int/lit8 v10, p1, 0x8

    if-eqz v10, :cond_2

    move v1, v12

    .line 243
    .local v1, supportCrop:Z
    :goto_2
    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_3

    move v8, v12

    .line 244
    .local v8, supportShare:Z
    :goto_3
    and-int/lit8 v10, p1, 0x20

    if-eqz v10, :cond_4

    move v7, v12

    .line 245
    .local v7, supportSetAs:Z
    :goto_4
    and-int/lit8 v10, p1, 0x10

    if-eqz v10, :cond_5

    move v9, v12

    .line 246
    .local v9, supportShowOnMap:Z
    :goto_5
    and-int/lit16 v10, p1, 0x100

    if-eqz v10, :cond_6

    move v0, v12

    .line 247
    .local v0, supportCache:Z
    :goto_6
    and-int/lit16 v10, p1, 0x200

    if-eqz v10, :cond_7

    move v3, v12

    .line 248
    .local v3, supportEdit:Z
    :goto_7
    and-int/lit16 v10, p1, 0x400

    if-eqz v10, :cond_8

    move v5, v12

    .line 249
    .local v5, supportInfo:Z
    :goto_8
    and-int/lit16 v10, p1, 0x800

    if-eqz v10, :cond_9

    move v4, v12

    .line 251
    .local v4, supportImport:Z
    :goto_9
    const v10, 0x7f070022

    invoke-static {p0, v10, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 252
    const v10, 0x7f070027

    invoke-static {p0, v10, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 253
    const v10, 0x7f070028

    invoke-static {p0, v10, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 254
    const v10, 0x7f07002a

    invoke-static {p0, v10, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 255
    const v10, 0x7f070021

    invoke-static {p0, v10, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 256
    const v10, 0x7f070029

    invoke-static {p0, v10, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 257
    const v10, 0x7f070026

    invoke-static {p0, v10, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 258
    const v10, 0x7f07002b

    invoke-static {p0, v10, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 259
    const v10, 0x7f07001b

    invoke-static {p0, v10, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 260
    const v10, 0x7f070025

    invoke-static {p0, v10, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 261
    return-void

    .end local v0           #supportCache:Z
    .end local v1           #supportCrop:Z
    .end local v2           #supportDelete:Z
    .end local v3           #supportEdit:Z
    .end local v4           #supportImport:Z
    .end local v5           #supportInfo:Z
    .end local v6           #supportRotate:Z
    .end local v7           #supportSetAs:Z
    .end local v8           #supportShare:Z
    .end local v9           #supportShowOnMap:Z
    :cond_0
    move v2, v11

    .line 240
    goto :goto_0

    .restart local v2       #supportDelete:Z
    :cond_1
    move v6, v11

    .line 241
    goto :goto_1

    .restart local v6       #supportRotate:Z
    :cond_2
    move v1, v11

    .line 242
    goto :goto_2

    .restart local v1       #supportCrop:Z
    :cond_3
    move v8, v11

    .line 243
    goto :goto_3

    .restart local v8       #supportShare:Z
    :cond_4
    move v7, v11

    .line 244
    goto :goto_4

    .restart local v7       #supportSetAs:Z
    :cond_5
    move v9, v11

    .line 245
    goto :goto_5

    .restart local v9       #supportShowOnMap:Z
    :cond_6
    move v0, v11

    .line 246
    goto :goto_6

    .restart local v0       #supportCache:Z
    :cond_7
    move v3, v11

    .line 247
    goto :goto_7

    .restart local v3       #supportEdit:Z
    :cond_8
    move v5, v11

    .line 248
    goto :goto_8

    .restart local v5       #supportInfo:Z
    :cond_9
    move v4, v11

    .line 249
    goto :goto_9
.end method


# virtual methods
.method public createShareMenu(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 13
    .parameter "item"
    .parameter "selectionManager"

    .prologue
    .line 197
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->getShareType(Lcom/android/gallery3d/ui/SelectionManager;)I

    move-result v9

    .line 198
    .local v9, shareType:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    .line 199
    .local v10, submenu:Landroid/view/SubMenu;
    invoke-interface {v10}, Landroid/view/SubMenu;->clear()V

    .line 200
    iget-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 202
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, mimeType:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {p2, v11}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 205
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 206
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 217
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 218
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, label:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, component:Landroid/content/ComponentName;
    invoke-interface {v10, v6}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/android/gallery3d/ui/MenuExecutor$3;

    invoke-direct {v12, p0, p2, v7, v0}, Lcom/android/gallery3d/ui/MenuExecutor$3;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 209
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #label:Ljava/lang/String;
    :cond_0
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .restart local v4       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 231
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)Z
    .locals 11
    .parameter "menuItem"
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    .line 271
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 272
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 273
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 325
    :pswitch_0
    const/4 v8, 0x0

    .line 328
    .end local p0
    :goto_0
    return v8

    .line 275
    .restart local p0
    :pswitch_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {p0, p1, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->createShareMenu(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/SelectionManager;)V

    move v8, v10

    .line 276
    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 280
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    :goto_1
    move v8, v10

    .line 284
    goto :goto_0

    .line 282
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_1

    .line 286
    :pswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 287
    .local v5, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v8

    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, mimeType:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.CROP"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 290
    .local v2, intent:Landroid/content/Intent;
    iget-object p0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v8, v10

    .line 291
    goto :goto_0

    .line 294
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    .restart local p0
    :pswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 295
    .restart local v5       #path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v7

    .line 296
    .local v7, type:I
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    .restart local v4       #mimeType:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v8, "mimeType"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 302
    .local v1, activity:Landroid/app/Activity;
    const v8, 0x7f08002a

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v8, v10

    .line 304
    goto :goto_0

    .line 307
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #type:I
    :pswitch_5
    const v6, 0x7f080018

    .line 327
    .local v6, title:I
    :goto_2
    invoke-virtual {p0, v0, v6, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v8, v10

    .line 328
    goto :goto_0

    .line 310
    .end local v6           #title:I
    :pswitch_6
    const v6, 0x7f080023

    .line 311
    .restart local v6       #title:I
    goto :goto_2

    .line 313
    .end local v6           #title:I
    :pswitch_7
    const v6, 0x7f080022

    .line 314
    .restart local v6       #title:I
    goto :goto_2

    .line 316
    .end local v6           #title:I
    :pswitch_8
    const v6, 0x7f080021

    .line 317
    .restart local v6       #title:I
    goto :goto_2

    .line 319
    .end local v6           #title:I
    :pswitch_9
    const v6, 0x7f080025

    .line 320
    .restart local v6       #title:I
    goto :goto_2

    .line 322
    .end local v6           #title:I
    :pswitch_a
    const v6, 0x7f08005f

    .line 323
    .restart local v6       #title:I
    goto :goto_2

    .line 273
    :pswitch_data_0
    .packed-switch 0x7f070021
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 132
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 133
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 135
    :cond_0
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 336
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 337
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 338
    .local v2, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 339
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    :cond_0
    move v3, v4

    .line 333
    goto :goto_0
.end method
