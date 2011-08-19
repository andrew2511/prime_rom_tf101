.class Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 416
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 417
    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 418
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 10
    .parameter "jc"

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, index:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 423
    .local v4, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v5, 0x1

    .line 424
    .local v5, result:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 425
    .local v1, id:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    const/4 v5, 0x3

    .line 437
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-static {v7, v5, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 438
    const/4 v7, 0x0

    return-object v7

    .line 430
    .restart local v1       #id:Lcom/android/gallery3d/data/Path;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-static {v7, v4, p1, v8, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$800(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    const/4 v5, 0x2

    .line 435
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-static {v7, v2, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 431
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 432
    .local v6, th:Ljava/lang/Throwable;
    const-string v7, "MenuExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to execute operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
