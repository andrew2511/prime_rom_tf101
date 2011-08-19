.class public Lcom/android/browser/BrowserHomepagePreference;
.super Landroid/preference/EditTextPreference;
.source "BrowserHomepagePreference.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mCurrentPage:Ljava/lang/String;

.field mOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/android/browser/BrowserHomepagePreference$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHomepagePreference$1;-><init>(Lcom/android/browser/BrowserHomepagePreference;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHomepagePreference;->mOnClick:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Lcom/android/browser/BrowserHomepagePreference$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHomepagePreference$1;-><init>(Lcom/android/browser/BrowserHomepagePreference;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHomepagePreference;->mOnClick:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v0, Lcom/android/browser/BrowserHomepagePreference$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHomepagePreference$1;-><init>(Lcom/android/browser/BrowserHomepagePreference;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHomepagePreference;->mOnClick:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserHomepagePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method createButtons(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, v:Landroid/view/View;
    const v2, 0x7f100051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserHomepagePreference;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserHomepagePreference;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 60
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    invoke-virtual {p2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHomepagePreference;->createButtons(Landroid/view/ViewGroup;)V

    .line 64
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, url:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 109
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 68
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserHomepagePreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/browser/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/browser/BrowserHomepagePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 126
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 129
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 130
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method
