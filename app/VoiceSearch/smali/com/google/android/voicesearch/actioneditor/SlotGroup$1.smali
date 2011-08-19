.class Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;
.super Ljava/lang/Object;
.source "SlotGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/SlotGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->findInputSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 104
    :cond_0
    return-void
.end method
