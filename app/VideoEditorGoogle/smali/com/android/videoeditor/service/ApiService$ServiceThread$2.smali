.class Lcom/android/videoeditor/service/ApiService$ServiceThread$2;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService$ServiceThread;->run()V
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
    .line 5453
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$2;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$2;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$1000(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$ServiceThread$2;->this$1:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$900(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5459
    return-void
.end method
