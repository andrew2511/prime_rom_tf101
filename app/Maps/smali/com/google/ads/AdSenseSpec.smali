.class public Lcom/google/ads/AdSenseSpec;
.super Ljava/lang/Object;
.source "AdSenseSpec.java"

# interfaces
.implements Lcom/google/ads/AdSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdSenseSpec$ExpandDirection;,
        Lcom/google/ads/AdSenseSpec$AdFormat;,
        Lcom/google/ads/AdSenseSpec$AdType;
    }
.end annotation


# static fields
.field private static final APP_URL_MODEL_WITH_SEPARATORS:Ljava/lang/String; = ".android."

.field private static final JS_PARAM:Ljava/lang/String; = "afma-sdk-a-v3.1"

.field private static final PLATFORM:Ljava/lang/String; = "Android"


# instance fields
.field private mAdTestEnabled:Z

.field private mAdType:Lcom/google/ads/AdSenseSpec$AdType;

.field private mAlternateAdUrl:Ljava/lang/String;

.field private mAlternateColor:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mColorBackground:Ljava/lang/String;

.field private mColorBorder:Ljava/lang/String;

.field private mColorLink:Ljava/lang/String;

.field private mColorText:Ljava/lang/String;

.field private mColorUrl:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mExpandDirection:Lcom/google/ads/AdSenseSpec$ExpandDirection;

.field private mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

.field private mKeywords:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mWebEquivalentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "clientId"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "ClientId"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    .line 70
    sget-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    iput-object v0, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    .line 71
    return-void
.end method

.method private checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "paramName"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method private checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "paramName"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method

.method private generateAppUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 190
    .local v3, versionCode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".android."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 193
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #versionCode:I
    :goto_0
    return-object v4

    .line 191
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 193
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".android."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppName must be set before calling generateParameters()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CompanyName must be set before calling generateParameters()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "client"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "app_name"

    invoke-direct {p0, p1}, Lcom/google/ads/AdSenseSpec;->generateAppUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "msid"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "js"

    const-string v3, "afma-sdk-a-v3.1"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "an"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "cn"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-boolean v1, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    if-nez v1, :cond_2

    .line 116
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "adtest"

    const-string v3, "off"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    if-eqz v1, :cond_3

    .line 119
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "ad_type"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-static {v3}, Lcom/google/ads/AdSenseSpec$AdType;->access$000(Lcom/google/ads/AdSenseSpec$AdType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 122
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "alternate_ad_url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 125
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "alt_color"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 128
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "channel"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 131
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_bg"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 134
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_border"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 137
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_link"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 140
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_text"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_a
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 143
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_b
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    if-eqz v1, :cond_c

    .line 146
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "format"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v3}, Lcom/google/ads/AdSenseSpec$AdFormat;->getFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_c
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 149
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "kw"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_d
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 152
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_e
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 155
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_f
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mExpandDirection:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    if-eqz v1, :cond_10

    .line 158
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "xdir"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mExpandDirection:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    invoke-virtual {v3}, Lcom/google/ads/AdSenseSpec$ExpandDirection;->getFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_10
    return-object v0
.end method

.method public getAdFormat()Lcom/google/ads/AdSenseSpec$AdFormat;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    if-nez v0, :cond_0

    .line 396
    sget-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    goto :goto_0
.end method

.method public getAdTestEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    return v0
.end method

.method public getAdType()Lcom/google/ads/AdSenseSpec$AdType;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    return-object v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    const-string v0, "http://pagead2.googlesyndication.com/pagead/afma_load_ads.js"

    .line 181
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://www.gstatic.com/mobile/ads/safma_load_ads.js"

    goto :goto_0
.end method

.method public getAlternateAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    return-object v0
.end method

.method public getColorLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    return-object v0
.end method

.method public getColorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMode()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    return v0
.end method

.method public getExpandDirection()Lcom/google/ads/AdSenseSpec$ExpandDirection;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mExpandDirection:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/ads/AdSenseSpec;->getAdFormat()Lcom/google/ads/AdSenseSpec$AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/AdSenseSpec$AdFormat;->getHeight()I

    move-result v0

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getWebEquivalentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/ads/AdSenseSpec;->getAdFormat()Lcom/google/ads/AdSenseSpec$AdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/AdSenseSpec$AdFormat;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "format"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mFormat:Lcom/google/ads/AdSenseSpec$AdFormat;

    .line 405
    return-object p0
.end method

.method public setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "enabled"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    .line 222
    return-object p0
.end method

.method public setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "adType"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    .line 233
    return-object p0
.end method

.method public setAlternateAdUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "alternateAdUrl"

    .prologue
    .line 280
    const-string v0, "AlternateAdUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public setAlternateColor(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "alternateColor"

    .prologue
    .line 296
    const-string v0, "AlternateColor"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "appName"

    .prologue
    .line 248
    const-string v0, "AppName"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "channel"

    .prologue
    .line 264
    const-string v0, "Channel"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "clientId"

    .prologue
    .line 206
    const-string v0, "ClientId"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorBackground"

    .prologue
    .line 311
    const-string v0, "ColorBackground"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorBorder"

    .prologue
    .line 326
    const-string v0, "ColorBorder"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorLink"

    .prologue
    .line 341
    const-string v0, "ColorLink"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorText"

    .prologue
    .line 356
    const-string v0, "ColorText"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorUrl"

    .prologue
    .line 371
    const-string v0, "ColorUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "companyName"

    .prologue
    .line 388
    const-string v0, "CompanyName"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public setExpandDirection(Lcom/google/ads/AdSenseSpec$ExpandDirection;)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "direction"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mExpandDirection:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    .line 461
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "keywords"

    .prologue
    .line 419
    const-string v0, "Keywords"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "query"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mQuery:Ljava/lang/String;

    .line 435
    return-object p0
.end method

.method public setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "webEquivalentUrl"

    .prologue
    .line 450
    const-string v0, "WebEquivalentUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    .line 452
    return-object p0
.end method
