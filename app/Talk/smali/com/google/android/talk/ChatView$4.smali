.class Lcom/google/android/talk/ChatView$4;
.super Landroid/os/AsyncTask;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final chatSession:Lcom/google/android/gtalkservice/IChatSession;

.field final synthetic this$0:Lcom/google/android/talk/ChatView;

.field final synthetic val$unsentComposedMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/google/android/talk/ChatView$4;->this$0:Lcom/google/android/talk/ChatView;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$4;->val$unsentComposedMessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1811
    iget-object v0, p0, Lcom/google/android/talk/ChatView$4;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$4;->chatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$4;->chatSession:Lcom/google/android/gtalkservice/IChatSession;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$4;->val$unsentComposedMessage:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IChatSession;->saveUnsentComposedMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1818
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1819
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "saveUnsentComposedMessage: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
