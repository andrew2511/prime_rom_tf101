.class Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;
.super Ljava/lang/Object;
.source "ComboHotkey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/ComboHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 107
    .local v3, viewID:I
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->values()[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    move-result-object v4

    aget-object v0, v4, v3

    .line 108
    .local v0, comHotkey:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->access$000(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 109
    .local v2, keyCode:[I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 135
    .end local p0
    :cond_0
    :goto_0
    return v6

    .line 111
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    invoke-static {v5}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->invalidate(Landroid/view/View;I)V

    .line 112
    sget-object v4, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    if-ne v0, v4, :cond_1

    .line 113
    const/16 v4, 0x42

    invoke-static {v4, v6}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 116
    aget v4, v2, v1

    invoke-static {v6, v4}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v1           #i:I
    .restart local p0
    :pswitch_1
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    invoke-static {v5}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->invalidate(Landroid/view/View;I)V

    .line 123
    sget-object v4, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    if-eq v0, v4, :cond_0

    .line 126
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 127
    const/4 v4, 0x2

    aget v5, v2, v1

    invoke-static {v4, v5}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
