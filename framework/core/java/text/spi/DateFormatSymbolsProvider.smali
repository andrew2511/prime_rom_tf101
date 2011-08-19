.class public abstract Ljava/text/spi/DateFormatSymbolsProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DateFormatSymbolsProvider.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
.end method
