.class Landroid/net/wifi/WifiStateMachine$StateChangeResult;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateChangeResult"
.end annotation


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 4
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "state"

    .prologue
    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    iput-object p3, p0, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 1798
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->BSSID:Ljava/lang/String;

    .line 1799
    iput p1, p0, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->networkId:I

    .line 1800
    return-void
.end method
