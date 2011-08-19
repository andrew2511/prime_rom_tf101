.class public final Lcom/android/contacts/preference/ContactsPreferences;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 39
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 40
    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 45
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/preference/ContactsPreferences;)Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 100
    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_1
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 66
    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_1
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/preference/ContactsPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 118
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 124
    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 125
    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 127
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2
    .parameter "displayOrder"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 113
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "sortOrder"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 79
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 141
    :cond_0
    return-void
.end method
