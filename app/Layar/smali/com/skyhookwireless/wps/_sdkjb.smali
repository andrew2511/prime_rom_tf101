.class Lcom/skyhookwireless/wps/_sdkjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/skyhookwireless/_sdked",
        "<",
        "Lcom/skyhookwireless/wps/WPSReturnCode;",
        "Lcom/skyhookwireless/wps/_sdkdb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final _sdka:Lcom/skyhookwireless/wps/WPSAuthentication;

.field final _sdkb:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

.field final _sdkc:Lcom/skyhookwireless/wps/_sdkpb;

.field final _sdkd:Lcom/skyhookwireless/wps/_sdkob;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/wps/_sdkob;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkd:Lcom/skyhookwireless/wps/_sdkob;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdka:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkb:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    iput-object p4, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkc:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/skyhookwireless/_sdked;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkd:Lcom/skyhookwireless/wps/_sdkob;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdka:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkb:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkjb;->_sdkc:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;

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

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkjb;->call()Lcom/skyhookwireless/_sdked;

    move-result-object v0

    return-object v0
.end method
