.class Lcom/android/inputmethod/latin/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 278
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$100(Lcom/android/inputmethod/latin/Settings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$000(Lcom/android/inputmethod/latin/Settings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$200(Lcom/android/inputmethod/latin/Settings;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogCancel()V

    .line 285
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$400(Lcom/android/inputmethod/latin/Settings;)V

    .line 286
    return-void

    .line 281
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Settings;->access$302(Lcom/android/inputmethod/latin/Settings;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$1;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$200(Lcom/android/inputmethod/latin/Settings;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogOk()V

    goto :goto_0
.end method
