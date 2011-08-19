.class Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;
.super Ljava/lang/Object;
.source "CommonHotkey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/CommonHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 140
    .local v3, viewID:I
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->values()[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    move-result-object v4

    aget-object v0, v4, v3

    .line 142
    .local v0, id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$000(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, keyCode:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 182
    .end local p0
    :cond_0
    :goto_0
    return v6

    .line 145
    .restart local p0
    :pswitch_0
    sget-object v4, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_3

    sget-object v4, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 146
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v6

    .line 147
    .local v2, status:Z
    :goto_1
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    if-eqz v2, :cond_2

    .line 149
    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, p1, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 150
    invoke-static {v6, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 151
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$300(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;->setHotkeyPressed(Z)V

    goto :goto_0

    .end local v2           #status:Z
    :cond_1
    move v2, v7

    .line 146
    goto :goto_1

    .line 153
    .restart local v2       #status:Z
    :cond_2
    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$400(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, p1, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 154
    invoke-static {v8, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 155
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$300(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;->setHotkeyPressed(Z)V

    goto :goto_0

    .line 157
    .end local v2           #status:Z
    :cond_3
    sget-object v4, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    if-ne v0, v4, :cond_5

    .line 158
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    sget-object v5, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$100(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    sget-object v5, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    const/16 v4, 0x42

    invoke-static {v4, v6}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 164
    :goto_2
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-virtual {v4, v6}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->releaseHotkey(Z)V

    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, p1, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 162
    invoke-static {v6, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_2

    .line 166
    :cond_5
    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, p1, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 167
    invoke-static {v6, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 168
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-virtual {v4, v6}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->releaseHotkey(Z)V

    goto/16 :goto_0

    .line 173
    :pswitch_1
    sget-object v4, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_0

    sget-object v4, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v5, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v5}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$400(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 175
    invoke-static {v8, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
