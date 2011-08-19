.class Lcom/android/inputmethod/voice/VoiceIMEConnector$6;
.super Landroid/os/AsyncTask;
.source "VoiceIMEConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;->switchToLastInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$800(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 555
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 563
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t switch back to last IME."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->reset()V

    .line 570
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$100(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 572
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 555
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
