.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 326
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V

    .line 327
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 328
    return-void
.end method
