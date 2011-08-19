.class Lcom/android/videoeditor/service/ApiService$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$1;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    const-string v0, "VEApiService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "VEApiService"

    const-string v1, "Stop runnable: Stopping service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$1;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService;->stopSelf()V

    .line 218
    :cond_1
    return-void
.end method
