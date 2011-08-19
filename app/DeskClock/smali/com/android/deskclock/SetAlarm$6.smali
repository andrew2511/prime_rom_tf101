.class Lcom/android/deskclock/SetAlarm$6;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;

.field final synthetic val$p:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    iput-object p2, p0, Lcom/android/deskclock/SetAlarm$6;->val$p:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$6;->val$p:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$100(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$100(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm$6;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v0}, Lcom/android/deskclock/SetAlarm;->access$1000(Lcom/android/deskclock/SetAlarm;)J

    .line 189
    return-void
.end method
