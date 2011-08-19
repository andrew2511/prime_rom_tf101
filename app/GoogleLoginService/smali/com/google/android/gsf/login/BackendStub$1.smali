.class Lcom/google/android/gsf/login/BackendStub$1;
.super Ljava/lang/Object;
.source "BackendStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/BackendStub;->ratePassword(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackendStub;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultMessage:Landroid/os/Message;

.field final synthetic val$userData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackendStub;Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/gsf/login/BackendStub$1;->this$0:Lcom/google/android/gsf/login/BackendStub;

    iput-object p2, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$userData:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/android/gsf/login/BackendStub$1;->this$0:Lcom/google/android/gsf/login/BackendStub;

    iget-object v2, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$userData:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/login/BackendStub;->ratePasswordSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v0

    .line 367
    .local v0, status:Lcom/google/android/gsf/login/BackendStub$Status;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/google/android/gsf/login/BackendStub$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Status;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method
