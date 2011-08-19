.class public final Llibcore/icu/TimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZones$CachedTimeZones;
    }
.end annotation


# static fields
.field private static final availableTimeZones:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Llibcore/icu/TimeZones;->createZoneStringsFor(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 148
    array-length v2, p0

    new-array v1, v2, [[Ljava/lang/String;

    .line 149
    .local v1, result:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 150
    aget-object v2, p0, v0

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 152
    :cond_14
    return-object v1
.end method

.method private static createZoneStringsFor(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 10
    .parameter "locale"

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 98
    .local v7, start:J
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 99
    .local v0, arrayToFill:[[Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v1, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v0, v2

    .line 100
    const/4 v1, 0x1

    sget-object v2, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 101
    const/4 v1, 0x2

    sget-object v2, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 102
    const/4 v1, 0x3

    sget-object v2, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 103
    const/4 v1, 0x4

    sget-object v2, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 106
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/TimeZones;->getZoneStringsImpl([[Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v2, internTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x5

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    .line 112
    .local v6, result:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4f
    sget-object v3, Llibcore/icu/TimeZones;->availableTimeZones:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7c

    .line 113
    aget-object v3, v6, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    .line 114
    const/4 v3, 0x1

    .local v3, j:I
    :goto_5f
    const/4 v4, 0x4

    if-gt v3, v4, :cond_79

    .line 115
    aget-object v4, v0, v3

    aget-object v5, v4, v1

    .line 116
    .local v5, original:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, nonDuplicate:Ljava/lang/String;
    if-nez v4, :cond_72

    .line 118
    invoke-virtual {v2, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object v4, v5

    .line 121
    :cond_72
    aget-object v5, v6, v1

    .end local v5           #original:Ljava/lang/String;
    aput-object v4, v5, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 112
    .end local v4           #nonDuplicate:Ljava/lang/String;
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 125
    .end local v3           #j:I
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0           #arrayToFill:[[Ljava/lang/String;
    sub-long/2addr v0, v7

    .line 126
    .end local v1           #i:I
    .local v0, duration:J
    sget-object v2, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .end local v2           #internTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded time zone names for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v3, " in "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms."

    .end local v0           #duration:J
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    return-object v6
.end method

.method private static native forCountryCode(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static forLocale(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/TimeZones;->forCountryCode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .parameter "daylight"
    .parameter "style"
    .parameter "locale"

    .prologue
    .line 38
    invoke-static {}, Llibcore/icu/TimeZones$CachedTimeZones;->access$000()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 39
    invoke-static {}, Llibcore/icu/TimeZones$CachedTimeZones;->access$100()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Llibcore/icu/TimeZones;->lookupDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_16

    move-object v1, v0

    .line 44
    .end local v0           #result:Ljava/lang/String;
    :goto_15
    return-object v1

    :cond_16
    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Llibcore/icu/TimeZones;->getDisplayNameImpl(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method private static native getDisplayNameImpl(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
.end method

.method public static getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 135
    if-nez p0, :cond_6

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 140
    :cond_6
    invoke-static {}, Llibcore/icu/TimeZones$CachedTimeZones;->access$000()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 141
    invoke-static {}, Llibcore/icu/TimeZones$CachedTimeZones;->access$100()[[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/TimeZones;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_18
    return-object v0

    :cond_19
    invoke-static {p0}, Llibcore/icu/TimeZones;->createZoneStringsFor(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private static native getZoneStringsImpl([[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static lookupDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 10
    .parameter "zoneStrings"
    .parameter "id"
    .parameter "daylight"
    .parameter "style"

    .prologue
    const/4 v5, 0x1

    .line 48
    move-object v0, p0

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_29

    aget-object v3, v0, v1

    .line 49
    .local v3, row:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 50
    if-eqz p2, :cond_1d

    .line 51
    if-ne p3, v5, :cond_19

    const/4 v4, 0x3

    aget-object v4, v3, v4

    .line 57
    .end local v3           #row:[Ljava/lang/String;
    :goto_18
    return-object v4

    .line 51
    .restart local v3       #row:[Ljava/lang/String;
    :cond_19
    const/4 v4, 0x4

    aget-object v4, v3, v4

    goto :goto_18

    .line 53
    :cond_1d
    if-ne p3, v5, :cond_22

    aget-object v4, v3, v5

    goto :goto_18

    :cond_22
    const/4 v4, 0x2

    aget-object v4, v3, v4

    goto :goto_18

    .line 48
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 57
    .end local v3           #row:[Ljava/lang/String;
    :cond_29
    const/4 v4, 0x0

    goto :goto_18
.end method
