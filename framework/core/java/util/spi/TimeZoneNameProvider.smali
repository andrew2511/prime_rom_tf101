.class public abstract Ljava/util/spi/TimeZoneNameProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "TimeZoneNameProvider.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getDisplayName(Ljava/lang/String;ZILjava/util/Locale;)Ljava/lang/String;
.end method
