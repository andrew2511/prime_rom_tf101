.class public Lcom/google/android/voicesearch/actions/NoteToSelfAction;
.super Lcom/google/android/voicesearch/actions/SendEmailAction;
.source "NoteToSelfAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/NoteToSelfAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "note_to_self"


# instance fields
.field private mAudioFileUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/voicesearch/actions/NoteToSelfAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/NoteToSelfAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/SendEmailAction;Landroid/net/Uri;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v2, 0x6

    const-string v0, "to"

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/actions/ContactsValue;

    const-string v0, "cc"

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v4

    check-cast v4, Lcom/google/android/voicesearch/actions/ContactsValue;

    const-string v0, "bcc"

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v5

    check-cast v5, Lcom/google/android/voicesearch/actions/ContactsValue;

    const-string v0, "subject"

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v6

    check-cast v6, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v7

    check-cast v7, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v8, "note_to_self"

    move-object v0, p0

    move-object v1, p1

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Ljava/lang/String;Z)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    .line 64
    sget-object v0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->sAttachmentSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    .line 67
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/os/Parcel;)V

    .line 47
    iput-object v1, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    .line 73
    return-void

    .line 72
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/NoteToSelfAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f020019

    return v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 5
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
    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAccount:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 122
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_5

    .line 123
    :cond_1
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAccount:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_0
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->getActionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->sAttachmentSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAccount:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 137
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    :cond_4
    return-object v0

    .line 125
    :cond_5
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 126
    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    array-length v1, v1

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAccount:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 128
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->sAttachmentSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "audio/amr"

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getIntentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f02001a

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->buildListTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f02001b

    return v0
.end method

.method public getSlotToReceiveAccountSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "to"

    return-object v0
.end method

.method protected toIsPrimarySlot()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/NoteToSelfAction;->mAudioFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
