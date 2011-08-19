.class public Lcom/layar/util/MyConfig;
.super Ljava/lang/Object;
.source "MyConfig.java"


# static fields
.field public static final ABOUT_PATH:Ljava/lang/String; = "/resources/documents/aboutlayar"

.field public static final COUNT_HTTP_REQUESTS:Z = false

.field public static final DEBUG:Z = false

.field public static final DEBUG_LOCATION:Z = false

.field public static final DEBUG_VARIANTS:Z = false

.field public static final FAKE_MOVING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FORCE_LANDSCAPE:Z = false

.field public static final HIDE_ELEMENTS_FROM_SCREENSHOT:Z = true

#the value of this static final field might be set in the static constructor
.field public static final IS_LANDSCAPE_DEVICE:Z = false

.field public static final LAYAR_CLIENT_5_0_VERSION:I = 0x20

.field public static final LAYER_HOST:Ljava/lang/String; = "dev.layar.com"

.field public static final LAYER_RECENT_MAX:I = 0x32

.field public static final LIST_REFRESH_DISTANCE:J = 0x3e8L

.field public static final LIST_REFRESH_INTERVAL:J = 0x36ee80L

.field public static final OAUTH_KEY:Ljava/lang/String; = "android30"

.field public static final OAUTH_SECRET:Ljava/lang/String; = "1W.P=-CJO866vqYsn}qo"

#the value of this static final field might be set in the static constructor
.field public static final OPENGL_LIGHTING:Z = false

.field public static final OPENGL_MEASURE:Z = false

.field public static final OPENGL_NOBLEND:Z = true

#the value of this static final field might be set in the static constructor
.field public static final OPENGL_SCREENSHOT_SWAPCOLORS:Z = false

.field public static final PROFILING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SDK5Plus:Z = false

.field public static final SKIP_UPDATE:Z = false

.field public static final SKYHOOK_REALM:Ljava/lang/String; = "layar"

.field public static final SKYHOOK_REGISTER_USER:Ljava/lang/String; = "4zfk7n6i297g"

.field public static final SSL_PORT:I = 0x1bb

.field public static final TERMS_CONDITIONS_PATH:Ljava/lang/String; = "/resources/documents/terms-4.0/"

.field public static final UI_UPDATE_DELAY:I = 0x14

.field public static final UPDATE_PATH:Ljava/lang/String; = "/resources/update/android/"

.field public static final USER_AGENT:Ljava/lang/String; = null

.field public static final USE_ENCODING:Z = true

#the value of this static final field might be set in the static constructor
.field public static final USE_EXIF:Z = false

.field public static final USE_FIXED_COUNTRY:Z = false

.field public static final USE_FIXED_LOCATION:Z = false

.field public static final USE_FIXED_PHONEID:Z = false

.field public static final USE_GL_RADAR:Z = true

.field public static final USE_LAYERS_CACHE:Z = true

.field public static final USE_OAUTH:Z = false

.field public static final USE_SKYHOOK:Z = false

.field public static final USE_TRANSACTIONS:Z = true

.field public static final VERSION:Ljava/lang/String; = "5.0"

.field public static final VERSION_STRING:Ljava/lang/String; = "5.0.3 (15224)"

.field public static final WELCOME_SEQUENCE_MAX:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Layar/5.0 Android/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/MyConfig;->USER_AGENT:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/layar/util/MyConfig;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/layar/util/MyConfig;->SDK5Plus:Z

    .line 52
    invoke-static {}, Lcom/layar/util/MyConfig;->checkForExifAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/layar/util/MyConfig;->USE_EXIF:Z

    .line 77
    invoke-static {}, Lcom/layar/util/MyConfig;->checkForGalaxy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    .line 79
    invoke-static {}, Lcom/layar/util/MyConfig;->checkForLg()Z

    move-result v0

    sput-boolean v0, Lcom/layar/util/MyConfig;->FORCE_LANDSCAPE:Z

    .line 80
    invoke-static {}, Lcom/layar/util/MyConfig;->checkForMoto()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/layar/util/MyConfig;->checkForAsus()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/layar/util/MyConfig;->IS_LANDSCAPE_DEVICE:Z

    .line 81
    invoke-static {}, Lcom/layar/util/MyConfig;->checkForDroid()Z

    move-result v0

    sput-boolean v0, Lcom/layar/util/MyConfig;->OPENGL_SCREENSHOT_SWAPCOLORS:Z

    .line 7
    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0

    :cond_1
    move v0, v3

    .line 77
    goto :goto_1

    :cond_2
    move v0, v3

    .line 80
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkForAsus()Z
    .locals 2

    .prologue
    .line 110
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, model:Ljava/lang/String;
    const-string v1, "transformer tf101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "transformer tf101g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "slider sl101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "slider sl101g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "journey jn101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    .line 112
    goto :goto_0
.end method

.method public static final checkForDroid()Z
    .locals 2

    .prologue
    .line 91
    const-string v0, "Milestone"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Droid"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final checkForExifAvailable()Z
    .locals 2

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Lcom/layar/reflect/ExifWrapper;->checkAvailable()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final checkForGalaxy()Z
    .locals 2

    .prologue
    .line 95
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, model:Ljava/lang/String;
    const-string v1, "galaxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gt-i7500"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "gt-i5700"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spica"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    .line 97
    goto :goto_0
.end method

.method public static final checkForLg()Z
    .locals 2

    .prologue
    .line 84
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG GW620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG KH5200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final checkForMoto()Z
    .locals 2

    .prologue
    .line 102
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, model:Ljava/lang/String;
    const-string v1, "motomb511"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "me502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "motome502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "mb502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "motomb502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    .line 105
    goto :goto_0
.end method

.method public static final getSdkVersion()I
    .locals 2

    .prologue
    .line 125
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    goto :goto_0
.end method
