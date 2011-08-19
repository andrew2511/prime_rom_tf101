.class public final Lcom/google/android/youtube/core/player/WarningHelper;
.super Ljava/lang/Object;
.source "WarningHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/WarningHelper$Listener;
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final listener:Lcom/google/android/youtube/core/player/WarningHelper$Listener;

.field private warningShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/WarningHelper$Listener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "pref"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "context may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "message may not be null"

    invoke-static {p4, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "pref may not be null"

    invoke-static {p3, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "youtube"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "listener may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/WarningHelper;->listener:Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    .line 45
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/WarningHelper;->warningShown:Z

    .line 46
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/youtube/core/player/WarningHelper$2;

    invoke-direct {v3, p0, v0, p3}, Lcom/google/android/youtube/core/player/WarningHelper$2;-><init>(Lcom/google/android/youtube/core/player/WarningHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/google/android/youtube/core/player/WarningHelper$1;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/WarningHelper$1;-><init>(Lcom/google/android/youtube/core/player/WarningHelper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/WarningHelper;->dialog:Landroid/app/AlertDialog;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/WarningHelper;)Lcom/google/android/youtube/core/player/WarningHelper$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper;->listener:Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/core/player/WarningHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/WarningHelper;->warningShown:Z

    return p1
.end method


# virtual methods
.method public maybeShowWarning()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/WarningHelper;->warningShown:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper;->listener:Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/WarningHelper$Listener;->onWarningAccepted(Lcom/google/android/youtube/core/player/WarningHelper;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
