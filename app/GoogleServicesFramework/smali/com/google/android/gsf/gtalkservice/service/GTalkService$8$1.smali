.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;

.field final synthetic val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1959
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;

    iget-object v1, v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1961
    .local v0, conn:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_0

    .line 1962
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IGTalkConnectionListener;->onConnectionCreated(Lcom/google/android/gtalkservice/IGTalkConnection;)V

    .line 1968
    :goto_0
    return-void

    .line 1964
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8$1;->val$username:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IGTalkConnectionListener;->onConnectionCreationFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1966
    :catch_0
    move-exception v1

    goto :goto_0
.end method
