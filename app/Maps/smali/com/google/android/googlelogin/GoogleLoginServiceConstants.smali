.class public Lcom/google/android/googlelogin/GoogleLoginServiceConstants;
.super Ljava/lang/Object;
.source "GoogleLoginServiceConstants.java"


# static fields
.field public static final ACCOUNTS_KEY:Ljava/lang/String; = "accounts"

.field public static final AUTHTOKEN_KEY:Ljava/lang/String; = "authtoken"

.field public static final AUTH_ACCOUNT_KEY:Ljava/lang/String; = "authAccount"

.field public static final ERROR_CODE_GLS_NOT_FOUND:I = 0x0

.field public static final ERROR_CODE_GLS_VERIFICATION_FAILED:I = 0x1

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final FLAG_GOOGLE_ACCOUNT:I = 0x1

.field public static final FLAG_HOSTED_ACCOUNT:I = 0x2

.field public static final FLAG_YOUTUBE_ACCOUNT:I = 0x4

.field public static final FULLY_QUALIFIED_SERVICE_NAME:Ljava/lang/String; = "com.google.android.googleapps.GoogleLoginService"

.field public static final PREFER_HOSTED:Z = false

.field public static final REQUEST_EXTRAS:Ljava/lang/String; = "callerExtras"

.field public static final REQUIRE_GOOGLE:Z = true

.field public static final SERVICE_INTENT:Landroid/content/Intent; = null

.field public static final SERVICE_NAME:Ljava/lang/String; = "GoogleLoginService"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googleapps"

.field public static final YOUTUBE_USER_KEY:Ljava/lang/String; = "YouTubeUser"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.googleapps"

    const-string v2, "com.google.android.googleapps.GoogleLoginService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlelogin/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static getErrorCodeMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 102
    const-string v0, "Unknown error"

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "The Google login service cannot be found."

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "The Google login service cannot be verified."

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
