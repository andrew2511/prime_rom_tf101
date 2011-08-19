.class public Lcom/google/android/music/MediaAppWidgetProvider$UpdateService;
.super Landroid/app/IntentService;
.source "MediaAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "WidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 80
    const-string v1, "appWidgetIds"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 81
    .local v0, appWidgetIds:[I
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->getInstance()Lcom/google/android/music/MediaAppWidgetProvider;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->access$000(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[I)V

    .line 82
    return-void
.end method
