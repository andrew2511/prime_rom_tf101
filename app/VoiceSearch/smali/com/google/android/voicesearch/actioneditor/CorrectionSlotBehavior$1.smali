.class Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;
.super Ljava/lang/Object;
.source "CorrectionSlotBehavior.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->getBestCorrectionSpans(II)[Lcom/google/android/voicesearch/actions/CorrectionTextValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/voicesearch/actions/CorrectionTextValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

.field final synthetic val$buffer:Landroid/text/Editable;

.field final synthetic val$selEnd:I

.field final synthetic val$selStart:I


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;Landroid/text/Editable;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$buffer:Landroid/text/Editable;

    iput p3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$selStart:I

    iput p4, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$selEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/voicesearch/actions/CorrectionTextValue;Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->score1(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I

    move-result v0

    .line 134
    invoke-virtual {p0, p2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->score1(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I

    move-result v1

    .line 137
    if-eq v0, v1, :cond_0

    .line 138
    sub-int/2addr v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->score2(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->score2(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    check-cast p1, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    check-cast p2, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->compare(Lcom/google/android/voicesearch/actions/CorrectionTextValue;Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I

    move-result v0

    return v0
.end method

.method public score1(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I
    .locals 5
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$buffer:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$buffer:Landroid/text/Editable;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$selStart:I

    iget v4, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$selEnd:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;IIII)I

    move-result v0

    return v0
.end method

.method public score2(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)I
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$buffer:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;->val$buffer:Landroid/text/Editable;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
