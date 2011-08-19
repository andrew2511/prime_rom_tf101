.class Lcom/asus/emailwidget/UpdateService$2;
.super Landroid/database/ContentObserver;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/emailwidget/UpdateService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/emailwidget/UpdateService;


# direct methods
.method constructor <init>(Lcom/asus/emailwidget/UpdateService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v0}, Lcom/asus/emailwidget/UpdateService;->access$000(Lcom/asus/emailwidget/UpdateService;)[I

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/asus/emailwidget/UpdateService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UpdateService"

    const-string v2, "onChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v1}, Lcom/asus/emailwidget/UpdateService;->access$500(Lcom/asus/emailwidget/UpdateService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/emailwidget/UpdateService;->access$502(Lcom/asus/emailwidget/UpdateService;Z)Z

    .line 123
    invoke-static {}, Lcom/asus/emailwidget/UpdateService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UpdateService"

    const-string v2, "onChange start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v1}, Lcom/asus/emailwidget/UpdateService;->access$700(Lcom/asus/emailwidget/UpdateService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService$2;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v2}, Lcom/asus/emailwidget/UpdateService;->access$600(Lcom/asus/emailwidget/UpdateService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :cond_2
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
