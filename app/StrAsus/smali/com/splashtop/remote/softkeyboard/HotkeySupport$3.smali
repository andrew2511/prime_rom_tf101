.class Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;
.super Ljava/lang/Object;
.source "HotkeySupport.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/HotkeySupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    sget-object v1, Lcom/splashtop/remote/softkeyboard/HotkeySupport$5;->$SwitchMap$com$splashtop$remote$softkeyboard$CommonHotkey$CommHotkey:[I

    invoke-static {}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->values()[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v1, v4}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 152
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->access$000(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 153
    .local v0, m:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->access$100(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    .end local v0           #m:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 137
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v1, v5}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 142
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v1, v4}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 147
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;->this$0:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
