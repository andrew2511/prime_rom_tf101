.class public abstract Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
.super Ljava/lang/Object;
.source "WirelessStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/WirelessStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 52
    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 53
    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 59
    iput-boolean v0, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public getIntendedState()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 157
    iget-boolean v0, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 173
    goto :goto_0

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 108
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 128
    iget-boolean v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "WirelessStateTracker"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "WirelessStateTracker"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 140
    :cond_1
    return-void

    .line 110
    :pswitch_0
    iput-boolean v3, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 114
    :pswitch_1
    iput-boolean v3, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 115
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 118
    :pswitch_2
    iput-boolean v4, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 122
    :pswitch_3
    iput-boolean v4, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 123
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 134
    iput-boolean v4, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 135
    iget-object v1, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 68
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 69
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 83
    iget-boolean v2, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    .line 88
    iput-boolean v3, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 93
    :goto_1
    return-void

    .line 71
    :pswitch_1
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v2, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    .line 90
    :cond_2
    iput-boolean v3, p0, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->mInTransition:Z

    .line 91
    invoke-virtual {p0, p1, v1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
