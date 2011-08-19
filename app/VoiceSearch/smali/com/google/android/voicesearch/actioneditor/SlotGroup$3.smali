.class Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;
.super Ljava/lang/Object;
.source "SlotGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/SlotGroup;->createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

.field final synthetic val$ret:Landroid/widget/Button;

.field final synthetic val$slot:Lcom/google/android/voicesearch/actioneditor/SlotView;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->val$slot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    iput-object p3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->val$ret:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->val$slot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$3;->val$ret:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V

    .line 233
    return-void
.end method
