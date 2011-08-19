.class Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FunctionKeyIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method private constructor <init>(Lcom/asus/keyboard/KeyboardService;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/keyboard/KeyboardService;Lcom/asus/keyboard/KeyboardService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    return-void
.end method

.method private handleFunctionKey(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 154
    sparse-switch p1, :sswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 156
    :sswitch_0
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$100(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 159
    :sswitch_1
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$200(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 162
    :sswitch_2
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$300(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 167
    :sswitch_3
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$400(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 170
    :sswitch_4
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$500(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 173
    :sswitch_5
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$600(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 176
    :sswitch_6
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$700(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 179
    :sswitch_7
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$800(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;->process(I)V

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_6
        0xa4 -> :sswitch_5
        0xb0 -> :sswitch_7
        0xd5 -> :sswitch_0
        0xd6 -> :sswitch_1
        0xd7 -> :sswitch_2
        0xd8 -> :sswitch_3
        0xd9 -> :sswitch_3
        0xda -> :sswitch_3
        0xdb -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, intentAction:Ljava/lang/String;
    const-string v4, "com.asus.keyboard.action.FUNCTION_KEY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 140
    .local v1, event:Landroid/view/KeyEvent;
    if-nez v1, :cond_1

    .line 141
    const-string v4, "KeyboardService"

    const-string v5, "key event is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v1       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 146
    .local v3, keycode:I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 147
    .local v0, action:I
    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;->handleFunctionKey(I)V

    goto :goto_0
.end method
