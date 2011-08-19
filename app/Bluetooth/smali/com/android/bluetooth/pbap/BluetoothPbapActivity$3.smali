.class Lcom/android/bluetooth/pbap/BluetoothPbapActivity$3;
.super Landroid/os/Handler;
.source "BluetoothPbapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
