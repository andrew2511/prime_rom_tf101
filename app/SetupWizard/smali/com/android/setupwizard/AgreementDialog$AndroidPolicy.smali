.class public final enum Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;
.super Ljava/lang/Enum;
.source "AgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/AgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AndroidPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

.field public static final enum ANDROID_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

.field public static final enum GOOGLE_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

.field public static final enum GOOGLE_TERMS_OF_SERVICE:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;


# instance fields
.field private final mFailUrl:Ljava/lang/String;

.field private final mFallbackUrl:Ljava/lang/String;

.field private final mGservicesProperty:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private final mTitleResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    const-string v1, "GOOGLE_TERMS_OF_SERVICE"

    const v3, 0x7f0a001e

    const-string v4, "ro.url.legal.google_tos"

    const-string v5, "setup_google_tos_url"

    const-string v6, "http://www.google.com/intl/%y_%z/mobile/android/google-tos.html"

    const-string v7, "file:///android_asset/html/en_us/google-tos.html"

    const-string v8, "tos"

    invoke-direct/range {v0 .. v8}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    .line 93
    new-instance v3, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    const-string v4, "GOOGLE_PRIVACY_POLICY"

    const v6, 0x7f0a001f

    const-string v7, "ro.url.legal.google_privacy"

    const-string v8, "setup_google_privacy_url"

    const-string v9, "http://www.google.com/intl/%s/mobile/android/google-privacy.html"

    const-string v10, "file:///android_asset/html/en_us/google-privacy.html"

    const-string v11, "google_privacy"

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    .line 101
    new-instance v3, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    const-string v4, "ANDROID_PRIVACY_POLICY"

    const v6, 0x7f0a001d

    const-string v7, "ro.url.legal.android_privacy"

    const-string v8, "setup_android_privacy_url"

    const-string v9, "http://www.google.com/intl/%s/mobile/android/privacy.html"

    const-string v10, "file:///android_asset/html/en_us/android-privacy.html"

    const-string v11, "android_privacy"

    move v5, v13

    invoke-direct/range {v3 .. v11}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    sget-object v1, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->$VALUES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "titleId"
    .parameter "sysProperty"
    .parameter "gsProperty"
    .parameter "fallback"
    .parameter "fail"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mTitleResourceId:I

    .line 128
    iput-object p4, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mSystemProperty:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 131
    iput-object p7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mTag:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;
    .locals 1
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    return-object p0
.end method

.method public static values()[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->$VALUES:[Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    invoke-virtual {v0}, [Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    return-object v0
.end method


# virtual methods
.method public getPrettyUrl(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "cr"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureUrl(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "cr"

    .prologue
    .line 140
    iget-object v5, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-static {}, Lcom/android/setupwizard/AgreementDialog;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in gservices"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mSystemProperty:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-static {}, Lcom/android/setupwizard/AgreementDialog;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mSystemProperty:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in sysprops, using: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 150
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    invoke-static {}, Lcom/android/setupwizard/AgreementDialog;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not set, using: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    .line 156
    :cond_5
    const-string v5, "%m"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 158
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 159
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 160
    .local v1, config:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v5, :cond_a

    .line 161
    const-string v5, "%m"

    iget v6, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 171
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_6
    :goto_0
    const-string v5, "%s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 173
    .local v2, locale:Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, tmp:Ljava/lang/String;
    const-string v5, "%s"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #tmp:Ljava/lang/String;
    :cond_7
    const-string v5, "%y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 181
    .restart local v2       #locale:Ljava/util/Locale;
    const-string v5, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .end local v2           #locale:Ljava/util/Locale;
    :cond_8
    const-string v5, "%z"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 189
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 190
    .restart local v0       #am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 191
    .restart local v1       #config:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v5, :cond_b

    .line 192
    const-string v5, "%z"

    const-string v6, "gsm.sim.operator.iso-country"

    const-string v7, "us"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 207
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_9
    :goto_1
    return-object v4

    .line 165
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_a
    :try_start_2
    const-string v5, "%m"

    const-string v6, "%s"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_0

    .line 198
    :cond_b
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 199
    .restart local v2       #locale:Ljava/util/Locale;
    const-string v5, "%z"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    goto :goto_1

    .line 202
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #locale:Ljava/util/Locale;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 167
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;->mTitleResourceId:I

    return v0
.end method
