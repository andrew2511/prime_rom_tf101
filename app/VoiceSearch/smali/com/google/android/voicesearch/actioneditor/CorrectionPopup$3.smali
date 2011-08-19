.class Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;
.super Ljava/lang/Object;
.source "CorrectionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;->onDeleteClick(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->dismiss()V

    .line 121
    :cond_0
    return-void
.end method
