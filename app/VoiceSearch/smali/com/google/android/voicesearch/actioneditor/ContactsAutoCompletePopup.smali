.class public Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;
.super Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;
.source "ContactsAutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

.field private mCompleting:Z

.field private mCompletingPoint:Landroid/graphics/Point;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 55
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    .line 56
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setFilterDpad(Z)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setTypingCancels(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->disableKeyboard()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/graphics/Point;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method


# virtual methods
.method public beginCompleting(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    return-void
.end method

.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 94
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isShown()Z

    move-result v0

    .line 129
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->dismiss()V

    .line 131
    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 138
    :cond_0
    return-void
.end method

.method public endCompleting()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    return-void
.end method

.method public moveCompleting(Landroid/graphics/Point;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->move(Landroid/graphics/Point;)V

    .line 124
    return-void
.end method

.method public setCompletionConstraint(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    .line 159
    :cond_0
    return-void
.end method

.method public setShowListener(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    .line 85
    return-void
.end method
