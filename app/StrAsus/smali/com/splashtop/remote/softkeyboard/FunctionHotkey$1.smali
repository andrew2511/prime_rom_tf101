.class Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;
.super Ljava/lang/Object;
.source "FunctionHotkey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/FunctionHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

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

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 141
    .local v2, viewID:I
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->values()[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    move-result-object v3

    aget-object v0, v3, v2

    .line 142
    .local v0, funcHotkey:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$000(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, keyCode:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 158
    .end local p0
    :goto_0
    return v5

    .line 145
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->invalidate(Landroid/view/View;I)V

    .line 146
    invoke-static {v5, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 147
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;->release()V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$300(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->invalidate(Landroid/view/View;I)V

    .line 152
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
