.class Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;
.super Ljava/lang/Object;
.source "VoiceActionEditor.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

.field final synthetic val$spec:Lcom/google/android/voicesearch/actions/SlotSpec;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Lcom/google/android/voicesearch/actions/SlotSpec;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;->val$spec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;->this$0:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->access$100(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;->val$spec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 158
    return-void
.end method
