.class public Lcom/google/android/voicesearch/actions/SendSmsAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SendSmsAction.java"


# static fields
.field public static final ACTION_AUTO_SEND:Ljava/lang/String; = "com.google.android.apps.googlevoice.action.AUTO_SEND"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SendSmsAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SMS_LENGTH:I = 0x1b8

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "send_sms"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/voicesearch/actions/SendSmsAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SendSmsAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendSmsAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 56
    const/16 v2, 0xe

    const-string v3, "com.google.android.apps.googlevoice.action.AUTO_SEND"

    const-string v4, "send_sms"

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v1, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    new-instance v1, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v2, "to"

    move v4, v8

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendSmsAction;->addPrimarySlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 70
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v1, "message"

    const/4 v3, 0x3

    const/16 v6, 0x1b8

    move-object v2, v7

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->addPrimarySlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 73
    const-string v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/actions/SendSmsAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 74
    const-string v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/voicesearch/actions/SendSmsAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/SendSmsAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SendSmsAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private buildListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "to"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 135
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->buildListTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f02001f

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 115
    const-string v0, "to"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "smsto"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
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
    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 129
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f020020

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->buildListTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f020021

    return v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "android.intent.action.SENDTO"

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->isTelephoneCapable()Z

    move-result v0

    return v0
.end method

.method public shouldWaitForActivityResult()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
