.class Lcom/google/android/gsf/login/NetworkMonitor$3;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "cn"
    .parameter "service"

    .prologue
    .line 152
    invoke-static {}, Lcom/google/android/gsf/login/NetworkMonitor;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkMonitor"

    const-string v1, "GLS onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {p2}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gsf/IGoogleLoginService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/NetworkMonitor;->access$402(Lcom/google/android/gsf/login/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;

    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->access$500(Lcom/google/android/gsf/login/NetworkMonitor;)Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->access$500(Lcom/google/android/gsf/login/NetworkMonitor;)Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v1}, Lcom/google/android/gsf/login/NetworkMonitor;->access$400(Lcom/google/android/gsf/login/NetworkMonitor;)Lcom/google/android/gsf/IGoogleLoginService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gsf/login/NetworkMonitor$Callback;->onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->access$000(Lcom/google/android/gsf/login/NetworkMonitor;)V

    .line 156
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 159
    invoke-static {}, Lcom/google/android/gsf/login/NetworkMonitor;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkMonitor"

    const-string v1, "GLS onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/NetworkMonitor;->access$402(Lcom/google/android/gsf/login/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;

    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$3;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->access$000(Lcom/google/android/gsf/login/NetworkMonitor;)V

    .line 162
    return-void
.end method
