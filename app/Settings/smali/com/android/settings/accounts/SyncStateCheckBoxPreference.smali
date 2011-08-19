.class public Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 54
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 55
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 56
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 47
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 48
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 49
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v10, 0x8

    const/4 v12, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 62
    const v8, 0x1010005

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 63
    .local v5, syncActiveView:Landroid/widget/ImageView;
    const v8, 0x1010006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 64
    .local v7, syncPendingView:Landroid/view/View;
    const v8, 0x1010004

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 66
    .local v6, syncFailedView:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_0

    move v8, v12

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 70
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v8, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_1

    .line 71
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference$1;-><init>(Lcom/android/settings/accounts/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, showPending:Z
    const/4 v2, 0x0

    .line 89
    .local v2, showError:Z
    :goto_1
    if-eqz v2, :cond_3

    move v8, v12

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 90
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v8, :cond_4

    move v8, v12

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 92
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v8, :cond_5

    .line 94
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 102
    .local v4, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080557

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v4           #summary:Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_0
    move v8, v10

    .line 66
    goto :goto_0

    .line 79
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 80
    iget-boolean v8, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v8, :cond_2

    .line 81
    const/4 v3, 0x1

    .line 82
    .restart local v3       #showPending:Z
    const/4 v2, 0x0

    .restart local v2       #showError:Z
    goto :goto_1

    .line 84
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_2
    const/4 v3, 0x0

    .line 85
    .restart local v3       #showPending:Z
    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .restart local v2       #showError:Z
    goto :goto_1

    :cond_3
    move v8, v10

    .line 89
    goto :goto_2

    :cond_4
    move v8, v10

    .line 90
    goto :goto_3

    .line 104
    .restart local v1       #checkBox:Landroid/view/View;
    :cond_5
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 157
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 115
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 133
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 141
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 124
    return-void
.end method
