.class interface abstract Lcom/skyhookwireless/wps/_sdkkc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdkjc;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract handleEvents(Ljava/util/List;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkad;",
            ">;",
            "Lcom/skyhookwireless/_sdkyc;",
            ")",
            "Lcom/skyhookwireless/wps/WPSContinuation;"
        }
    .end annotation
.end method

.method public abstract handleScan(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
.end method

.method public abstract isWifiNeeded(J)Z
.end method

.method public abstract lastLocation()Lcom/skyhookwireless/wps/_sdkdb;
.end method
