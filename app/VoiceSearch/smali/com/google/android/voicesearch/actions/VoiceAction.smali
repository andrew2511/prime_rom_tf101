.class public abstract Lcom/google/android/voicesearch/actions/VoiceAction;
.super Ljava/lang/Object;
.source "VoiceAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_RESULT_SOUND:I = 0x7f060006

.field private static final SUFFIX_SUBMIT:Ljava/lang/String; = "_submit"

.field private static final TAG:Ljava/lang/String; = "VoiceAction"


# instance fields
.field protected final mActionString:Ljava/lang/String;

.field protected final mCountdownNeeded:Z

.field protected final mEditorNeeded:Z

.field protected final mIntentAction:Ljava/lang/String;

.field protected final mPrefix:Ljava/lang/String;

.field protected final mShowDisambig:Z

.field protected final mSubmitString:Ljava/lang/String;

.field protected final mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    .line 84
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    .line 86
    iput-boolean p5, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    .line 87
    iput-boolean p6, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    .line 88
    iput-boolean p7, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->createActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mActionString:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->createSubmitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mSubmitString:Ljava/lang/String;

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mActionString:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mSubmitString:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v0, v2

    .line 102
    goto :goto_1

    :cond_2
    move v0, v2

    .line 103
    goto :goto_2
.end method

.method private getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentData(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentType()Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    :cond_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected createActionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 536
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v1, "_action_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 540
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected createSubmitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_submit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 553
    const/4 v1, 0x0

    .line 554
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    if-nez v0, :cond_0

    const v0, 0x7f090724

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getActionLoggingString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCountdownIcon()I
.end method

.method public getFirstTimeUseDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntentData(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method protected getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentFlags()I
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldWaitForActivityResult()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const/high16 v1, 0x1400

    or-int/2addr v0, v1

    .line 384
    :cond_0
    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getListIcon()I
.end method

.method public getListSubtitle()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitleHtml()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public getListSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListTitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getQsbIcon()I
.end method

.method public getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIcon()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/util/ResourceUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitleHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundId()I
    .locals 1

    .prologue
    .line 476
    const v0, 0x7f060006

    return v0
.end method

.method public getSubmitString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mSubmitString:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    return v0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 438
    const v0, 0x7f09076e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCountdownNeeded()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    return v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    return v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getBasicIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    return-void
.end method

.method public setForwardApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    return-void
.end method

.method public shouldAddShortcut()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDisambig()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    return v0
.end method

.method public shouldWaitForActivityResult()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public shouldWatchForQuickReturns()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mActionString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mSubmitString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mCountdownNeeded:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mEditorNeeded:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actions/VoiceAction;->mShowDisambig:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_1

    :cond_2
    move v0, v1

    .line 114
    goto :goto_2
.end method
