.class Lcom/android/videoeditor/service/ApiService$6$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$ExportProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/service/ApiService$6;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService$6;)V
    .locals 0
    .parameter

    .prologue
    .line 4851
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$6$1;->this$1:Lcom/android/videoeditor/service/ApiService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V
    .locals 4
    .parameter "videoEditor"
    .parameter "filename"
    .parameter "progress"

    .prologue
    .line 4857
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v0

    .line 4858
    .local v0, progressIntent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4859
    const-string v1, "project"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$6$1;->this$1:Lcom/android/videoeditor/service/ApiService$6;

    iget-object v2, v2, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    const-string v3, "project"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4861
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4862
    const-string v1, "req_intent"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$6$1;->this$1:Lcom/android/videoeditor/service/ApiService$6;

    iget-object v2, v2, Lcom/android/videoeditor/service/ApiService$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4863
    const-string v1, "prog_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4864
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$6$1;->this$1:Lcom/android/videoeditor/service/ApiService$6;

    iget-object v1, v1, Lcom/android/videoeditor/service/ApiService$6;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->access$600(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$ServiceThread;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    .line 4865
    const-string v1, "VEApiService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4866
    const-string v1, "VEApiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Export progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    :cond_0
    return-void
.end method
