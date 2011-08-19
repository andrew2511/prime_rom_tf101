.class Lcom/android/videoeditor/service/ApiService$6;
.super Ljava/lang/Thread;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$videoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4831
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$6;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$6;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 4837
    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    const-string v6, "filename"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4838
    .local v2, filename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    const-string v6, "height"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4839
    .local v3, height:I
    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    const-string v6, "bitrate"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4842
    .local v0, bitrate:I
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v4

    .line 4843
    .local v4, statusIntent:Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4844
    const-string v5, "project"

    iget-object v6, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    const-string v7, "project"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4846
    const-string v5, "filename"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4847
    const-string v5, "req_intent"

    iget-object v6, p0, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4851
    :try_start_0
    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$6;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    new-instance v6, Lcom/android/videoeditor/service/ApiService$6$1;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/service/ApiService$6$1;-><init>(Lcom/android/videoeditor/service/ApiService$6;)V

    invoke-interface {v5, v2, v3, v0, v6}, Landroid/media/videoeditor/VideoEditor;->export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 4872
    const-string v6, "ex"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Exception;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4873
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4874
    const-string v5, "uri"

    iget-object v6, p0, Lcom/android/videoeditor/service/ApiService$6;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v6, v2}, Lcom/android/videoeditor/service/ApiService;->access$800(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4879
    const-string v5, "VEApiService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4880
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Export complete for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4890
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$6;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v5}, Lcom/android/videoeditor/service/ApiService;->access$600(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$ServiceThread;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    .line 4891
    return-void

    .line 4876
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Export file does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4882
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 4883
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "ex"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4885
    const-string v5, "VEApiService"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4886
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Export error for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
