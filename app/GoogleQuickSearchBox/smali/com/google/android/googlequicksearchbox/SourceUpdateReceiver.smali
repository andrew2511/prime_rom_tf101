.class public Lcom/google/android/googlequicksearchbox/SourceUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateSources(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->updateSources()V

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SourceUpdateReceiver;->updateSources(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->updateSearchWidgets(Landroid/content/Context;)V

    .line 42
    :cond_1
    return-void
.end method
