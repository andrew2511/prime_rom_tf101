.class Lcom/skyhookwireless/wps/_sdknb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

.field private _sdkb:Lcom/skyhookwireless/_sdkub;

.field private _sdkc:Lcom/skyhookwireless/_sdkub;

.field private _sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

.field private _sdke:I

.field private _sdkf:Lcom/skyhookwireless/wps/_sdkdb;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;Lcom/skyhookwireless/wps/WPSContinuation;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdka:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkb:Lcom/skyhookwireless/_sdkub;

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkc:Lcom/skyhookwireless/_sdkub;

    const/4 v0, -0x1

    iput v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdke:I

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkf:Lcom/skyhookwireless/wps/_sdkdb;

    return-void
.end method


# virtual methods
.method _sdka()J
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkb:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    return-wide v0
.end method

.method _sdkb()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkc:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkc:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _sdkc()Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method

.method _sdkd()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdke:I

    return v0
.end method

.method _sdke()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkf:Lcom/skyhookwireless/wps/_sdkdb;

    return-object v0
.end method

.method public done()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdka:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    invoke-interface {v0}, Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;->done()V

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkb:Lcom/skyhookwireless/_sdkub;

    return-void
.end method

.method public handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdka:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    invoke-interface {v0, p1}, Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkb:Lcom/skyhookwireless/_sdkub;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkf:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method

.method public handleWPSPeriodicLocation(Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdka:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    invoke-interface {v0, p1}, Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;->handleWPSPeriodicLocation(Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkc:Lcom/skyhookwireless/_sdkub;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkb:Lcom/skyhookwireless/_sdkub;

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkf:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdkd:Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method

.method public handleWPSPeriodicLocationTrack(Lcom/skyhookwireless/wps/WPSLocation;I)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    iput p2, p0, Lcom/skyhookwireless/wps/_sdknb;->_sdke:I

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdknb;->handleWPSPeriodicLocation(Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    return-object v0
.end method
