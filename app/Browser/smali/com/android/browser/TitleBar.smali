.class public Lcom/android/browser/TitleBar;
.super Lcom/android/browser/TitleBarBase;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArcsSpan:Landroid/text/style/ImageSpan;

.field private mBookmarkButton:Landroid/widget/ImageButton;

.field private mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalProgress:Lcom/android/browser/PageProgressView;

.field private mInLoad:Z

.field private mStopButton:Landroid/widget/ImageButton;

.field private mVoiceDrawable:Landroid/graphics/drawable/Drawable;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V
    .locals 8
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    const/4 v7, 0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/TitleBarBase;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f04002f

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcom/android/browser/TitleBar;->mActivity:Landroid/app/Activity;

    .line 62
    const v4, 0x7f10007d

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/browser/UrlInputView;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 63
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/browser/UrlInputView;->setCompoundDrawablePadding(I)V

    .line 64
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v4, p0}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 65
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v4, v7}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 66
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v5, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v4, v5}, Lcom/android/browser/UrlInputView;->setController(Lcom/android/browser/UiController;)V

    .line 67
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v4, p0}, Lcom/android/browser/UrlInputView;->setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V

    .line 68
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v4, p0}, Lcom/android/browser/UrlInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 70
    const v4, 0x7f10007b

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mLockIcon:Landroid/widget/ImageView;

    .line 71
    const v4, 0x7f100001

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mFavicon:Landroid/widget/ImageView;

    .line 72
    const v4, 0x7f10007e

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    .line 73
    const v4, 0x7f10007f

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    .line 74
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v4, 0x7f100080

    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/browser/PageProgressView;

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Lcom/android/browser/PageProgressView;

    .line 79
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 80
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v5, "android.speech.extra.LANGUAGE_MODEL"

    const-string v6, "web_search"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v5, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 89
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    const/high16 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 91
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, resources:Landroid/content/res/Resources;
    if-nez v3, :cond_0

    .line 93
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 98
    :goto_0
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    new-instance v4, Landroid/text/style/ImageSpan;

    const v5, 0x7f020002

    invoke-direct {v4, p1, v5, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    .line 101
    return-void

    .line 95
    :cond_0
    const v4, 0x10800a4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 106
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->stopLoading()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/browser/UiController;->bookmarkCurrentPage(JZ)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 195
    :cond_0
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 1
    .parameter "isBookmark"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 210
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Lcom/android/browser/UrlInputView;->setText(I)V

    .line 188
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v2, :cond_1

    .line 179
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 180
    .local v1, spannable:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 181
    .local v0, end:I
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mArcsSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 183
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    .end local v0           #end:I
    .end local v1           #spannable:Landroid/text/SpannableString;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2, p1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setInVoiceMode(Z)V
    .locals 5
    .parameter "inVoiceMode"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mVoiceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 122
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v1, :cond_4

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSingleLine(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    .line 125
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 133
    :goto_4
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUrlInput:Lcom/android/browser/UrlInputView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    move v1, v2

    .line 135
    goto :goto_3
.end method

.method setProgress(I)V
    .locals 4
    .parameter "newProgress"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Lcom/android/browser/PageProgressView;

    invoke-virtual {v0, v3}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 145
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBookmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    :cond_0
    iput-boolean v2, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Lcom/android/browser/PageProgressView;

    mul-int/lit16 v1, p1, 0x2710

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 154
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mHorizontalProgress:Lcom/android/browser/PageProgressView;

    invoke-virtual {v0, v2}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInVoiceMode:Z

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBookmarkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    goto :goto_0
.end method
