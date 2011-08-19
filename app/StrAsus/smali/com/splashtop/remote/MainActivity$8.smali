.class Lcom/splashtop/remote/MainActivity$8;
.super Landroid/telephony/PhoneStateListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 422
    packed-switch p1, :pswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$800(Lcom/splashtop/remote/MainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0, v1}, Lcom/splashtop/remote/MainActivity;->access$902(Lcom/splashtop/remote/MainActivity;Z)Z

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$800(Lcom/splashtop/remote/MainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/splashtop/remote/MainActivity;->access$902(Lcom/splashtop/remote/MainActivity;Z)Z

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$800(Lcom/splashtop/remote/MainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$8;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0, v1}, Lcom/splashtop/remote/MainActivity;->access$902(Lcom/splashtop/remote/MainActivity;Z)Z

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
