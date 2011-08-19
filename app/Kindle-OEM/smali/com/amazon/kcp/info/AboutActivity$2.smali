.class Lcom/amazon/kcp/info/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/AboutActivity;

.field final synthetic val$library:Landroid/gesture/GestureLibrary;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/AboutActivity;Landroid/gesture/GestureLibrary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$2;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    iput-object p2, p0, Lcom/amazon/kcp/info/AboutActivity$2;->val$library:Landroid/gesture/GestureLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 8
    .parameter "overlay"
    .parameter "gesture"

    .prologue
    const/4 v7, 0x0

    .line 70
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity$2;->val$library:Landroid/gesture/GestureLibrary;

    invoke-virtual {v3, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, predictions:Ljava/util/List;,"Ljava/util/List<Landroid/gesture/Prediction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Prediction;

    iget-wide v3, v3, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 73
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Prediction;

    iget-object v0, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 74
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity$2;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/AboutActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    .line 76
    .local v1, colorMode:I
    const-string v3, "w"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x3

    .line 115
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity$2;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/AboutActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/application/SettingsController;->setColorMode(I)V

    .line 117
    iget-object v3, p0, Lcom/amazon/kcp/info/AboutActivity$2;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    const v4, 0x7f0b0155

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "AboutActivity"

    const-string v5, "ColorModeEasterEgg"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #colorMode:I
    :cond_1
    return-void

    .line 81
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #colorMode:I
    :cond_2
    const-string v3, "usa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    const/4 v1, 0x6

    goto :goto_0

    .line 86
    :cond_3
    const-string v3, "n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    const/4 v1, 0x5

    goto :goto_0

    .line 91
    :cond_4
    const-string v3, "t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const/4 v1, 0x4

    goto :goto_0

    .line 96
    :cond_5
    const-string v3, "v"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    const/4 v1, 0x7

    goto :goto_0

    .line 101
    :cond_6
    const-string v3, "halloween"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 103
    const/16 v1, 0x9

    goto :goto_0

    .line 106
    :cond_7
    const-string v3, "christmas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 108
    const/16 v1, 0xa

    goto :goto_0

    .line 110
    :cond_8
    const-string v3, "illinois"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/16 v1, 0xb

    goto :goto_0
.end method
