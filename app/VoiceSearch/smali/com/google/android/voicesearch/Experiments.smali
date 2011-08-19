.class public Lcom/google/android/voicesearch/Experiments;
.super Ljava/lang/Object;
.source "Experiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/Experiments$HelpBubble;
    }
.end annotation


# static fields
.field public static final PREF_KEY_EXPERIMENT_HASH:Ljava/lang/String; = "experimentHash"

.field public static final UNINITIALIZED_HASH:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getExperimentHash(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 39
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    const-string v1, "experimentHash"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasExperimentHash(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/voicesearch/Experiments;->getExperimentHash(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExperimentParameters(Landroid/content/Context;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasShowHintOnHelp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getShowHintOnHelp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->setParticipation(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method

.method public static updateExperimentHash(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "experimentHash"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 53
    return-void
.end method
