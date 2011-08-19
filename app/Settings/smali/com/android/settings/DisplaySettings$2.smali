.class Lcom/android/settings/DisplaySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 214
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, dockState:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 217
    .local v1, enable:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    return-void

    .end local v1           #enable:Z
    :cond_0
    move v1, v3

    .line 216
    goto :goto_0
.end method
