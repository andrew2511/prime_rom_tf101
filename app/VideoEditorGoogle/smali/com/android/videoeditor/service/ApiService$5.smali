.class Lcom/android/videoeditor/service/ApiService$5;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3546
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$5;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$5;->this$0:Lcom/android/videoeditor/service/ApiService;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$5;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->access$700(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V

    .line 3552
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$100()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3553
    return-void
.end method
