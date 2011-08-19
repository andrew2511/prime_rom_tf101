.class Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;
.super Ljava/lang/Object;
.source "DirectionHotkey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/DirectionHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 100
    .local v2, viewID:I
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->values()[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    move-result-object v3

    aget-object v0, v3, v2

    .line 101
    .local v0, dtHotkey:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->access$000(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, keyCode:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 117
    .end local p0
    :goto_0
    return v5

    .line 104
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->invalidate(Landroid/view/View;I)V

    .line 105
    invoke-static {v5, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 106
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;->release()V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->access$300(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->invalidate(Landroid/view/View;I)V

    .line 111
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
