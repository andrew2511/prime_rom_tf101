.class Lcom/nuance/xt9/input/IME$1;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 8
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v7, 0x1

    .line 182
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/SymbolTable;->getCurrentPage()I

    move-result v0

    .line 184
    .local v0, currentPage:I
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mKeyboardContainer:Landroid/view/View;

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 199
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 200
    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v6, v6, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/SymbolTable;->getCurrentPage()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v5, v5, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/SymbolTable;->getTotalPage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void

    .line 186
    .end local v2           #tv:Landroid/widget/TextView;
    :pswitch_0
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v4, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    sub-int v5, v0, v7

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/SymbolTable;->getPage(I)Lcom/nuance/xt9/input/SymKeyboard;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 187
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/SymKeyboard;

    .line 188
    .local v1, symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/SymKeyboard;->resetFocus()V

    goto :goto_0

    .line 191
    .end local v1           #symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    iget-object v4, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/SymbolTable;->getPage(I)Lcom/nuance/xt9/input/SymKeyboard;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 192
    iget-object v3, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v3, v3, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/SymKeyboard;

    .line 193
    .restart local v1       #symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/SymKeyboard;->resetFocus()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch -0x20
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 206
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 208
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.com.xt9.input.symbol_table_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "symbol_table_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    iget-object v1, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v1, v1, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/nuance/xt9/input/IME$1;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v1, v1, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method
