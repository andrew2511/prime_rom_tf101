.class Lcom/nuance/xt9/input/IME$4;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/IME;->showSymbolTable()V
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
    .line 275
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 277
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget v5, v5, Lcom/nuance/xt9/input/IME;->mSymbolKeyRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyRepeatCount:I

    .line 280
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v7, v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iput v6, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyRepeatCount:I

    .line 284
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyRepeatCount:I

    if-nez v4, :cond_3

    .line 285
    packed-switch p2, :pswitch_data_0

    .line 327
    :cond_2
    :goto_0
    return v7

    .line 290
    :pswitch_0
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v5, v5, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/SymbolTable;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/SymbolTable;->getPage(I)Lcom/nuance/xt9/input/SymKeyboard;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    .line 291
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v4, v7}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboardHasChanged(Z)V

    .line 292
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v7, v4, :cond_2

    .line 297
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 309
    :sswitch_0
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboard:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    iget-object v5, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v5, v5, Lcom/nuance/xt9/input/IME;->mSymbolTable:Lcom/nuance/xt9/input/SymbolTable;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/SymbolTable;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/SymbolTable;->getPage(I)Lcom/nuance/xt9/input/SymKeyboard;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    .line 303
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v4, v7}, Lcom/nuance/xt9/input/KeyboardViewEx;->setKeyboardHasChanged(Z)V

    .line 304
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->invalidate()V

    goto :goto_0

    .line 314
    :sswitch_2
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolKeyboardView:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    .line 315
    .local v2, keyboard:Lcom/nuance/xt9/input/KeyboardEx;
    instance-of v4, v2, Lcom/nuance/xt9/input/SymKeyboard;

    if-eqz v4, :cond_2

    .line 316
    move-object v0, v2

    check-cast v0, Lcom/nuance/xt9/input/SymKeyboard;

    move-object v3, v0

    .line 317
    .local v3, symKeyboard:Lcom/nuance/xt9/input/SymKeyboard;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/SymKeyboard;->getFocusedKey()Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v1

    .line 318
    .local v1, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v4, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v6

    const/16 v5, -0x1f

    if-eq v4, v5, :cond_4

    iget-object v4, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v6

    const/16 v5, -0x20

    if-ne v4, v5, :cond_5

    .line 319
    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTableActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v5, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v6

    iget-object v6, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    invoke-interface {v4, v5, v6}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    goto/16 :goto_0

    .line 321
    :cond_5
    iget-object v4, p0, Lcom/nuance/xt9/input/IME$4;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v4, v4, Lcom/nuance/xt9/input/IME;->mSymbolTableActionListener:Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v5, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/nuance/xt9/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method
