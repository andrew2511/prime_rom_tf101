.class Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$000(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$000(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 725
    return-void
.end method
