.class Lcom/google/android/youtube/core/player/WarningHelper$2;
.super Ljava/lang/Object;
.source "WarningHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/WarningHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/WarningHelper$Listener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/WarningHelper;

.field final synthetic val$pref:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/WarningHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->val$pref:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->val$pref:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/WarningHelper;->access$102(Lcom/google/android/youtube/core/player/WarningHelper;Z)Z

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/WarningHelper;->access$000(Lcom/google/android/youtube/core/player/WarningHelper;)Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/WarningHelper$2;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/WarningHelper$Listener;->onWarningAccepted(Lcom/google/android/youtube/core/player/WarningHelper;)V

    .line 55
    return-void
.end method
