.class public Lcom/google/android/gm/ShortcutNameActivity;
.super Landroid/app/Activity;
.source "ShortcutNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mLabelName:Ljava/lang/String;

.field private mLabelText:Landroid/widget/EditText;

.field private mShortcutClickIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ShortcutNameActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutNameActivity;->finish()V

    .line 95
    return-void
.end method

.method private doCreateShortcut()V
    .locals 5

    .prologue
    .line 75
    iget-object v3, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 77
    .local v2, userShortcutName:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v3, "extra_label_click_intent"

    iget-object v4, p0, Lcom/google/android/gm/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, shortcutName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/google/android/gm/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_0
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/google/android/gm/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gm/ShortcutNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutNameActivity;->finish()V

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 58
    .local v0, id:I
    const v1, 0x7f0e0071

    if-ne v1, v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/google/android/gm/ShortcutNameActivity;->doCreateShortcut()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const v1, 0x7f0e0068

    if-ne v1, v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/google/android/gm/ShortcutNameActivity;->doCancel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ShortcutNameActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_label_click_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mShortcutClickIntent:Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gm/ShortcutNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_shortcut_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelName:Ljava/lang/String;

    .line 43
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    .line 44
    iget-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 49
    iget-object v1, p0, Lcom/google/android/gm/ShortcutNameActivity;->mLabelText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 50
    .local v0, editableText:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 52
    const v1, 0x7f0e0071

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0e0068

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ShortcutNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 66
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gm/ShortcutNameActivity;->doCreateShortcut()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
