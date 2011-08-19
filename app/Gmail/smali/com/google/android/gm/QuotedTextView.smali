.class Lcom/google/android/gm/QuotedTextView;
.super Landroid/widget/LinearLayout;
.source "QuotedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/QuotedTextView$RespondInlineListener;,
        Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;
    }
.end annotation


# instance fields
.field private mIncludeText:Z

.field private mQuotedText:Ljava/lang/CharSequence;

.field private mQuotedTextWebView:Landroid/webkit/WebView;

.field private mRespondInlineButton:Landroid/widget/Button;

.field private mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

.field private mShowHideCheckBox:Landroid/widget/CheckBox;

.field private mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gm/QuotedTextView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/QuotedTextView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/QuotedTextView;)Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f040026

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v1, 0x7f0e006c

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    .line 48
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 50
    const v1, 0x7f0e006b

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    .line 51
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/android/gm/QuotedTextView$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/QuotedTextView$1;-><init>(Lcom/google/android/gm/QuotedTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e006e

    invoke-virtual {p0, v1}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method private populateData()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<head><style type=\"text/css\">* { color: #6d2a6d; }</style></head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, html:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private updateCheckedState(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/gm/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public allowQuotedText(Z)V
    .locals 5
    .parameter "allow"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 72
    const v2, 0x7f0e006d

    invoke-virtual {p0, v2}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, quotedTextCheckboxLabel:Landroid/view/View;
    const v2, 0x7f0e006b

    invoke-virtual {p0, v2}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, checkbox:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 78
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    .line 81
    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 78
    goto :goto_0

    :cond_3
    move v2, v4

    .line 81
    goto :goto_1
.end method

.method public allowRespondInline(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_0
    return-void

    .line 91
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getQuotedTextIfIncluded()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextIncluded()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    new-instance v2, Lcom/google/android/common/html/parser/HtmlParser;

    invoke-direct {v2}, Lcom/google/android/common/html/parser/HtmlParser;-><init>()V

    .line 185
    .local v2, parser:Lcom/google/android/common/html/parser/HtmlParser;
    invoke-virtual {p0}, Lcom/google/android/gm/QuotedTextView;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/common/html/parser/HtmlParser;->parse(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument;

    move-result-object v1

    .line 186
    .local v1, doc:Lcom/google/android/common/html/parser/HtmlDocument;
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;-><init>()V

    .line 187
    .local v0, builder:Lcom/google/android/common/html/parser/HtmlTreeBuilder;
    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HtmlDocument;->accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V

    .line 188
    iget-object v4, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->getTree()Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gm/QuotedTextView$RespondInlineListener;->onRespondInline(Ljava/lang/String;)V

    .line 190
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/gm/QuotedTextView;->updateCheckedState(Z)V

    .line 191
    iget-object v4, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    const v4, 0x7f0e0069

    invoke-virtual {p0, v4}, Lcom/google/android/gm/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, quotedTextView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e006e
        :pswitch_0
    .end packed-switch
.end method

.method public setQuotedText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "quotedText"

    .prologue
    const/4 v2, 0x0

    .line 115
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 116
    invoke-direct {p0}, Lcom/google/android/gm/QuotedTextView;->populateData()V

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRespondInlineListener(Lcom/google/android/gm/QuotedTextView$RespondInlineListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mRespondInlineListener:Lcom/google/android/gm/QuotedTextView$RespondInlineListener;

    .line 162
    return-void
.end method

.method public setShowHideListener(Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView;->mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;

    .line 157
    return-void
.end method

.method public updateQuotedTextVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 107
    iput-boolean p1, p0, Lcom/google/android/gm/QuotedTextView;->mIncludeText:Z

    .line 108
    return-void

    .line 106
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
