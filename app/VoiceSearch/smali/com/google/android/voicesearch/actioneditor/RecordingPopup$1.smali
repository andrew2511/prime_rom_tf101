.class Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;
.super Ljava/lang/Object;
.source "RecordingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/RecordingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;->onCancel(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->dismiss()V

    .line 74
    :cond_0
    return-void
.end method
