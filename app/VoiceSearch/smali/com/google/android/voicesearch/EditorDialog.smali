.class public Lcom/google/android/voicesearch/EditorDialog;
.super Landroid/app/Dialog;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;
.implements Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/EditorDialog$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG_MOCK_ACTION:Z = false

.field private static final MAX_RESULTS:I = 0x32

.field private static final MODE_ERROR:I = 0x4

.field private static final MODE_INITIALIZING:I = 0x1

.field private static final MODE_NOT_RECOGNIZING:I = 0x0

.field private static final MODE_RECOGNIZING:I = 0x2

.field private static final MODE_WORKING:I = 0x3


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAccounts:[Ljava/lang/String;

.field private mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

.field private mGoButton:Landroid/widget/Button;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

.field private mKeyboardShown:Z

.field private mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;

.field private mMainView:Lcom/google/android/voicesearch/EditorLayout;

.field private mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mRecognitionError:I

.field private mRecognitionMode:I

.field private mRecognizer:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

.field private mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

.field private mVibrator:Lcom/google/android/voicesearch/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/RecognitionController;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 112
    iput-object p2, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 113
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 115
    iput-object p3, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/voicesearch/EditorDialog;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mKeyboardShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/EditorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->layoutChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/voicesearch/EditorDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccounts:[Ljava/lang/String;

    return-object p1
.end method

.method private changeRecognitionMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 327
    iput p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionMode:I

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->dismiss()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    .line 334
    :cond_1
    const v0, 0x7f02007f

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->setBackgroundResourceKeepPadding(I)V

    .line 336
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setRecognizing(Z)V

    goto :goto_0

    .line 340
    :pswitch_1
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    .line 341
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$5;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->showRecording()V

    goto :goto_0

    .line 351
    :pswitch_2
    const v0, 0x7f020083

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->setBackgroundResourceKeepPadding(I)V

    .line 353
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setRecognizing(Z)V

    .line 355
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->showRecording()V

    .line 359
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mKeyboardShown:Z

    if-eqz v0, :cond_3

    .line 360
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->hideKeyboard()V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->getRecordingPopupPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_0

    .line 369
    :pswitch_3
    const v0, 0x7f020079

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->setBackgroundResourceKeepPadding(I)V

    .line 370
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->showWorking()V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setRecognizing(Z)V

    goto :goto_0

    .line 378
    :pswitch_4
    const v0, 0x7f020085

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->setBackgroundResourceKeepPadding(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    iget v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionError:I

    invoke-static {v1}, Lcom/google/android/voicesearch/StringUtils;->getErrorMessageId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->showError(I)V

    goto/16 :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private filterActions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 241
    instance-of v2, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    if-eqz v2, :cond_0

    .line 242
    check-cast p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    return-object v0
.end method

.method private getRecordingPopupPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v1

    .line 299
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v2, v1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    .line 305
    return-object v0

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    :cond_0
    return-void
.end method

.method private layoutChanged()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->getRecordingPopupPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->move(Landroid/graphics/Point;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 324
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private setBackgroundResourceKeepPadding(I)V
    .locals 5
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 288
    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 289
    iget-object v3, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 291
    iget-object v4, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 292
    iget-object v4, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->hideKeyboard()V

    .line 193
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0d0012

    .line 120
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->setContentView(I)V

    .line 122
    new-instance v0, Lcom/google/android/voicesearch/Vibrator;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/Vibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    .line 124
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/EditorLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$1;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/EditorLayout;->setListener(Lcom/google/android/voicesearch/EditorLayout$Listener;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 138
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    .line 141
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    .line 142
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setRecognitionManager(Lcom/google/android/voicesearch/actioneditor/SlotGroup$RecognitionManager;)V

    .line 144
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$2;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mCancelButton:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$3;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 441
    const v0, 0x7f090766

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$6;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$6;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public onEndOfSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 283
    return-void
.end method

.method public onError(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    iput p2, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionError:I

    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 235
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 236
    return-void
.end method

.method public onFinishRecognizing(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/EditorDialog;->filterActions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 261
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->makeActionCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 262
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->inputAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)Z

    move-result v0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 267
    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionError:I

    .line 269
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 273
    :goto_1
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->hideKeyboard()V

    .line 198
    return-void
.end method

.method public onReadyForSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 230
    return-void
.end method

.method public onRmsChanged(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecordingPopup:Lcom/google/android/voicesearch/actioneditor/RecordingPopup;

    invoke-virtual {v0, p2}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->setLevel(F)V

    .line 279
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;-><init>(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;Lcom/google/android/voicesearch/speechservice/RecognitionController;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognizer:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mActions:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->makeActionCorrectable(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAccounts([Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSubmitString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognizer:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->onDestroy()V

    .line 181
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 182
    return-void
.end method

.method public setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 207
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/EditorDialog;->filterActions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mActions:Ljava/util/List;

    .line 210
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/voicesearch/EditorDialog$4;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/EditorDialog$4;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/EditorDialog$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;

    .line 202
    return-void
.end method

.method public startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p2, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 400
    invoke-static {}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->createStandardIntent()Landroid/content/Intent;

    move-result-object v0

    .line 401
    const-string v1, "calling_package"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getAction()Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getType()I

    move-result v1

    .line 408
    const-string v2, "android.speech.extras.ACTION_CONTEXT_ACTION_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    if-eqz p2, :cond_0

    .line 411
    const-string v1, "android.speech.extras.ACTION_CONTEXT_SELECTED_SLOT"

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognizer:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->startListening(Landroid/content/Intent;)V

    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 418
    return-void
.end method

.method public stopRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iget v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionMode:I

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognizer:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->stopListening()V

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->changeRecognitionMode(I)V

    .line 425
    :cond_0
    return-void
.end method

.method public toggleRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mRecognitionMode:I

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/EditorDialog;->startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorDialog;->stopRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    .line 391
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/EditorDialog;->startRecognizing(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mMainView:Lcom/google/android/voicesearch/EditorLayout;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorLayout;->updateLayout()V

    .line 431
    :cond_0
    return-void
.end method
