.class Lcom/skyhookwireless/wps/_sdkac;
.super Ljava/lang/Object;


# static fields
.field static final _sdka:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/skyhookwireless/wps/WPSContinuation;->values()[Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/skyhookwireless/wps/_sdkac;->_sdka:[I

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/wps/_sdkac;->_sdka:[I

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/WPSContinuation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/skyhookwireless/wps/_sdkac;->_sdka:[I

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/WPSContinuation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
