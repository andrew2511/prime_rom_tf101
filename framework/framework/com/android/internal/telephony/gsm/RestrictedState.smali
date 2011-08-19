.class public Lcom/android/internal/telephony/gsm/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private mCsEmergencyRestricted:Z

.field private mCsNormalRestricted:Z

.field private mPsRestricted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_9

    .line 98
    .local v2, s:Lcom/android/internal/telephony/gsm/RestrictedState;
    if-nez p1, :cond_c

    move v3, v5

    .line 102
    .end local v2           #s:Lcom/android/internal/telephony/gsm/RestrictedState;
    :goto_8
    return v3

    .line 94
    :catch_9
    move-exception v1

    .local v1, ex:Ljava/lang/ClassCastException;
    move v3, v5

    .line 95
    goto :goto_8

    .line 102
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Lcom/android/internal/telephony/gsm/RestrictedState;
    :cond_c
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    iget-boolean v4, v2, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-ne v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_8

    :cond_20
    move v3, v5

    goto :goto_8
.end method

.method public isCsEmergencyRestricted()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    return v0
.end method

.method public isCsNormalRestricted()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    return v0
.end method

.method public isCsRestricted()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPsRestricted()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    return v0
.end method

.method public setCsEmergencyRestricted(Z)V
    .registers 2
    .parameter "csEmergencyRestricted"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    .line 47
    return-void
.end method

.method public setCsNormalRestricted(Z)V
    .registers 2
    .parameter "csNormalRestricted"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    .line 61
    return-void
.end method

.method public setPsRestricted(Z)V
    .registers 2
    .parameter "psRestricted"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    const-string v0, "none"

    .line 111
    .local v0, csString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_2c

    .line 112
    const-string v0, "all"

    .line 119
    :cond_c
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restricted State CS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-nez v1, :cond_37

    .line 114
    const-string v0, "emergency"

    goto :goto_c

    .line 115
    :cond_37
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsEmergencyRestricted:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_c

    .line 116
    const-string v0, "normal call"

    goto :goto_c
.end method
