.class Lcom/android/videoeditor/service/ApiService$4;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$extraResult:Ljava/lang/Object;

.field final synthetic val$finalize:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$videoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3530
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$4;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$4;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    iput-object p4, p0, Lcom/android/videoeditor/service/ApiService$4;->val$result:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/videoeditor/service/ApiService$4;->val$extraResult:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/videoeditor/service/ApiService$4;->val$exception:Ljava/lang/Exception;

    iput-boolean p7, p0, Lcom/android/videoeditor/service/ApiService$4;->val$finalize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$4;->this$0:Lcom/android/videoeditor/service/ApiService;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$4;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$4;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v3, p0, Lcom/android/videoeditor/service/ApiService$4;->val$result:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/videoeditor/service/ApiService$4;->val$extraResult:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService$4;->val$exception:Ljava/lang/Exception;

    iget-boolean v6, p0, Lcom/android/videoeditor/service/ApiService$4;->val$finalize:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->onIntentProcessed(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    .line 3536
    return-void
.end method
