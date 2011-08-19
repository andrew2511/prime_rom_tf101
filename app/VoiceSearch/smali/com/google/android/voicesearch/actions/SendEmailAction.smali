.class public Lcom/google/android/voicesearch/actions/SendEmailAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SendEmailAction.java"


# static fields
.field private static final ACTION_AUTO_SEND:Ljava/lang/String; = "com.google.android.gm.action.AUTO_SEND"

.field private static final AUTO_SEND_GMAIL_MIN_VERSION:I = 0x84

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SendEmailAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.google.android.gm.extra.ACCOUNT"

.field private static final EXTRA_ACCOUNT_OLD:Ljava/lang/String; = "account"

.field private static final GMAIL_AUTO_SEND_ACTIVITY:Ljava/lang/String; = "com.google.android.gm.AutoSendActivity"

.field private static final GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName; = null

.field private static final GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName; = null

.field private static final GMAIL_NON_AUTO_SEND_ACTIVITY:Ljava/lang/String; = "com.google.android.gm.ComposeActivityGmail"

.field protected static final GMAIL_PACKAGE:Ljava/lang/String; = "com.google.android.gm"

.field private static final PLAIN_TEXT_INTENT_TYPE:Ljava/lang/String; = "text/plain"

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "send_email"

.field private static final TAG:Ljava/lang/String; = "SendEmailAction"

.field protected static sAttachmentSupported:Ljava/lang/Boolean;

.field protected static sAutoSend:Ljava/lang/Boolean;

.field protected static sGmailInstalled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ComposeActivityGmail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.AutoSendActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName;

    .line 160
    new-instance v0, Lcom/google/android/voicesearch/actions/SendEmailAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SendEmailAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Ljava/lang/String;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v6, "com.google.android.gm.action.AUTO_SEND"

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p8

    move/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 107
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v9

    .line 108
    invoke-interface {v9}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v4, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    const-string v4, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-static {p1, v3, v4, v6, v7}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 115
    const-string v4, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "subject"

    invoke-static {p1, v3, v4, v6, v7}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 117
    const-string v4, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cc"

    invoke-static {p1, v3, v4, v6, v7}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 119
    const-string v4, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bcc"

    invoke-static {p1, v3, v4, v6, v7}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 122
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->toIsPrimarySlot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "to"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addPrimarySlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 130
    :goto_0
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "message"

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addPrimarySlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 133
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "subject"

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addAdditionalSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 135
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "cc"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addAdditionalSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 137
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "bcc"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v5, v13

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addAdditionalSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 140
    const-string v3, "to"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 141
    const-string v3, "cc"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 142
    const-string v3, "bcc"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 143
    const-string v3, "subject"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 144
    const-string v3, "message"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 146
    invoke-interface {v9}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v3

    .line 147
    invoke-static {v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 148
    return-void

    .line 126
    :cond_0
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "to"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addAdditionalSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const-string v8, "send_email"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const/16 v2, 0xd

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    .line 153
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 158
    return-void
.end method

.method private buildListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const-string v0, "to"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 317
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 319
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->buildListTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static determineAutoSend(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 297
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0

    .line 305
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0

    .line 312
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsActivity(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    .line 292
    const-string v0, "com.google.android.gm"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->getInstalledPackageVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x84

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f02000c

    return v0
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
    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccountsBlocking(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 200
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    .line 203
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    .line 213
    :goto_0
    return-object v0

    .line 210
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "com.google.android.gm.action.AUTO_SEND"

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "android.intent.action.SEND"

    goto :goto_0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0

    .line 227
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mailto"

    const-string v1, ""

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 6
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
    .line 253
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "com.google.android.gm.extra.ACCOUNT"

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    const-string v0, "to"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 260
    const-string v1, "cc"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 261
    const-string v2, "bcc"

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 262
    const-string v3, "subject"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/actions/TextValue;

    .line 263
    const-string v5, "message"

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 266
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 271
    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 275
    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 278
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 279
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 283
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5
    return-object v4
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "text/plain"

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f02000d

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->buildListTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f02000e

    return v0
.end method

.method public getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
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
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 367
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 369
    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    .line 351
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "android.intent.action.SEND"

    goto :goto_0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 379
    const v0, 0x7f090777

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/StringUtils;->getStringResourceOrGservicesOverride(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 374
    const v0, 0x7f090770

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    .line 334
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    .line 335
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    .line 336
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 337
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineAutoSend(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 338
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    return v0
.end method

.method public requiresMailAccount()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public requiresMailAccountSelector()Z
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected toIsPrimarySlot()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method
