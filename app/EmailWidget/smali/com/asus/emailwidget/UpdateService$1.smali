.class Lcom/asus/emailwidget/UpdateService$1;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/emailwidget/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/emailwidget/UpdateService;


# direct methods
.method constructor <init>(Lcom/asus/emailwidget/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 43
    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v1}, Lcom/asus/emailwidget/UpdateService;->access$000(Lcom/asus/emailwidget/UpdateService;)[I

    move-result-object v1

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    iget-object v3, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v3}, Lcom/asus/emailwidget/UpdateService;->access$100(Lcom/asus/emailwidget/UpdateService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/asus/emailwidget/UpdateService;->access$200(Lcom/asus/emailwidget/UpdateService;Landroid/content/Context;I)I

    move-result v0

    .line 45
    .local v0, unreadCount:I
    invoke-static {}, Lcom/asus/emailwidget/UpdateService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange end: GET_COUNT_MSG - unreadCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    iget-object v3, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    invoke-static {v3}, Lcom/asus/emailwidget/UpdateService;->access$100(Lcom/asus/emailwidget/UpdateService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/asus/emailwidget/UpdateService;->access$400(Lcom/asus/emailwidget/UpdateService;Landroid/content/Context;I)V

    .line 47
    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService$1;->this$0:Lcom/asus/emailwidget/UpdateService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/asus/emailwidget/UpdateService;->access$502(Lcom/asus/emailwidget/UpdateService;Z)Z

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    .end local v0           #unreadCount:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
