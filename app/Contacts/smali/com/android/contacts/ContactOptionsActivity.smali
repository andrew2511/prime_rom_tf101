.class public Lcom/android/contacts/ContactOptionsActivity;
.super Landroid/app/Activity;
.source "ContactOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AGGREGATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCustomRingtone:Ljava/lang/String;

.field private mLookupUri:Landroid/net/Uri;

.field private mRingtoneTitle:Landroid/widget/TextView;

.field private mSendToVoicemail:Z

.field private mSendToVoicemailCheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactOptionsActivity;->AGGREGATES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    const/16 v2, 0xbcf

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/ContactOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void

    .line 136
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private doToggleSendToVoicemail()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemailCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 173
    iget-object v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemailCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemail:Z

    .line 174
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->saveData()V

    .line 175
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->updateView()V

    .line 176
    return-void
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 1
    .parameter "pickedUri"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    .line 167
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->saveData()V

    .line 168
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->updateView()V

    .line 169
    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadData()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/ContactOptionsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactOptionsActivity;->mLookupUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactOptionsActivity;->AGGREGATES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 192
    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemail:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 192
    goto :goto_0

    :cond_1
    move v0, v7

    .line 187
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private saveData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 197
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "send_to_voicemail"

    iget-boolean v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/ContactOptionsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mRingtoneTitle:Landroid/widget/TextView;

    const v3, 0x7f0c004e

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemailCheckbox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemail:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    :goto_1
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 98
    .local v0, ringtone:Landroid/media/Ringtone;
    if-nez v0, :cond_1

    .line 99
    const-string v2, "ContactOptionsActivity"

    const-string v3, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactOptionsActivity;->mRingtoneTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 148
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 155
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactOptionsActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0xbcf
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->doPickRingtone()V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->doToggleSendToVoicemail()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f07004e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f070029

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/ContactOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/ContactOptionsActivity;->mLookupUri:Landroid/net/Uri;

    .line 63
    const v3, 0x7f040010

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->setContentView(I)V

    .line 65
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, ringtoneLayout:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 67
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, label:Landroid/widget/TextView;
    const v3, 0x7f0c003f

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v3, 0x7f070002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/contacts/ContactOptionsActivity;->mRingtoneTitle:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, sendToVoicemailLayout:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #label:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .restart local v0       #label:Landroid/widget/TextView;
    const v3, 0x7f0c008d

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/contacts/ContactOptionsActivity;->mSendToVoicemailCheckbox:Landroid/widget/CheckBox;

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->loadData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/ContactOptionsActivity;->finish()V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ContactOptionsActivity;->updateView()V

    .line 90
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 205
    if-eqz p4, :cond_0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
