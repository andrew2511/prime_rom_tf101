.class final Lcom/google/android/location/os/real/k;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/r;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/os/real/k;->a:Lcom/google/android/location/os/real/r;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/k;-><init>(Lcom/google/android/location/os/real/r;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/location/os/real/k;->a:Lcom/google/android/location/os/real/r;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/location/os/real/k;->a:Lcom/google/android/location/os/real/r;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/k;->a:Lcom/google/android/location/os/real/r;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;ILjava/lang/Object;)V

    return-void
.end method
