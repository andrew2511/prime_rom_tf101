.class public Lcom/splashtop/remote/utils/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final ACK_AUTH_ACCEPT:I = 0x0

.field public static final ACK_AUTH_BUSY:I = 0x2

.field public static final ACK_AUTH_REJECT:I = 0x1

.field public static final ACK_CONNECT_FAILED:I = 0x3

.field public static final BREAK_ACTIVITY:I = 0xcb

.field public static final CONNECT_CANCEL:I = -0x1

.field public static final CONNECT_DROP:I = -0x2

.field public static final CONTROL_MSG_DOWN:I = 0x1

.field public static final CONTROL_MSG_DRAG:I = 0x4

.field public static final CONTROL_MSG_LONGPRESS:I = 0x3

.field public static final CONTROL_MSG_MOVE:I = 0x2

.field public static final CONTROL_MSG_SPECIAL_KEY:I = 0x42

.field public static final CONTROL_MSG_UNICODE:I = 0x40

.field public static final CONTROL_MSG_UP:I = 0x0

.field public static final CONTROL_MSG_WHEELMOVE:I = 0xb

.field public static final CONTROL_MSG_ZOOM:I = 0x5

.field public static final DEFAULT_PORT:Ljava/lang/String; = "6783"

.field public static final DIALOG_CHECK_PLATFORM:I = 0xc

.field public static final DIALOG_CONNECT_ABORT:I = 0x8

.field public static final DIALOG_HELP_LAYOUT:I = 0x7

.field public static final DIALOG_INPUT_PASSWORD:I = 0x3

.field public static final DIALOG_INTERRUPT_PROMPT:I = 0xd

.field public static final DIALOG_LICENSE_ERROR:I = 0x9

.field public static final DIALOG_LONG_CLICK_MENU:I = 0x5

.field public static final DIALOG_NETWORK_WARNING:I = 0x4

.field public static final DIALOG_PROGRESS_BAR_CONNECT:I = 0x1

.field public static final DIALOG_PROGRESS_BAR_PROBE:I = 0x2

.field public static final DIALOG_UPDATE:I = 0xb

.field public static final EULA_VERSION:I = 0x18af7

.field private static final FLURRY_KEY_DEV:Ljava/lang/String; = "JVU1WEP6HSXZSFJ2ATS6"

.field private static final FLURRY_KEY_PAD:Ljava/lang/String; = "6K69V8JPES3KIFEEJ2CN"

.field private static final FLURRY_KEY_RELEASE:Ljava/lang/String; = "UVIB2Q4FUQTF7E31MVDL"

.field public static final PRES:Ljava/lang/String; = "remote_info"

.field public static final REQUEST_DESKTOP_SESSION:I = 0x64

.field public static final REQUEST_EDIT_SERVER:I = 0x66

.field public static final REQUEST_EULA:I = 0x65

.field public static final REQUEST_MORE_SETTINGS:I = 0x68

.field public static final REQUEST_SETTINGS:I = 0x67

.field public static final RESOLUTION_1024_768:Ljava/lang/String; = "1024 x 768"

.field public static final RESOLUTION_1280_768:Ljava/lang/String; = "1280 x 768"

.field public static final RESOLUTION_1280_800:Ljava/lang/String; = "1280 x 800"

.field public static final RESOLUTION_800_600:Ljava/lang/String; = "800 x 600"

.field public static final RESOLUTION_DEFAULT:Ljava/lang/String; = "system"

.field public static final SERVER_FROM_NETWORK:I = -0x1

.field public static final SERVER_TYPE_ANDROID:I = 0x2

.field public static final SERVER_TYPE_IPAD:I = 0x0

.field public static final SERVER_TYPE_IPHONE:I = 0x1

.field public static final SERVER_TYPE_IPODTOUCH:I = 0x6

.field public static final SERVER_TYPE_LINUX:I = 0x4

.field public static final SERVER_TYPE_MAC:I = 0x3

.field public static final SERVER_TYPE_WIN:I = 0x5

.field public static final SESSION_CONNECTING:I = 0x1

.field public static final SESSION_IDLE:I = 0x0

.field public static final SHOW_DIALOG:I = 0x1

.field public static final SHOW_TOAST:I = 0x2

.field public static final THREAD_TYPE_BEFORE_CONNECT:I = 0x0

.field public static final THREAD_TYPE_CONNECT:I = 0x1

.field public static final THREAD_TYPE_GET_SERVER_INFO:I = 0x4

.field public static final THREAD_TYPE_HANDSHAKE:I = 0x3

.field public static final THREAD_TYPE_PROBE:I = 0x2

.field public static final UPDATE_CHECK_URL:Ljava/lang/String; = "http://sdrs.splashtop.com/ASUSRD04/notification/{lang}/ASUSRD04.xml"

.field public static final UPDATE_FRAMESIZE_TEXT:I = -0x3

.field private static bReleaseMode:Z

.field public static final sMenuReloution:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    sput-boolean v2, Lcom/splashtop/remote/utils/Common;->bReleaseMode:Z

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "800 x 600"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "1024 x 768"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1280 x 800"

    aput-object v2, v0, v1

    sput-object v0, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFlurryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/splashtop/remote/utils/Common;->bReleaseMode:Z

    if-eqz v0, :cond_0

    const-string v0, "6K69V8JPES3KIFEEJ2CN"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "JVU1WEP6HSXZSFJ2ATS6"

    goto :goto_0
.end method

.method public static getLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRenderInfo()Z
    .locals 11

    .prologue
    .line 122
    const/4 v7, 0x0

    .line 124
    .local v7, status:Z
    const/4 v8, 0x2

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "/system/lib/egl/egl.cfg"

    aput-object v9, v0, v8

    .line 125
    .local v0, args:[Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 126
    .local v2, cmd:Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 128
    .local v5, process:Ljava/lang/Process;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 129
    .local v6, reader:Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    .local v1, buffReader:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v8, "powervr"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "tegra"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    const/4 v7, 0x1

    .line 139
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #buffReader:Ljava/io/BufferedReader;
    .end local v2           #cmd:Ljava/lang/ProcessBuilder;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/Reader;
    :cond_2
    :goto_0
    return v7

    .line 136
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 137
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "IRISMain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRenderInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getServerType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 105
    const-string v0, "Unknown"

    .line 106
    .local v0, server_type:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 115
    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "IPad"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v0, "IPhone"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "Android"

    goto :goto_0

    .line 110
    :pswitch_3
    const-string v0, "MAC"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "Linux"

    goto :goto_0

    .line 112
    :pswitch_5
    const-string v0, "Windows"

    goto :goto_0

    .line 113
    :pswitch_6
    const-string v0, "IPodTouch"

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final setReleaseMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 21
    sput-boolean p0, Lcom/splashtop/remote/utils/Common;->bReleaseMode:Z

    .line 22
    return-void
.end method
