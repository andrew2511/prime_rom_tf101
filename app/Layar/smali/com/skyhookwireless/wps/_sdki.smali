.class abstract Lcom/skyhookwireless/wps/_sdki;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdke;


# instance fields
.field protected final _sdka:Lcom/skyhookwireless/wps/_sdkob;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/skyhookwireless/wps/_sdkob;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkob;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdki;->_sdka:Lcom/skyhookwireless/wps/_sdkob;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdki;->_sdka:Lcom/skyhookwireless/wps/_sdkob;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkob;->_sdka()V

    return-void
.end method
