.class abstract Lcom/skyhookwireless/wps/_sdkg;
.super Lcom/skyhookwireless/wps/_sdkf;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdks;


# direct methods
.method protected constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkf;-><init>(Lcom/skyhookwireless/_sdko;)V

    return-void
.end method


# virtual methods
.method public getXPSLocation(Lcom/skyhookwireless/wps/WPSAuthentication;IILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
    .locals 7

    sget-object v2, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->WPS_NO_STREET_ADDRESS_LOOKUP:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/skyhookwireless/wps/_sdkg;->getPeriodicLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V

    return-void
.end method
