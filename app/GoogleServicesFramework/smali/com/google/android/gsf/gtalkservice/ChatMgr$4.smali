.class Lcom/google/android/gsf/gtalkservice/ChatMgr$4;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyChatClosed(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IChatListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ChatMgr;

.field final synthetic val$from:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;->this$0:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IChatListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;->val$from:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gtalkservice/IChatListener;->chatClosed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    const/4 v1, 0x1

    .line 931
    :goto_0
    return v1

    .line 924
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 925
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatMgr] notifyChatClosed caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;->this$0:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-static {v1, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->access$000(Lcom/google/android/gsf/gtalkservice/ChatMgr;Lcom/google/android/gtalkservice/IChatListener;)V

    .line 931
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 919
    check-cast p1, Lcom/google/android/gtalkservice/IChatListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;->call(Lcom/google/android/gtalkservice/IChatListener;)Z

    move-result v0

    return v0
.end method
