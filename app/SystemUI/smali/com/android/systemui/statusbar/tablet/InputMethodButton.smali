.class public Lcom/android/systemui/statusbar/tablet/InputMethodButton;
.super Landroid/widget/ImageView;
.source "InputMethodButton.java"


# instance fields
.field private mHardKeyboardAvailable:Z

.field private mIcon:Landroid/widget/ImageView;

.field private final mId:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mScreenLocked:Z

.field private mShowButton:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    .line 57
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 58
    return-void
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private needsToShowIMEButton()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 90
    .end local p0
    :goto_0
    return v3

    .line 74
    .restart local p0
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-eqz v3, :cond_2

    move v3, v5

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    .local v1, size:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->loadInputMethodSelectorVisibility()I

    move-result v2

    .line 81
    .local v2, visibility:I
    packed-switch v2, :pswitch_data_0

    move v3, v4

    .line 90
    goto :goto_0

    .line 83
    :pswitch_0
    if-gt v1, v5, :cond_3

    if-ne v1, v5, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_4

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0

    .restart local p0
    :pswitch_1
    move v3, v5

    .line 86
    goto :goto_0

    :pswitch_2
    move v3, v4

    .line 88
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshStatusIcon()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->needsToShowIMEButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 65
    return-void
.end method

.method public setHardKeyboardStatus(Z)V
    .locals 1
    .parameter "available"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-eq v0, p1, :cond_0

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 128
    :cond_0
    return-void
.end method

.method public setIconImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "token"
    .parameter "showButton"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mToken:Landroid/os/IBinder;

    .line 119
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 121
    return-void
.end method

.method public setScreenLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 133
    return-void
.end method
