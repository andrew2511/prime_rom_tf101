.class public abstract Lcom/android/contacts/editor/LabeledEditorView;
.super Landroid/view/ViewGroup;
.source "LabeledEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
    }
.end annotation


# static fields
.field public static final CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;


# instance fields
.field private mDelete:Landroid/widget/ImageButton;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mKind:Lcom/android/contacts/model/AccountType$DataKind;

.field private mLabel:Landroid/widget/Spinner;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field protected mMinLineItemHeight:I

.field private mReadOnly:Z

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mType:Lcom/android/contacts/model/AccountType$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    sput-object v0, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 93
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 93
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 93
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    return-void
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 440
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, customType:Landroid/widget/EditText;
    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 442
    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 443
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 444
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c004b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 450
    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/LabeledEditorView$3;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$3;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    if-nez v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_0
    check-cast v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    .end local v0           #context:Landroid/content/Context;
    invoke-interface {v0}, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mMinLineItemHeight:I

    .line 124
    return-void
.end method

.method private rebuildLabel()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    .line 363
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 364
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    sget-object v2, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setupDeleteButton(Z)V
    .locals 7
    .parameter "shouldExist"

    .prologue
    const/4 v6, -0x2

    .line 235
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    if-nez v1, :cond_2

    .line 236
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    .line 237
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 238
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 240
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0a000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f0a000c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/LabeledEditorView$2;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->addView(Landroid/view/View;)V

    .line 311
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .line 305
    .restart local v0       #resources:Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 307
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->removeView(Landroid/view/View;)V

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    goto :goto_1
.end method

.method private setupLabelButton(Z)V
    .locals 4
    .parameter "shouldExist"

    .prologue
    .line 217
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez v1, :cond_2

    .line 218
    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    .line 219
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    .local v0, width:I
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->addView(Landroid/view/View;)V

    .line 229
    .end local v0           #width:I
    :cond_0
    :goto_1
    return-void

    .line 223
    .restart local v0       #width:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 225
    .end local v0           #width:I
    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->removeView(Landroid/view/View;)V

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    goto :goto_1
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "bundle"

    .prologue
    .line 531
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 533
    .local v0, dialogId:I
    packed-switch v0, :pswitch_data_0

    .line 537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialogId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseline(I)I
    .locals 1
    .parameter "row"

    .prologue
    .line 131
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBaseline()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDelete()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method protected getKind()Lcom/android/contacts/model/AccountType$DataKind;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    return-object v0
.end method

.method public getLabel()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    return-object v0
.end method

.method protected getLineItemCount()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected getLineItemHeight(I)I
    .locals 6
    .parameter "row"

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, fieldHeight:I
    const/4 v0, 0x0

    .line 151
    .local v0, buttonHeight:I
    if-nez p1, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v1

    .line 159
    .local v1, deleteButton:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v4

    move v2, v4

    .line 160
    .local v2, deleteHeight:I
    :goto_0
    add-int/2addr v0, v2

    .line 163
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v2           #deleteHeight:I
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mMinLineItemHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 159
    .restart local v1       #deleteButton:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object v0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method protected isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "column"
    .parameter "value"

    .prologue
    .line 385
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, dbValue:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v3, ""

    move-object v1, v3

    .line 389
    .local v1, dbValueNoNull:Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v3, ""

    move-object v2, v3

    .line 390
    .local v2, valueNoNull:Ljava/lang/String;
    :goto_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .end local v1           #dbValueNoNull:Ljava/lang/String;
    .end local v2           #valueNoNull:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 388
    goto :goto_0

    .restart local v1       #dbValueNoNull:Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .line 389
    goto :goto_1

    .line 390
    .restart local v2       #valueNoNull:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected isLineItemVisible(I)Z
    .locals 1
    .parameter "row"

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    return v0
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "column"
    .parameter "value"

    .prologue
    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    goto :goto_0
.end method

.method protected onLabelRebuilt()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getPaddingTop()I

    move-result v5

    .line 188
    .local v5, t1:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getPaddingRight()I

    move-result v9

    sub-int v3, v8, v9

    .line 189
    .local v3, r1:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 192
    .local v0, b1:I
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    if-eqz v8, :cond_1

    .line 193
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    sub-int v4, v3, v8

    .line 195
    .local v4, r2:I
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    .line 196
    .local v2, height:I
    iget v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mMinLineItemHeight:I

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int v6, v5, v8

    .line 197
    .local v6, top:I
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    add-int v9, v6, v2

    invoke-virtual {v8, v4, v6, v3, v9}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 204
    .end local v2           #height:I
    .end local v6           #top:I
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    .line 205
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/LabeledEditorView;->getBaseline(I)I

    move-result v1

    .line 206
    .local v1, baseline:I
    add-int v8, v5, v1

    iget-object v9, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getBaseline()I

    move-result v9

    sub-int v7, v8, v9

    .line 207
    .local v7, y:I
    iget-object v8, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v4, v9

    iget-object v10, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v9, v7, v4, v10}, Landroid/widget/Spinner;->layout(IIII)V

    .line 211
    .end local v1           #baseline:I
    .end local v7           #y:I
    :cond_0
    return-void

    .line 201
    .end local v4           #r2:I
    :cond_1
    move v4, v3

    .restart local v4       #r2:I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->measureChildren(II)V

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getLineItemCount()I

    move-result v0

    .line 174
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->isLineItemVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->getLineItemHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 174
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/android/contacts/editor/LabeledEditorView;->getDefaultSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/editor/LabeledEditorView;->setMeasuredDimension(II)V

    .line 182
    return-void
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 317
    :cond_0
    return-void
.end method

.method protected onTypeSelectionChange(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 489
    .local v0, selected:Lcom/android/contacts/model/AccountType$EditType;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v0, v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 497
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 498
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->showDialog(I)V

    goto :goto_0

    .line 501
    :cond_3
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    .line 502
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    iget v3, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 503
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 504
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0
.end method

.method protected rebuildValues()V
    .locals 6

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 395
    return-void
.end method

.method protected abstract requestFocusForFirstEditField()V
.end method

.method public setDeletable(Z)V
    .locals 0
    .parameter "deletable"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setupDeleteButton(Z)V

    .line 327
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 322
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 334
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 332
    goto :goto_0

    :cond_3
    move v1, v2

    .line 333
    goto :goto_1
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 4
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v3, 0x0

    .line 404
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    .line 405
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 406
    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 407
    iput-boolean p4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    .line 408
    iput-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 409
    const/4 v1, -0x1

    invoke-virtual {p5, p3, p1, p2, v1}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setId(I)V

    .line 411
    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 419
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    .line 420
    .local v0, hasTypes:Z
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->setupLabelButton(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 422
    :cond_2
    if-eqz v0, :cond_0

    .line 423
    invoke-static {p2, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    .line 424
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 421
    goto :goto_1
.end method

.method showDialog(I)V
    .locals 2
    .parameter "bundleDialogId"

    .prologue
    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/util/DialogManager;->showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 514
    return-void
.end method
