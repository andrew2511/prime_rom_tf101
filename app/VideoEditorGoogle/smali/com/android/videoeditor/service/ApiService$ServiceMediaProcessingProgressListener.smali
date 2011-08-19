.class final Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMediaProcessingProgressListener"
.end annotation


# instance fields
.field private final mProjectPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "projectPath"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->mProjectPath:Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/Object;II)V
    .locals 7
    .parameter "item"
    .parameter "action"
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v1

    .line 243
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "op"

    const/16 v3, 0xc

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v0, "project"

    iget-object v3, p0, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v0, "action"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v0, "prog_value"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    if-nez p1, :cond_0

    .line 263
    .end local p1
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->this$0:Lcom/android/videoeditor/service/ApiService;

    const/4 v6, 0x1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->access$200(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 264
    :goto_1
    return-void

    .line 249
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/media/videoeditor/MediaItem;

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "item_id"

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v0, "attributes"

    const-class v3, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 252
    .restart local p1
    :cond_1
    instance-of v0, p1, Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "item_id"

    check-cast p1, Landroid/media/videoeditor/Transition;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v0, "attributes"

    const-class v3, Landroid/media/videoeditor/Transition;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    .restart local p1
    :cond_2
    instance-of v0, p1, Landroid/media/videoeditor/AudioTrack;

    if-eqz v0, :cond_3

    .line 256
    const-string v0, "item_id"

    check-cast p1, Landroid/media/videoeditor/AudioTrack;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v0, "attributes"

    const-class v3, Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 259
    .restart local p1
    :cond_3
    const-string v0, "VEApiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported storyboard item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
