.class interface abstract Lcom/skyhookwireless/wps/_sdkr;
.super Ljava/lang/Object;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getIPLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/IPLocationCallback;)V
.end method

.method public abstract getLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;)V
.end method

.method public abstract getPeriodicLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
.end method

.method public abstract registerUser(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;)V
.end method

.method public abstract setLocalFilePaths(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTiling(Ljava/lang/String;JJLcom/skyhookwireless/wps/TilingListener;)V
.end method

.method public abstract tuneLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;Lcom/skyhookwireless/wps/TuneLocationCallback;)V
.end method
