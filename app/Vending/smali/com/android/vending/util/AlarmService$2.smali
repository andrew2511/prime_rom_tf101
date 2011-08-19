.class final Lcom/android/vending/util/AlarmService$2;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/AlarmService;->rescheduleMarketAlarm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/vending/util/AlarmService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 207
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ALARM_EXPIRATION_TIMEOUT_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 211
    .local v0, expirationTimeout:J
    sget-object v6, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_TIMEOUT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 212
    .local v2, interval:J
    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    .line 216
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ALARM_MAX_TIMEOUT_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 224
    .local v4, maxInterval:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 225
    move-wide v2, v4

    .line 227
    :cond_1
    iget-object v6, p0, Lcom/android/vending/util/AlarmService$2;->val$context:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lcom/android/vending/util/AlarmService;->setMarketAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method
