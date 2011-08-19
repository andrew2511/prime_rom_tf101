.class Ljava/util/Formatter$CachedDecimalFormat;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDecimalFormat"
.end annotation


# instance fields
.field public currentLocaleData:Llibcore/icu/LocaleData;

.field public currentPattern:Ljava/lang/String;

.field public decimalFormat:Llibcore/icu/NativeDecimalFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    return-void
.end method


# virtual methods
.method public update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .registers 6
    .parameter "localeData"
    .parameter "pattern"

    .prologue
    .line 569
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    if-nez v0, :cond_13

    .line 570
    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    .line 571
    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    .line 572
    new-instance v0, Llibcore/icu/NativeDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V

    iput-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    .line 574
    :cond_13
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 575
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p2}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 576
    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    .line 578
    :cond_22
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    if-eq p1, v0, :cond_2d

    .line 579
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V

    .line 580
    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    .line 582
    :cond_2d
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    return-object v0
.end method
