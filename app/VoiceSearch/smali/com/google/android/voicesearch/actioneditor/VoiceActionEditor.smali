.class public Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
.super Lcom/google/android/voicesearch/actioneditor/SlotGroup;
.source "VoiceActionEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceActionEditor"


# instance fields
.field private mAccountBar:Landroid/view/View;

.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAccounts:[Ljava/lang/String;

.field private mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

.field private mSelectedAccount:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 66
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initHeader()V

    .line 67
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initAccountSelector()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->forwardAccountToSlot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method private static correctionTextValueForSlot(Ljava/lang/String;Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)Lcom/google/android/voicesearch/actions/CorrectionTextValue;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            ">;)",
            "Lcom/google/android/voicesearch/actions/CorrectionTextValue;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const/4 v0, 0x1

    .line 316
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 317
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getActionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getActionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/TextValue;

    .line 323
    if-ne v0, p1, :cond_2

    .line 325
    if-nez v1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    if-eqz v1, :cond_5

    move v0, v6

    :goto_2
    move v4, v0

    .line 334
    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 329
    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    .line 332
    goto :goto_2

    .line 336
    :cond_3
    if-eqz v4, :cond_4

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actions/CorrectionTextValue;-><init>([Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method private createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getType()I

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getKeyboardStateTracker()Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    move-result-object v3

    .line 138
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;

    move-result-object v0

    .line 154
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addValueListener(Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;)V

    .line 162
    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;->onValueChange(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->initRecognizedTraker(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-object v0

    .line 141
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v7, :cond_4

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->createContactSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_4
    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->createTimeSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/TimeSlot;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forwardAccountToSlot(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotToReceiveAccountSelection()Ljava/lang/String;

    move-result-object v0

    .line 371
    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/actions/Contact;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    new-instance v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v2, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Lcom/google/android/voicesearch/actions/Contact;)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V

    goto :goto_0
.end method

.method private initAccountSelector()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAccountSelectorView(Landroid/view/View;)V

    .line 77
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    .line 78
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "_slot_"

    const-string v4, "multislot"

    const-string v5, "from"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090764

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private initHeader()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setHeaderView(Landroid/view/View;)V

    .line 125
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mTitle:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method private inputActionSlot(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0, p2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    .line 256
    const-string v0, "VoiceActionEditor"

    const-string v1, "Slot with unknown identifier input."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 276
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isSupportingVoiceInput()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v1

    .line 272
    if-nez v1, :cond_2

    move v0, v2

    .line 273
    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->inputSlotValue(Lcom/google/android/voicesearch/actioneditor/SlotView;Lcom/google/android/voicesearch/actions/SlotValue;)Z

    move-result v0

    goto :goto_0
.end method

.method public static makeActionCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getPrimarySlots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 290
    invoke-static {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->makeSlotCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;Lcom/google/android/voicesearch/actions/SlotSpec;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAdditionalSlots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 293
    invoke-static {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->makeSlotCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;Lcom/google/android/voicesearch/actions/SlotSpec;)V

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method private static makeSlotCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;Lcom/google/android/voicesearch/actions/SlotSpec;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            ">;",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getType()I

    move-result v0

    .line 301
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->correctionTextValueForSlot(Ljava/lang/String;Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    move-result-object v0

    .line 303
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method public getAction()Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    return-object v0
.end method

.method public inputAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)Z
    .locals 3
    .parameter

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getPrimarySlots()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 242
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->inputActionSlot(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    .line 244
    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAdditionalSlots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 246
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->inputActionSlot(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    .line 248
    goto :goto_1

    .line 250
    :cond_1
    return v2
.end method

.method public setAccounts([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 344
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getLastUsedGmailAccountIndex([Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->setAccount(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->forwardAccountToSlot(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccountSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_1
    return-void
.end method

.method public setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getPrimarySlots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v3

    .line 176
    invoke-direct {p0, v0, v3}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setCanDelete(Z)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAdditionalSlots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 183
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v4

    .line 184
    invoke-direct {p0, v0, v4}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_2
    invoke-virtual {v0, v6}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setCanDelete(Z)V

    goto :goto_1

    .line 189
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setSlots(Ljava/util/List;Ljava/util/List;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mTitle:Landroid/widget/TextView;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getActionString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccountSelector()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v6, :cond_3

    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_3
    return-void
.end method

.method public validateSlots()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getInvalidSlots()Ljava/util/List;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 227
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->showInvalid()V

    goto :goto_1

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
