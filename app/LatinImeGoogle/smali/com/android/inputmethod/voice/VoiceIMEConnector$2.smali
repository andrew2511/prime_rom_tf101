.class Lcom/android/inputmethod/voice/VoiceIMEConnector$2;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;->showVoiceWarningDialog(ZLandroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

.field final synthetic val$swipe:Z


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iput-boolean p2, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;->val$swipe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogOk()V

    .line 180
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$2;->val$swipe:Z

    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$400(Lcom/android/inputmethod/voice/VoiceIMEConnector;Z)V

    .line 181
    return-void
.end method
