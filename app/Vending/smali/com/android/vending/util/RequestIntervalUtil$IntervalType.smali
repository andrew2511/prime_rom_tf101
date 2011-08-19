.class public final enum Lcom/android/vending/util/RequestIntervalUtil$IntervalType;
.super Ljava/lang/Enum;
.source "RequestIntervalUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/RequestIntervalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntervalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/util/RequestIntervalUtil$IntervalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

.field public static final enum DOWNLOADING_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

.field public static final enum PENDING_DOWNLOADS_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

.field public static final enum PROMO_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

.field public static final enum PROVISIONING_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;


# instance fields
.field private final mGservicesKey:Lcom/android/vending/util/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    const-string v1, "DOWNLOADING_KICK"

    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_DOWNLOADING_KICK_TIMEOUT_MS:Lcom/android/vending/util/GservicesValue;

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;-><init>(Ljava/lang/String;ILcom/android/vending/util/PreferenceFile$SharedPreference;Lcom/android/vending/util/GservicesValue;)V

    sput-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->DOWNLOADING_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    .line 28
    new-instance v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    const-string v1, "PENDING_DOWNLOADS_KICK"

    sget-object v2, Lcom/android/vending/util/VendingPreferences;->LAST_PENDING_DOWNLOAD_KICK:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    sget-object v3, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_PENDING_DOWNLOAD_RESEND_FREQUENCY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;-><init>(Ljava/lang/String;ILcom/android/vending/util/PreferenceFile$SharedPreference;Lcom/android/vending/util/GservicesValue;)V

    sput-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PENDING_DOWNLOADS_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    .line 30
    new-instance v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    const-string v1, "PROMO_REFRESH"

    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_PROMO_REFRESH_FREQUENCY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;-><init>(Ljava/lang/String;ILcom/android/vending/util/PreferenceFile$SharedPreference;Lcom/android/vending/util/GservicesValue;)V

    sput-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROMO_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    .line 31
    new-instance v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    const-string v1, "PROVISIONING_REFRESH"

    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_CARRIER_PROVISIONING_REFRESH_FREQUENCY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;-><init>(Ljava/lang/String;ILcom/android/vending/util/PreferenceFile$SharedPreference;Lcom/android/vending/util/GservicesValue;)V

    sput-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROVISIONING_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    sget-object v1, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->DOWNLOADING_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PENDING_DOWNLOADS_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROMO_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROVISIONING_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->$VALUES:[Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/vending/util/PreferenceFile$SharedPreference;Lcom/android/vending/util/GservicesValue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/util/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, preference:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<Ljava/lang/Long;>;"
    .local p4, gservicesKey:Lcom/android/vending/util/GservicesValue;,"Lcom/android/vending/util/GservicesValue<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    .line 39
    iput-object p4, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mGservicesKey:Lcom/android/vending/util/GservicesValue;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/util/RequestIntervalUtil$IntervalType;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/util/RequestIntervalUtil$IntervalType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->$VALUES:[Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-virtual {v0}, [Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    return-object v0
.end method


# virtual methods
.method public getGservicesKey()Lcom/android/vending/util/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mGservicesKey:Lcom/android/vending/util/GservicesValue;

    return-object v0
.end method

.method public getLastRequestTimestamp()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .end local p0
    :goto_0
    return-wide v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public updateLastRequestTimestamp()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->mPreference:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method
