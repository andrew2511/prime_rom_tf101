.class Lcom/skyhookwireless/_sdkz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdky;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/_sdky;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkz;->_sdka:Lcom/skyhookwireless/_sdky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _sdka()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkz;->_sdka:Lcom/skyhookwireless/_sdky;

    invoke-static {v0}, Lcom/skyhookwireless/_sdky;->_sdka(Lcom/skyhookwireless/_sdky;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkz;->_sdka:Lcom/skyhookwireless/_sdky;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkz;->_sdka()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
