.class final Lcom/zinio/mobile/android/view/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->c()V

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    const-string v0, "Unknown error"

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/ShopActivity;->a(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/ShopActivity;->a(Lcom/zinio/mobile/android/view/ShopActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void

    .line 92
    :pswitch_0
    const-string v0, "Server error"

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "Invalid response"

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v0, "No such issue"

    goto :goto_0

    .line 101
    :pswitch_3
    const-string v0, "Service exception"

    goto :goto_0

    .line 104
    :pswitch_4
    const-string v0, "Malformed url"

    goto :goto_0

    .line 107
    :pswitch_5
    const-string v0, "App version not supported"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "Service is down for maintenance"

    .line 112
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bg;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
