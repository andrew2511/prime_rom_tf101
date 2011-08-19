.class public Lcom/amazon/kcp/application/AndroidLocaleManager;
.super Ljava/lang/Object;
.source "AndroidLocaleManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/ILocaleManager;


# static fields
.field private static instance:Lcom/amazon/kcp/application/AndroidLocaleManager;


# instance fields
.field locale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocaleManager;->instance:Lcom/amazon/kcp/application/AndroidLocaleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/AndroidLocaleManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocaleManager;->instance:Lcom/amazon/kcp/application/AndroidLocaleManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/amazon/kcp/application/AndroidLocaleManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AndroidLocaleManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocaleManager;->instance:Lcom/amazon/kcp/application/AndroidLocaleManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocaleManager;->instance:Lcom/amazon/kcp/application/AndroidLocaleManager;

    return-object v0
.end method

.method private getLocaleFromLocaleSettings()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 90
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAmazonLocaleCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 43
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, language:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "en-UK"

    .line 55
    :goto_0
    return-object v2

    .line 48
    :cond_0
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "de-DE"

    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "en-US"

    goto :goto_0
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocaleManager;->locale:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidLocaleManager;->getLocaleFromLocaleSettings()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocaleManager;->locale:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocaleManager;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public refreshLocaleSettings()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidLocaleManager;->getLocaleFromLocaleSettings()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocaleManager;->locale:Ljava/lang/String;

    .line 84
    return-void
.end method
