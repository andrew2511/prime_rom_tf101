.class Lcom/google/android/gsf/gtalkservice/ChatSession$7;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
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
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

.field final synthetic val$jid:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$jid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$message:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IChatListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 2117
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$jid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$message:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->val$notify:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gtalkservice/IChatListener;->newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2118
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->useLightweightNotify()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2126
    :goto_0
    return v1

    .line 2119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2120
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyChat caught "

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

    .line 2123
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->this$0:Lcom/google/android/gsf/gtalkservice/ChatSession;

    invoke-static {v1, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->access$1200(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gtalkservice/IChatListener;)V

    .line 2126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    check-cast p1, Lcom/google/android/gtalkservice/IChatListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession$7;->call(Lcom/google/android/gtalkservice/IChatListener;)Z

    move-result v0

    return v0
.end method
