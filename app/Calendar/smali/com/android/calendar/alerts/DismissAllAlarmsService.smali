.class public Lcom/android/calendar/alerts/DismissAllAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAllAlarmsService.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "DismissAllAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 48
    sget-object v2, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "state=1"

    .line 50
    .local v1, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/alerts/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v3, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/calendar/alerts/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/alerts/DismissAllAlarmsService;->stopSelf()V

    .line 58
    return-void
.end method
