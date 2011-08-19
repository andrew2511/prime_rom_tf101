.class Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyTimers()V

    .line 303
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelPopupPreview()V

    .line 304
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelDismissPreview()V

    .line 305
    return-void
.end method

.method public cancelDismissPreview()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 252
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->mInKeyRepeat:Z

    .line 261
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    .line 288
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelLongPressTimers()V

    .line 289
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 290
    return-void
.end method

.method public cancelLongPressTimers()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 283
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 284
    return-void
.end method

.method public cancelPopupPreview()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 242
    return-void
.end method

.method public dismissPreview(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 203
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 227
    .end local p0
    :goto_0
    return-void

    .line 205
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-static {v1, v2, p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 208
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 212
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->repeatKey(I)V

    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$200(Lcom/android/inputmethod/keyboard/KeyboardView;)I

    move-result v1

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 217
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 218
    .restart local v0       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$300(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    goto :goto_0

    .line 222
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 223
    .restart local v0       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$400(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isIgnoringDoubleTap()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public popupPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$100(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$500(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->this$0:Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-static {v0, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startIgnoringDoubleTap()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->mInKeyRepeat:Z

    .line 256
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    return-void
.end method

.method public startLongPressShiftTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelLongPressTimers()V

    .line 276
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->cancelLongPressTimers()V

    .line 270
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    return-void
.end method
