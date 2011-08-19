.class Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;
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
    .line 163
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 168
    .local v1, viewID:I
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->values()[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    move-result-object v2

    aget-object v0, v2, v1

    .line 169
    .local v0, funcHotkey:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    .end local p0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 171
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->invalidate(Landroid/view/View;I)V

    goto :goto_0

    .line 175
    .restart local p0
    :pswitch_1
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v2}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$300(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, v2}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->invalidate(Landroid/view/View;I)V

    .line 176
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    invoke-static {v2}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->access$400(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;->dispatchTouchEvent(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
