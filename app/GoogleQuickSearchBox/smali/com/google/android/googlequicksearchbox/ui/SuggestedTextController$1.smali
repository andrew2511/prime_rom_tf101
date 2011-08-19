.class Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;-><init>(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$textView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;->val$textView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    return-void
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    return-void
.end method
