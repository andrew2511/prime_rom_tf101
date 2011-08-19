.class final Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;-><init>(Lcom/google/android/location/NetworkLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "cellLocation"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 441
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "ss"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v1}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void
.end method
