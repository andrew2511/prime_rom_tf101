.class public Lcom/android/email/provider/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/WidgetProvider$WidgetService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 39
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "EmailWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 43
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 48
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "EmailWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 57
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 58
    const-string v5, "appWidgetIds"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 59
    .local v1, appWidgetIds:[I
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 60
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidgets(Landroid/content/Context;[I)V

    .line 72
    .end local v1           #appWidgetIds:[I
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    const-string v5, "appWidgetId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const-string v5, "appWidgetId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, widgetId:I
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v3

    .line 67
    .local v3, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v3}, Lcom/android/email/widget/EmailWidget;->onDeleted()V

    goto :goto_0
.end method
