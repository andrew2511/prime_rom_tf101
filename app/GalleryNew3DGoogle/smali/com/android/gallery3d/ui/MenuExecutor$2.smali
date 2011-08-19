.class Lcom/android/gallery3d/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->onShareItemClicked(Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$component:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 166
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v6}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 167
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v5, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, index:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 170
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    .line 172
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v1, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 176
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v9

    .line 190
    :goto_1
    return-object v6

    .line 177
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 179
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v9

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 182
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v7, "android.intent.extra.STREAM"

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v6, v8, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 189
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v6}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v6, v9

    .line 190
    goto :goto_1

    .line 185
    :cond_4
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method
