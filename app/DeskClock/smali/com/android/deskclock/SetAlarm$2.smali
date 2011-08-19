.class Lcom/android/deskclock/SetAlarm$2;
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
    .line 94
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$100(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$200(Lcom/android/deskclock/SetAlarm;)I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v2}, Lcom/android/deskclock/SetAlarm;->access$300(Lcom/android/deskclock/SetAlarm;)I

    move-result v2

    iget-object v3, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v3}, Lcom/android/deskclock/SetAlarm;->access$400(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/RepeatPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$2;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
