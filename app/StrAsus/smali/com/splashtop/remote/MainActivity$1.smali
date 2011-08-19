.class Lcom/splashtop/remote/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$1;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$1;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v2}, Lcom/splashtop/remote/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/splashtop/remote/net/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    new-instance v0, Lcom/splashtop/remote/service/CheckUpdate;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$1;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v2}, Lcom/splashtop/remote/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/splashtop/remote/service/CheckUpdate;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, cu:Lcom/splashtop/remote/service/CheckUpdate;
    invoke-virtual {v0}, Lcom/splashtop/remote/service/CheckUpdate;->getProject()Lcom/splashtop/remote/bean/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/splashtop/remote/service/CheckUpdate;->start(Lcom/splashtop/remote/bean/Project;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$1;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/service/CheckUpdate;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/splashtop/remote/service/CheckUpdate;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/splashtop/remote/service/CheckUpdate;->getRversion()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/splashtop/remote/MainActivity$ShowUpdateThread;-><init>(Lcom/splashtop/remote/MainActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    .local v1, showUpdate:Lcom/splashtop/remote/MainActivity$ShowUpdateThread;
    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$1;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$100(Lcom/splashtop/remote/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .end local v0           #cu:Lcom/splashtop/remote/service/CheckUpdate;
    .end local v1           #showUpdate:Lcom/splashtop/remote/MainActivity$ShowUpdateThread;
    :cond_0
    return-void
.end method
