.class abstract Lcom/skyhookwireless/wps/_sdkhb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/skyhookwireless/wps/_sdkhb;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract calculateLocation(Lcom/skyhookwireless/wps/Location;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/Location;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isWifiNeeded(J)Z
.end method
