.class Lcom/android/deskclock/SetAlarm$1;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$1;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 81
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 83
    .local v1, val:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$1;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v2}, Lcom/android/deskclock/SetAlarm;->access$000(Lcom/android/deskclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$1;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v2, p1, p2}, Lcom/android/deskclock/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v2

    .line 89
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
