.class Lcom/google/android/talk/ChatView$5;
.super Landroid/os/AsyncTask;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->restoreUnsentComposedMessage(Landroid/widget/EditText;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;

.field final synthetic val$chatInputField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/google/android/talk/ChatView$5;->this$0:Lcom/google/android/talk/ChatView;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1832
    invoke-virtual {p0, p1}, Lcom/google/android/talk/ChatView$5;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 1836
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView$5;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IChatSession;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, unsentComposedMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$5;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IChatSession;->saveUnsentComposedMessage(Ljava/lang/String;)V

    .line 1840
    iget-object v2, p0, Lcom/google/android/talk/ChatView$5;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreUnsentComposedMessage to this: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 1846
    .end local v1           #unsentComposedMessage:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1842
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1843
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "talk"

    const-string v3, "saveUnsentComposedMessage: caught "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    .line 1846
    goto :goto_0

    .line 1844
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1832
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/ChatView$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "unsent"

    .prologue
    .line 1851
    if-eqz p1, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    iget-object v0, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$5;->val$chatInputField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
