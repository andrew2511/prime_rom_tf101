.class public final Lcom/skyhookwireless/_sdkvb;
.super Lcom/skyhookwireless/_sdkub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkub;-><init>()V

    return-void
.end method


# virtual methods
.method public _sdkb()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
