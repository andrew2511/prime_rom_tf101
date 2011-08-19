.class Lcom/android/inputmethod/keyboard/KeyboardView$2;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;->inflateMiniKeyboardContainer(Lcom/android/inputmethod/keyboard/Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 1109
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1400(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 1110
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 1097
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1400(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 1098
    return-void
.end method

.method public onPress(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 1119
    return-void
.end method

.method public onRelease(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 1123
    return-void
.end method

.method public onSwipeDown()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1300(Lcom/android/inputmethod/keyboard/KeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$2;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1400(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 1104
    return-void
.end method
