.class Llibcore/icu/TimeZones$CachedTimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedTimeZones"
.end annotation


# static fields
.field private static final locale:Ljava/util/Locale;

.field private static final names:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZones$CachedTimeZones;->locale:Ljava/util/Locale;

    .line 75
    sget-object v0, Llibcore/icu/TimeZones$CachedTimeZones;->locale:Ljava/util/Locale;

    #calls: Llibcore/icu/TimeZones;->createZoneStringsFor(Ljava/util/Locale;)[[Ljava/lang/String;
    invoke-static {v0}, Llibcore/icu/TimeZones;->access$200(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZones$CachedTimeZones;->names:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Locale;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Llibcore/icu/TimeZones$CachedTimeZones;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$100()[[Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Llibcore/icu/TimeZones$CachedTimeZones;->names:[[Ljava/lang/String;

    return-object v0
.end method
