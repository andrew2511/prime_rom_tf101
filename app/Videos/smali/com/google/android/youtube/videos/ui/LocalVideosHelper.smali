.class public Lcom/google/android/youtube/videos/ui/LocalVideosHelper;
.super Ljava/lang/Object;
.source "LocalVideosHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_VIDEOS:I = 0x64

.field private static final bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

.field private final emptyView:Landroid/view/View;

.field private final itemsView:Landroid/view/View;

.field private final loadingView:Landroid/view/View;

.field private queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

.field private final thumbnailExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 55
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 56
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 57
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;)V
    .locals 1
    .parameter "activity"
    .parameter "parentView"
    .parameter "adapter"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    .line 62
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    .line 63
    const v0, 0x7f080012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;

    .line 64
    const v0, 0x7f080013

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->loadingView:Landroid/view/View;

    .line 65
    const v0, 0x7f080014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->emptyView:Landroid/view/View;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/LocalVideo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->loadThumbnail(Lcom/google/android/youtube/videos/LocalVideo;)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;)Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    return-object p1
.end method

.method static synthetic access$800()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private loadThumbnail(Lcom/google/android/youtube/videos/LocalVideo;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/LocalVideo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 177
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v9, 0x1

    .line 78
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/LocalVideo;

    .line 80
    .local v2, video:Lcom/google/android/youtube/videos/LocalVideo;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 85
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    const v5, 0x7f0c0011

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/google/android/youtube/videos/LocalVideo;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t play local video ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->cancel(Z)Z

    .line 73
    :cond_0
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method
