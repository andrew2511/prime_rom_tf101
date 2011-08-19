.class Lcom/android/providers/media/MtpService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/providers/media/MtpService$SettingsObserver;->this$0:Lcom/android/providers/media/MtpService;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MtpService$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MtpService$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "use_ptp_interface"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/providers/media/MtpService$SettingsObserver;->onChange(Z)V

    .line 55
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/providers/media/MtpService$SettingsObserver;->this$0:Lcom/android/providers/media/MtpService;

    iget-object v1, p0, Lcom/android/providers/media/MtpService$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "use_ptp_interface"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/providers/media/MtpService;->access$002(Lcom/android/providers/media/MtpService;Z)Z

    .line 61
    return-void

    :cond_0
    move v1, v3

    .line 59
    goto :goto_0
.end method
