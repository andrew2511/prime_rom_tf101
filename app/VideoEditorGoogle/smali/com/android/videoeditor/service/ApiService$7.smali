.class Lcom/android/videoeditor/service/ApiService$7;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->extractMediaItemAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/MediaVideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$mediaItem:Landroid/media/videoeditor/MediaVideoItem;

.field final synthetic val$videoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/MediaVideoItem;Landroid/media/videoeditor/VideoEditor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4905
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$7;->val$mediaItem:Landroid/media/videoeditor/MediaVideoItem;

    iput-object p4, p0, Lcom/android/videoeditor/service/ApiService$7;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 4910
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v1

    .line 4911
    .local v1, progressIntent:Landroid/content/Intent;
    const-string v0, "op"

    const/16 v2, 0x6e

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4912
    const-string v0, "project"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v4, "project"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4914
    const-string v0, "req_intent"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4915
    const-string v0, "item_id"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$mediaItem:Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4916
    const-string v0, "prog_value"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4918
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    const/4 v6, 0x1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->access$200(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 4919
    return-void
.end method
