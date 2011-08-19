.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;
.super Landroid/os/Handler;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryHandler"
.end annotation


# instance fields
.field private mQueued:Z

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1428
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1432
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1433
    .local v0, msgType:I
    if-nez v0, :cond_1

    .line 1434
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    if-nez v1, :cond_0

    .line 1435
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1436
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1439
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/high16 v2, 0x7f0e

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 1440
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    goto :goto_0

    .line 1442
    :cond_2
    const-string v1, "VolumeCarouselFragment"

    const-string v2, "Unexpected message type delivered to RequeryHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
