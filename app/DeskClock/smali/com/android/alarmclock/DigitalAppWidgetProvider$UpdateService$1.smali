.class Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService$1;->this$0:Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.appwidget.action.APPWIDGET_TEXT_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService$1;->this$0:Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;

    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->access$000(Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;)V

    .line 181
    :cond_1
    return-void
.end method
