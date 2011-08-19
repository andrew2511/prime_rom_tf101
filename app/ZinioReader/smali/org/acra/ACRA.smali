.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$org$acra$ReportingInteractionMode:[I = null

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field static final NOTIF_CRASH_ID:I = 0x29a

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field static final RES_DIALOG_COMMENT_PROMPT:Ljava/lang/String; = "RES_DIALOG_COMMENT_PROMPT"

.field static final RES_DIALOG_ICON:Ljava/lang/String; = "RES_DIALOG_ICON"

.field static final RES_DIALOG_OK_TOAST:Ljava/lang/String; = "RES_DIALOG_OK_TOAST"

.field static final RES_DIALOG_TEXT:Ljava/lang/String; = "RES_DIALOG_TEXT"

.field static final RES_DIALOG_TITLE:Ljava/lang/String; = "RES_DIALOG_TITLE"

.field static final RES_NOTIF_ICON:Ljava/lang/String; = "RES_NOTIF_ICON"

.field static final RES_NOTIF_TEXT:Ljava/lang/String; = "RES_NOTIF_TEXT"

.field static final RES_NOTIF_TICKER_TEXT:Ljava/lang/String; = "RES_NOTIF_TICKER_TEXT"

.field static final RES_NOTIF_TITLE:Ljava/lang/String; = "RES_NOTIF_TITLE"

.field static final RES_TOAST_TEXT:Ljava/lang/String; = "RES_TOAST_TEXT"

.field private static mApplication:Landroid/app/Application;

.field private static mCrashResources:Landroid/os/Bundle;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static mReportsCrashes:Lorg/acra/a/a;


# direct methods
.method static synthetic $SWITCH_TABLE$org$acra$ReportingInteractionMode()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/acra/ReportingInteractionMode;->values()[Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V

    return-void
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 247
    const-string v0, ""

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retrieve SharedPreferences "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->n()Ljava/lang/String;

    move-result-object v1

    .line 250
    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->o()I

    move-result v2

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method static getCrashResources()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getFormUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://spreadsheets.google.com/formResponse?formkey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&amp;ifq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 236
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    .line 115
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/acra/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/acra/a/a;

    .line 116
    sput-object p0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    if-eqz p0, :cond_0

    .line 118
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/acra/a;

    invoke-direct {v1}, Lorg/acra/a;-><init>()V

    sput-object v1, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 150
    sget-object v1, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    :try_start_0
    const-string v1, "acra.disable"

    const-string v2, "acra.enable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 162
    :goto_1
    if-eqz v0, :cond_2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACRA is disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    .line 157
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 167
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V
    :try_end_1
    .catch Lorg/acra/j; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static initAcra()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lorg/acra/ACRA;->initCrashResources()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACRA is enabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intializing..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    invoke-static {}, Lorg/acra/ErrorReporter;->a()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 186
    invoke-static {}, Lorg/acra/ACRA;->getFormUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Landroid/net/Uri;)V

    .line 187
    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ReportingInteractionMode;)V

    .line 189
    invoke-static {}, Lorg/acra/ACRA;->getCrashResources()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Landroid/os/Bundle;)V

    .line 192
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->b()V

    .line 197
    return-void
.end method

.method static initCrashResources()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    .line 201
    invoke-static {}, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode()[I

    move-result-object v0

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 203
    :pswitch_0
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lorg/acra/j;

    .line 205
    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    .line 204
    invoke-direct {v0, v1}, Lorg/acra/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_TOAST_TEXT"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 210
    :pswitch_1
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->k()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->l()I

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->j()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->g()I

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_NOTIF_TICKER_TEXT"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_NOTIF_TITLE"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_NOTIF_TEXT"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_TEXT"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_NOTIF_ICON"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_ICON"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_TITLE"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_COMMENT_PROMPT"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lorg/acra/ACRA;->mCrashResources:Landroid/os/Bundle;

    const-string v1, "RES_DIALOG_OK_TOAST"

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 222
    :cond_1
    new-instance v0, Lorg/acra/j;

    .line 223
    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    .line 222
    invoke-direct {v0, v1}, Lorg/acra/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
