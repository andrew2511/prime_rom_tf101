.class Lcom/android/videoeditor/service/ApiService$ServiceThread$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService$ServiceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService$ServiceThread;)V
    .locals 0
    .parameter

    .prologue
    .line 5393
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$1;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5400
    :goto_0
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$1;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$400(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 5402
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$1;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    iget-object v1, v1, Lcom/android/videoeditor/service/ApiService$ServiceThread;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/service/ApiService;->processIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 5404
    :cond_0
    return-void
.end method
