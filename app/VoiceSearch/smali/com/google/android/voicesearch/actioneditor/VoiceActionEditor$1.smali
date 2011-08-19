.class Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;
.super Ljava/lang/Object;
.source "VoiceActionEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initAccountSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->createAlternatesPopup(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1$1;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;)V

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_0
.end method
