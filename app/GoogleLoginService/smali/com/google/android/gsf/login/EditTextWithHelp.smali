.class public Lcom/google/android/gsf/login/EditTextWithHelp;
.super Landroid/widget/EditText;
.source "EditTextWithHelp.java"


# instance fields
.field private mPopupView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mShowPopupWhenAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string v1, "has_shown_help"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/EditTextWithHelp;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupView:Landroid/view/View;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mShowPopupWhenAttached:Z

    .line 36
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/EditTextWithHelp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->dismissPopup()V

    return-void
.end method

.method private dismissPopup()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 50
    const-string v0, "has_shown_help"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/login/EditTextWithHelp;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 53
    :cond_0
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/login/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    return-void
.end method

.method private showPopup()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 56
    iget-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupView:Landroid/view/View;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 58
    iget-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 61
    iget-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupView:Landroid/view/View;

    new-instance v4, Lcom/google/android/gsf/login/EditTextWithHelp$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/login/EditTextWithHelp$1;-><init>(Lcom/google/android/gsf/login/EditTextWithHelp;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->getWidth()I

    move-result v1

    .line 68
    .local v1, thisWidth:I
    iget-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    .line 69
    .local v0, popWidth:I
    if-nez v0, :cond_0

    .line 70
    div-int/lit8 v0, v1, 0x2

    .line 72
    :cond_0
    sub-int v2, v1, v0

    .line 73
    .local v2, xoff:I
    if-ltz v2, :cond_2

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, p0, v2, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 76
    .end local v0           #popWidth:I
    .end local v1           #thisWidth:I
    .end local v2           #xoff:I
    :cond_1
    return-void

    .line 73
    .restart local v0       #popWidth:I
    .restart local v1       #thisWidth:I
    .restart local v2       #xoff:I
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->dismissPopup()V

    .line 93
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->dismissPopup()V

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->dismissPopup()V

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 41
    iget-boolean v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mShowPopupWhenAttached:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->showPopup()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/EditTextWithHelp;->mShowPopupWhenAttached:Z

    .line 45
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gsf/login/EditTextWithHelp;->dismissPopup()V

    .line 104
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
