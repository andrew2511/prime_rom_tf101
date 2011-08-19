.class public Lcom/google/android/gm/ComposeArea;
.super Ljava/lang/Object;
.source "ComposeArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/google/android/gm/EmailAddressAdapter;

.field private mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

.field mBccList:Landroid/widget/MultiAutoCompleteTextView;

.field private mBodyText:Landroid/widget/EditText;

.field mCcList:Landroid/widget/MultiAutoCompleteTextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mPrefs:Lcom/google/android/gm/Persistence;

.field private mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

.field private final mRootView:Landroid/view/View;

.field private mSignature:Ljava/lang/String;

.field private mSubjectText:Landroid/widget/EditText;

.field mToList:Landroid/widget/MultiAutoCompleteTextView;

.field private mValidator:Lcom/android/common/Rfc822Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/ComposeArea;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    .line 69
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/Persistence;

    .line 70
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "account"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    .line 75
    invoke-direct {p0}, Lcom/google/android/gm/ComposeArea;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    .line 76
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/Persistence;

    .line 77
    iput-object p2, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "signature"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getActivity()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, signatureResource:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .parameter "res"
    .parameter "hintId"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    .line 170
    .local v0, list:Landroid/widget/MultiAutoCompleteTextView;
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/google/android/gm/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 175
    sget-object v1, Lcom/google/android/gm/ComposeArea;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 177
    return-object v0
.end method

.method private isEmpty(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setTapTrapListener(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, tapTrap:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AttachmentsView;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 495
    return-void
.end method

.method public appendSignature(Ljava/lang/String;)V
    .locals 2
    .parameter "signature"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeArea;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public appendToBody(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 416
    .local v0, bodyText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 417
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gm/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_3
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusBody()V
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 209
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 211
    .local v0, length:I
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, signatureStartPos:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-lez v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public focusSubject()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 278
    return-void
.end method

.method public focusToList()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 343
    :cond_0
    return-void
.end method

.method protected getActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAttachmentsView()Lcom/google/android/gm/AttachmentsView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    return-object v0
.end method

.method public getBccList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getBccListLength()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getCcList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getCcListLength()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0}, Lcom/google/android/gm/QuotedTextView;->getQuotedTextIfIncluded()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQuotedTextView()Lcom/google/android/gm/QuotedTextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    return-object v0
.end method

.method protected getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "signature"
    .parameter "bodyText"

    .prologue
    .line 243
    const/4 v4, -0x1

    .line 245
    .local v4, startPos:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .line 263
    .end local v4           #startPos:I
    .local v5, startPos:I
    :goto_0
    return v5

    .line 249
    .end local v5           #startPos:I
    .restart local v4       #startPos:I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 250
    .local v0, bodyLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 251
    .local v3, signatureLength:I
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeArea;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, printableVersion:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 254
    .local v1, printableLength:I
    if-lt v0, v1, :cond_3

    sub-int v6, v0, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 257
    sub-int v4, v0, v1

    :cond_2
    :goto_1
    move v5, v4

    .line 263
    .end local v4           #startPos:I
    .restart local v5       #startPos:I
    goto :goto_0

    .line 258
    .end local v5           #startPos:I
    .restart local v4       #startPos:I
    :cond_3
    if-lt v0, v3, :cond_2

    sub-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 261
    sub-int v4, v0, v3

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getToList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getToListLength()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hideOrShowBcc(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 449
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 450
    .local v0, visibility:I
    :goto_0
    const v1, 0x7f0e0021

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 452
    if-nez p1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_1
    return-void

    .line 449
    .end local v0           #visibility:I
    :cond_0
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 458
    .restart local v0       #visibility:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_1
.end method

.method public hideOrShowCcBcc(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 463
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 464
    .local v0, visibility:I
    :goto_0
    const v1, 0x7f0e001f

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 465
    const v1, 0x7f0e0021

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    if-nez p1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :cond_0
    :goto_1
    return-void

    .line 463
    .end local v0           #visibility:I
    :cond_1
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 474
    .restart local v0       #visibility:I
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 475
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1}, Lcom/google/android/gm/ComposeArea;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1}, Lcom/google/android/gm/ComposeArea;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_1
.end method

.method public isBlank()Z
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getSubjectText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getToListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getCcListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBodyEmpty()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0}, Lcom/google/android/gm/QuotedTextView;->isTextIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 187
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    goto :goto_0

    .line 190
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 193
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 196
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 199
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x7f0e001d -> :sswitch_1
        0x7f0e001f -> :sswitch_2
        0x7f0e0021 -> :sswitch_3
        0x7f0e0028 -> :sswitch_4
        0x7f0e002d -> :sswitch_0
        0x7f0e002e -> :sswitch_0
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 501
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    move v0, v1

    .line 507
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "inBundle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    const-string v0, "showCcBcc"

    const v1, 0x7f0e001f

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v0, "showQuotedText"

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v1}, Lcom/google/android/gm/QuotedTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    return-object p1

    :cond_0
    move v1, v2

    .line 320
    goto :goto_0

    :cond_1
    move v1, v2

    .line 325
    goto :goto_1
.end method

.method public removeAllAttachments()V
    .locals 2

    .prologue
    .line 489
    const v1, 0x7f0e0024

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 490
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 491
    return-void
.end method

.method public renderView()V
    .locals 4

    .prologue
    .line 130
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    const v1, 0x40000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 134
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/QuotedTextView;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    .line 136
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AttachmentsView;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    .line 138
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    new-instance v0, Lcom/google/android/gm/EmailAddressAdapter;

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gm/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/google/android/gm/EmailAddressAdapter;

    .line 142
    new-instance v0, Lcom/android/common/Rfc822Validator;

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 144
    const v0, 0x7f0e001e

    const v1, 0x7f0d0119

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    .line 145
    const v0, 0x7f0e0020

    const v1, 0x7f0d011a

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    .line 146
    const v0, 0x7f0e0022

    const v1, 0x7f0d0117

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    .line 149
    const v0, 0x7f0e002e

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 150
    const v0, 0x7f0e002d

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 151
    const v0, 0x7f0e001d

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 152
    const v0, 0x7f0e001f

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 153
    const v0, 0x7f0e0021

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 154
    const v0, 0x7f0e0028

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 155
    return-void
.end method

.method public setBody(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    if-eqz p2, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->isStringEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->appendSignature(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method

.method public setQuotedSectionVisibility(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gm/QuotedTextView;->setVisibility(I)V

    .line 291
    return-void

    .line 290
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setQuotedText(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "allow"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/QuotedTextView;->allowQuotedText(Z)V

    .line 306
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/QuotedTextView;->allowRespondInline(Z)V

    .line 307
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "subject"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method public setToList(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method public updateHideOrShowCcBcc(Ljava/lang/Boolean;)I
    .locals 6
    .parameter "shouldShow"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 360
    if-eqz p1, :cond_4

    .line 361
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v4

    .line 367
    .local v2, visibility:I
    :goto_0
    const v3, 0x7f0e001f

    invoke-virtual {p0, v3}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 369
    .local v1, ccContent:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v3

    if-nez v3, :cond_1

    .line 374
    const/16 v2, 0x8

    .line 376
    :cond_1
    const v3, 0x7f0e0021

    invoke-virtual {p0, v3}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, bccContent:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_2
    return v2

    .end local v0           #bccContent:Landroid/view/View;
    .end local v1           #ccContent:Landroid/view/View;
    .end local v2           #visibility:I
    :cond_3
    move v2, v5

    .line 361
    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getCcListLength()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v2, v4

    .restart local v2       #visibility:I
    :goto_1
    goto :goto_0

    .end local v2           #visibility:I
    :cond_6
    move v2, v5

    goto :goto_1
.end method

.method public updateReplyFromAccount(Ljava/lang/String;)V
    .locals 6
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 223
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    iput-object p1, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/Persistence;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/Persistence;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, signature:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, bodyText:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, signatureStartPos:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 231
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    .line 234
    .end local v0           #bodyText:Ljava/lang/String;
    .end local v2           #signatureStartPos:I
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->appendSignature(Ljava/lang/String;)V

    .line 237
    :cond_1
    iput-object v1, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    .line 239
    .end local v1           #signature:Ljava/lang/String;
    :cond_2
    return-void
.end method
