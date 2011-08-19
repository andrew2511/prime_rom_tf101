.class public Lcom/asus/emailwidget/EmailWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "EmailWidget.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 13
    const-string v0, "EmailWidget"

    iput-object v0, p0, Lcom/asus/emailwidget/EmailWidget;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 48
    sget-boolean v0, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailWidget"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    sget-boolean v1, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailWidget"

    const-string v2, "onDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "com.asus.emailwidget"

    const-string v2, "com.asus.emailwidget.UpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 43
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    sget-boolean v0, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    sget-boolean v0, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 18
    sget-boolean v1, Lcom/asus/emailwidget/EmailWidget;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EmailWidget"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "com.asus.emailwidget"

    const-string v2, "com.asus.emailwidget.UpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 22
    return-void
.end method
