.class public Lcom/google/android/talk/BluetoothButton;
.super Lcom/google/android/talk/AnimatedBackgroundImageButton;
.source "BluetoothButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "set"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AnimatedBackgroundImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x37

    iput v0, p0, Lcom/google/android/talk/BluetoothButton;->mStartAlpha:I

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/talk/BluetoothButton;->mEndAlpha:I

    .line 38
    const/16 v0, 0x15e

    iput v0, p0, Lcom/google/android/talk/BluetoothButton;->mDurationMs:I

    .line 39
    return-void
.end method


# virtual methods
.method public handleBluetoothStateChange(I)V
    .locals 3
    .parameter "bluetoothState"

    .prologue
    const v2, 0x7f02000b

    const/16 v1, 0xff

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bluetooth state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopBackgroundAnimation()V

    .line 67
    :goto_0
    return-void

    .line 47
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopBackgroundAnimation()V

    .line 50
    const v0, 0x7f0200b6

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/talk/BluetoothButton;->setBackgroundAlpha(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BluetoothButton;->setBackgroundAlpha(I)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setBackgroundResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->startBackgroundAnimation()V

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/talk/BluetoothButton;->stopBackgroundAnimation()V

    .line 61
    invoke-virtual {p0, v2}, Lcom/google/android/talk/BluetoothButton;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/google/android/talk/BluetoothButton;->setBackgroundAlpha(I)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
