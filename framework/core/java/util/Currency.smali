.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final codesToCurrencies:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final localesToCurrencies:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private transient defaultFractionDigits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/util/Currency;->localesToCurrencies:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "currencyCode"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 51
    const-string v1, "XXX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Currency;->defaultFractionDigits:I

    .line 70
    :cond_10
    return-void

    .line 57
    :cond_11
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Llibcore/icu/ICU;->getCurrencySymbolNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, symbol:Ljava/lang/String;
    if-nez v0, :cond_22

    .line 59
    invoke-direct {p0, p1}, Ljava/util/Currency;->badCurrency(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 62
    :cond_22
    invoke-static {p1}, Llibcore/icu/ICU;->getCurrencyFractionDigitsNative(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Currency;->defaultFractionDigits:I

    .line 63
    iget v1, p0, Ljava/util/Currency;->defaultFractionDigits:I

    if-gez v1, :cond_10

    .line 67
    invoke-direct {p0, p1}, Ljava/util/Currency;->badCurrency(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private badCurrency(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 5
    .parameter "currencyCode"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a supported ISO 4217 currency code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCurrencyBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 2
    .parameter "locale"

    .prologue
    .line 208
    new-instance v0, Ljava/util/Currency$1;

    invoke-direct {v0, p0}, Ljava/util/Currency$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .registers 3
    .parameter "currencyCode"

    .prologue
    .line 91
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 92
    .local v0, currency:Ljava/util/Currency;
    if-nez v0, :cond_14

    .line 93
    new-instance v0, Ljava/util/Currency;

    .end local v0           #currency:Ljava/util/Currency;
    invoke-direct {v0, p0}, Ljava/util/Currency;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v0       #currency:Ljava/util/Currency;
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_14
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .registers 9
    .parameter "locale"

    .prologue
    .line 112
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Currency;

    .line 113
    .local v1, currency:Ljava/util/Currency;
    if-eqz v1, :cond_c

    move-object v5, v1

    .line 131
    :goto_b
    return-object v5

    .line 116
    :cond_c
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, variant:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_49

    const-string v5, "EURO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "HK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "PREEURO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 120
    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_49
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCodeNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, currencyCode:Ljava/lang/String;
    if-nez v2, :cond_68

    .line 125
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a supported ISO 3166 country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_68
    const-string v5, "None"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 127
    const/4 v5, 0x0

    goto :goto_b

    .line 129
    :cond_72
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    .line 130
    .local v3, result:Ljava/util/Currency;
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v5, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 131
    goto :goto_b
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Ljava/util/Currency;->defaultFractionDigits:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "locale"

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 163
    iget-object v2, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 174
    :goto_c
    return-object v2

    .line 167
    :cond_d
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 168
    .local v0, localeData:Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 169
    iget-object v2, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    goto :goto_c

    .line 173
    :cond_1e
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/icu/ICU;->getCurrencySymbolNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, symbol:Ljava/lang/String;
    if-eqz v1, :cond_2c

    move-object v2, v1

    goto :goto_c

    :cond_2c
    iget-object v2, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method
