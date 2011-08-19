.class public Lcom/android/inputmethod/latin/LatinIME$UIHandler;
.super Landroid/os/Handler;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 370
    return-void
.end method

.method public cancelUpdateOldSuggestions()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 329
    return-void
.end method

.method public cancelUpdateShiftState()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 338
    return-void
.end method

.method public cancelUpdateSuggestions()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 315
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    .line 277
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 278
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 306
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0

    .line 289
    :pswitch_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceIMEConnector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/inputmethod/voice/VoiceIMEConnector;->handleVoiceResults(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 293
    :pswitch_4
    if-eqz v0, :cond_3

    .line 294
    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {v0, v3, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 297
    :cond_3
    const/4 v2, 0x5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME;->access$500(Lcom/android/inputmethod/latin/LatinIME;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 301
    :pswitch_5
    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;)F

    move-result v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    invoke-virtual {v0, v2, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public postUpdateOldSuggestions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    return-void
.end method

.method public postUpdateShiftKeyState()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    return-void
.end method

.method public postUpdateSuggestions()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    return-void
.end method

.method public startDisplayLanguageOnSpacebar(Z)V
    .locals 5
    .parameter "localeChanged"

    .prologue
    const/4 v3, 0x4

    .line 345
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 346
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 347
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 348
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_1

    .line 349
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 351
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$600(Lcom/android/inputmethod/latin/LatinIME;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f80

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V

    .line 355
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$600(Lcom/android/inputmethod/latin/LatinIME;)I

    move-result v2

    if-lez v2, :cond_1

    .line 356
    invoke-virtual {p0, v3, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME;->access$600(Lcom/android/inputmethod/latin/LatinIME;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_1
    return-void

    .line 352
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;)F

    move-result v2

    goto :goto_0
.end method

.method public startDoubleSpacesTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->removeMessages(I)V

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$700(Lcom/android/inputmethod/latin/LatinIME;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    return-void
.end method

.method public updateVoiceResults()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method
