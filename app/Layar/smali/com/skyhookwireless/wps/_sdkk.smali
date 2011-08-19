.class Lcom/skyhookwireless/wps/_sdkk;
.super Lcom/skyhookwireless/wps/_sdki;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdkb:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private final _sdkd:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private final _sdke:Lcom/skyhookwireless/wps/RegistrationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "A^:u\u007fGI<he\\U}zmZW8x,DR)t,VC>y|GR2r"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0xc

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/wps/_sdkk;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x33

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x3b

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x5d

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x1c

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdki;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkk;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkd:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdke:Lcom/skyhookwireless/wps/RegistrationCallback;

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;Lcom/skyhookwireless/wps/_sdkh;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkk;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdka:Lcom/skyhookwireless/wps/_sdkob;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkd:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;)Lcom/skyhookwireless/wps/WPSReturnCode;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdke:Lcom/skyhookwireless/wps/RegistrationCallback;

    invoke-interface {v1}, Lcom/skyhookwireless/wps/RegistrationCallback;->handleSuccess()V

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdke:Lcom/skyhookwireless/wps/RegistrationCallback;

    invoke-interface {v1, v0}, Lcom/skyhookwireless/wps/RegistrationCallback;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdke:Lcom/skyhookwireless/wps/RegistrationCallback;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkk;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkk;->_sdke:Lcom/skyhookwireless/wps/RegistrationCallback;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    goto :goto_0
.end method
