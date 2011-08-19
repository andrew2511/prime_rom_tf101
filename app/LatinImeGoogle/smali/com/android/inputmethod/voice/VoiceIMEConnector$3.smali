.class Lcom/android/inputmethod/voice/VoiceIMEConnector$3;
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


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$3;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$3;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$300(Lcom/android/inputmethod/voice/VoiceIMEConnector;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogCancel()V

    .line 187
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$3;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->access$500(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V

    .line 188
    return-void
.end method
