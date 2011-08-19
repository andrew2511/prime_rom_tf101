.class Lcom/google/android/voicesearch/EditorDialog$5;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/EditorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/EditorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$5;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)V
    .locals 2
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog$5;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$5;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/EditorDialog;->stopRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    .line 344
    return-void
.end method
