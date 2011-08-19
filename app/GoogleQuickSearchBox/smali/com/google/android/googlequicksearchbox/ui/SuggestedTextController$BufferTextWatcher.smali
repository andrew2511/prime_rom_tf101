.class Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "newText"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$200(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$300(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Landroid/text/Editable;)V

    .line 401
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$200(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$400(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    invoke-direct {v1, p2, p4, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;-><init>(III)V

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->access$402(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    .line 408
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 411
    return-void
.end method
