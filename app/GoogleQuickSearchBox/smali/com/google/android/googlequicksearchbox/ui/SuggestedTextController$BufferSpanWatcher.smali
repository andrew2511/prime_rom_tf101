.class Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferSpanWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 416
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 4
    .parameter "text"
    .parameter "what"
    .parameter "ostart"
    .parameter "oend"
    .parameter "nstart"
    .parameter "nend"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$400(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$500(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$600(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le p6, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$600(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$600(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$700(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 433
    return-void
.end method
