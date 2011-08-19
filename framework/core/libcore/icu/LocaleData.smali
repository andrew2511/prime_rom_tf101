.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public digit:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:C

.field public monetarySeparator:C

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:C

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 6
    .parameter "locale"

    .prologue
    .line 93
    if-nez p0, :cond_6

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 96
    :cond_6
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, localeName:Ljava/lang/String;
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 98
    :try_start_d
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/LocaleData;

    .line 99
    .local v0, localeData:Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1a

    .line 100
    monitor-exit v3

    move-object v3, v0

    .line 110
    :goto_19
    return-object v3

    .line 102
    :cond_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_2f

    .line 103
    invoke-static {p0}, Llibcore/icu/LocaleData;->makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 104
    .local v2, newLocaleData:Llibcore/icu/LocaleData;
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 105
    :try_start_22
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localeData:Llibcore/icu/LocaleData;
    check-cast v0, Llibcore/icu/LocaleData;

    .line 106
    .restart local v0       #localeData:Llibcore/icu/LocaleData;
    if-eqz v0, :cond_32

    .line 107
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3a

    move-object v3, v0

    goto :goto_19

    .line 102
    .end local v0           #localeData:Llibcore/icu/LocaleData;
    .end local v2           #newLocaleData:Llibcore/icu/LocaleData;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v4

    .line 109
    .restart local v0       #localeData:Llibcore/icu/LocaleData;
    .restart local v2       #newLocaleData:Llibcore/icu/LocaleData;
    :cond_32
    :try_start_32
    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v3

    move-object v3, v2

    goto :goto_19

    .line 111
    .end local v0           #localeData:Llibcore/icu/LocaleData;
    :catchall_3a
    move-exception v4

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 5
    .parameter "locale"

    .prologue
    .line 320
    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    .line 321
    .local v0, localeData:Llibcore/icu/LocaleData;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataImpl(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 322
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t initialize LocaleData for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 324
    :cond_28
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 330
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 332
    :cond_38
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 339
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const-string v2, "\\.[#,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 341
    :cond_48
    return-object v0
.end method

.method private static makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .registers 8
    .parameter "locale"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, variant:Ljava/lang/String;
    new-instance v2, Llibcore/icu/LocaleData;

    invoke-direct {v2}, Llibcore/icu/LocaleData;-><init>()V

    .line 120
    .local v2, result:Llibcore/icu/LocaleData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 121
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    .line 128
    :cond_25
    :goto_25
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    .line 129
    return-object v2

    .line 122
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 123
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_25

    .line 124
    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 125
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_25
.end method

.method private overrideWithDataFrom(Llibcore/icu/LocaleData;)V
    .registers 3
    .parameter "overrides"

    .prologue
    .line 175
    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 176
    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    .line 178
    :cond_8
    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 179
    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    .line 181
    :cond_10
    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 182
    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 184
    :cond_18
    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 185
    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    .line 187
    :cond_20
    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 188
    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .line 190
    :cond_28
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 191
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 193
    :cond_30
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 194
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 196
    :cond_38
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 197
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .line 199
    :cond_40
    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 200
    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .line 202
    :cond_48
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 203
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 205
    :cond_50
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 206
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 208
    :cond_58
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 209
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .line 211
    :cond_60
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 212
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    .line 214
    :cond_68
    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 215
    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    .line 217
    :cond_70
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 218
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    .line 220
    :cond_78
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 221
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 223
    :cond_80
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 224
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    .line 226
    :cond_88
    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 227
    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    .line 229
    :cond_90
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 230
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    .line 232
    :cond_98
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_a0

    .line 233
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 235
    :cond_a0
    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    if-eqz v0, :cond_a8

    .line 236
    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 238
    :cond_a8
    iget-char v0, p1, Llibcore/icu/LocaleData;->digit:C

    if-eqz v0, :cond_b0

    .line 239
    iget-char v0, p1, Llibcore/icu/LocaleData;->digit:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->digit:C

    .line 241
    :cond_b0
    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    if-eqz v0, :cond_b8

    .line 242
    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    .line 244
    :cond_b8
    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    if-eqz v0, :cond_c0

    .line 245
    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    .line 247
    :cond_c0
    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    if-eqz v0, :cond_c8

    .line 248
    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    .line 250
    :cond_c8
    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    if-eqz v0, :cond_d0

    .line 251
    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->percent:C

    .line 253
    :cond_d0
    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    if-eqz v0, :cond_d8

    .line 254
    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->perMill:C

    .line 256
    :cond_d8
    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    if-eqz v0, :cond_e0

    .line 257
    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    .line 259
    :cond_e0
    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    if-eqz v0, :cond_e8

    .line 260
    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->minusSign:C

    .line 262
    :cond_e8
    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    if-eqz v0, :cond_f0

    .line 263
    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    .line 265
    :cond_f0
    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    if-eqz v0, :cond_f8

    .line 266
    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    .line 268
    :cond_f8
    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    if-eqz v0, :cond_100

    .line 269
    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    .line 271
    :cond_100
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_108

    .line 272
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    .line 274
    :cond_108
    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_110

    .line 275
    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    .line 277
    :cond_110
    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v0, :cond_118

    .line 278
    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    .line 280
    :cond_118
    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    if-eqz v0, :cond_120

    .line 281
    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    .line 283
    :cond_120
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    if-eqz v0, :cond_128

    .line 284
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    .line 286
    :cond_128
    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    if-eqz v0, :cond_130

    .line 287
    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    .line 289
    :cond_130
    return-void
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .registers 3
    .parameter "style"

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_16

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :pswitch_9
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    .line 300
    :goto_b
    return-object v0

    .line 296
    :pswitch_c
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 298
    :pswitch_f
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 300
    :pswitch_12
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    goto :goto_b

    .line 292
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .registers 3
    .parameter "style"

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_16

    .line 316
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 308
    :pswitch_9
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    .line 314
    :goto_b
    return-object v0

    .line 310
    :pswitch_c
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 312
    :pswitch_f
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 314
    :pswitch_12
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    goto :goto_b

    .line 306
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleData[firstDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minimalDaysInFirstWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amPm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zeroDigit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "digit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->digit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groupingSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "patternSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->percent:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "perMill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->perMill:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monetarySeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minusSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->minusSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exponentSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NaN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internationalCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numberPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "integerPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencyPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percentPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
