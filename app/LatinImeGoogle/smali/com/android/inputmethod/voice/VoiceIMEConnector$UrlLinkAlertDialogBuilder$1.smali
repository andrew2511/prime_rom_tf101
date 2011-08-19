.class Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialogInterface"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder$1;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;

    invoke-static {v1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;->access$600(Lcom/android/inputmethod/voice/VoiceIMEConnector$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 260
    :cond_0
    return-void
.end method
