.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private transient exponentSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private transient locale:Ljava/util/Locale;

.field private minusSign:C

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 566
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "currencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "digit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "exponential"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "exponentialSeparator"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "infinity"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "intlCurrencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minusSign"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monetarySeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "NaN"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "patternSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "percent"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "perMill"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zeroDigit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .parameter "locale"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 85
    .local v1, localeData:Llibcore/icu/LocaleData;
    iget-char v2, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 86
    iget-char v2, v1, Llibcore/icu/LocaleData;->digit:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 87
    iget-char v2, v1, Llibcore/icu/LocaleData;->decimalSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 88
    iget-char v2, v1, Llibcore/icu/LocaleData;->groupingSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 89
    iget-char v2, v1, Llibcore/icu/LocaleData;->patternSeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 90
    iget-char v2, v1, Llibcore/icu/LocaleData;->percent:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 91
    iget-char v2, v1, Llibcore/icu/LocaleData;->perMill:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 92
    iget-char v2, v1, Llibcore/icu/LocaleData;->monetarySeparator:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 93
    iget-char v2, v1, Llibcore/icu/LocaleData;->minusSign:C

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 94
    iget-object v2, v1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 95
    iget-object v2, v1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 96
    iget-object v2, v1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 99
    :try_start_39
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 100
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_4f} :catch_50

    .line 107
    :goto_4f
    return-void

    .line 102
    :catch_50
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 104
    iget-object v2, v1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 105
    iget-object v2, v1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_4f
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 142
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/text/DecimalFormatSymbols;
    .registers 1

    .prologue
    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .registers 2
    .parameter "locale"

    .prologue
    .line 129
    if-nez p0, :cond_8

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_8
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x2e

    .line 609
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 610
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 611
    .local v2, serialVersionOnStream:I
    const-string v3, "currencySymbol"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 612
    const-string v3, "decimalSeparator"

    invoke-virtual {v1, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 613
    const-string v3, "digit"

    const/16 v4, 0x23

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 614
    const-string v3, "groupingSeparator"

    const/16 v4, 0x2c

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 615
    const-string v3, "infinity"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 616
    const-string v3, "intlCurrencySymbol"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 617
    const-string v3, "minusSign"

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 618
    const-string v3, "NaN"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 619
    const-string v3, "patternSeparator"

    const/16 v4, 0x3b

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 620
    const-string v3, "percent"

    const/16 v4, 0x25

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 621
    const-string v3, "perMill"

    const/16 v4, 0x2030

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 622
    const-string v3, "zeroDigit"

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 623
    const-string v3, "locale"

    invoke-virtual {v1, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 624
    if-nez v2, :cond_b6

    .line 625
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 630
    :goto_a7
    if-nez v2, :cond_c0

    .line 632
    const-string v3, "E"

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 642
    :goto_ad
    :try_start_ad
    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_b5} :catch_e1

    .line 646
    :goto_b5
    return-void

    .line 627
    :cond_b6
    const-string v3, "monetarySeparator"

    invoke-virtual {v1, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_a7

    .line 633
    :cond_c0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_d3

    .line 635
    const-string v3, "exponential"

    const/16 v4, 0x45

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_ad

    .line 638
    :cond_d3
    const-string v3, "exponentialSeparator"

    const-string v4, "E"

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_ad

    .line 643
    :catch_e1
    move-exception v3

    move-object v0, v3

    .line 644
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_b5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 588
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    const-string v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 590
    const-string v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 591
    const-string v1, "exponential"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 592
    const-string v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 594
    const-string v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    const-string v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    const-string v1, "minusSign"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 597
    const-string v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 598
    const-string v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const-string v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 600
    const-string v1, "percent"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 601
    const-string v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 602
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 603
    const-string v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 604
    const-string v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 606
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 149
    :catch_5
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 174
    :goto_5
    return v2

    .line 170
    :cond_6
    instance-of v2, p1, Ljava/text/DecimalFormatSymbols;

    if-nez v2, :cond_c

    move v2, v4

    .line 171
    goto :goto_5

    .line 173
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    move-object v1, v0

    .line 174
    .local v1, obj:Ljava/text/DecimalFormatSymbols;
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_84

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_84

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_84

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_84

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v3, v1, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v2, v3, :cond_84

    move v2, v5

    goto :goto_5

    :cond_84
    move v2, v4

    goto :goto_5
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .registers 2

    .prologue
    .line 254
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .registers 2

    .prologue
    .line 264
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparator()C
    .registers 2

    .prologue
    .line 273
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .registers 2

    .prologue
    .line 291
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMonetaryDecimalSeparator()C
    .registers 2

    .prologue
    .line 301
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .registers 2

    .prologue
    .line 320
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .registers 2

    .prologue
    .line 338
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .registers 2

    .prologue
    .line 329
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getZeroDigit()C
    .registers 2

    .prologue
    .line 347
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 360
    const/16 v0, 0x11

    .line 361
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/lit16 v0, v1, 0x20f

    .line 362
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int v0, v1, v2

    .line 363
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    .line 364
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    .line 365
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int v0, v1, v2

    .line 366
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int v0, v1, v2

    .line 367
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int v0, v1, v2

    .line 368
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int v0, v1, v2

    .line 369
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int v0, v1, v2

    .line 370
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 371
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 372
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 373
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 374
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 375
    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 3
    .parameter "currency"

    .prologue
    .line 391
    if-nez p1, :cond_8

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 394
    :cond_8
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne p1, v0, :cond_d

    .line 400
    :goto_c
    return-void

    .line 397
    :cond_d
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 398
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_c
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 440
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setDecimalSeparator(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 450
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 451
    return-void
.end method

.method public setDigit(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 460
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 461
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 560
    if-nez p1, :cond_8

    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 563
    :cond_8
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setGroupingSeparator(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 470
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 471
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 480
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 414
    if-nez p1, :cond_8

    .line 415
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 416
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 431
    :cond_7
    :goto_7
    return-void

    .line 420
    :cond_8
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 425
    :try_start_10
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 426
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_20} :catch_23

    .line 430
    :goto_20
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_7

    .line 427
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 428
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_20
.end method

.method public setMinusSign(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 490
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 491
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 501
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 502
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 511
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setPatternSeparator(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 522
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 523
    return-void
.end method

.method public setPerMill(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 542
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 543
    return-void
.end method

.method public setPercent(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 532
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 533
    return-void
.end method

.method public setZeroDigit(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 552
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 553
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",digit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exponentSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",groupingSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",intlCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minusSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",monetarySeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NaN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",patternSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",perMill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zeroDigit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
