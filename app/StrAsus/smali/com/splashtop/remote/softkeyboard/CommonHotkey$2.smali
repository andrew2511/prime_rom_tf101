.class Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;
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
    .line 186
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 190
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->values()[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    aget-object v0, v1, v2

    .line 191
    .local v0, id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    .end local p0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 193
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$200(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    goto :goto_0

    .line 197
    .restart local p0
    :pswitch_1
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$400(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 198
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;->this$0:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->access$500(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;->dispatchTouchEvent(I)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
