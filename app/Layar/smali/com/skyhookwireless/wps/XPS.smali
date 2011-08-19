.class public Lcom/skyhookwireless/wps/XPS;
.super Lcom/skyhookwireless/wps/_sdkg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkm;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkg;-><init>(Lcom/skyhookwireless/_sdko;)V

    return-void
.end method

.method public static setServerUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/skyhookwireless/wps/_sdkf;->setServerUrl(Ljava/lang/String;)V

    return-void
.end method
