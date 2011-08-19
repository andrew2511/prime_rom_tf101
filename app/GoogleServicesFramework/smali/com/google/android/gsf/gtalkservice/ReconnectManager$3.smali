.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)V
    .locals 7
    .parameter "connection"
    .parameter "flags"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    if-eqz p2, :cond_3

    move v0, v5

    .line 204
    .local v0, retryNow:Z
    :goto_0
    const-string v1, "GTalkService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryConnection: retryNow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {p1, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const-string v1, "GTalkService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryConnection: first close existing connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V

    .line 220
    :cond_1
    invoke-virtual {p1, v4, v4, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeConnection(ZZZ)V

    .line 224
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V

    .line 225
    return-void

    .end local v0           #retryNow:Z
    :cond_3
    move v0, v4

    .line 202
    goto :goto_0
.end method
