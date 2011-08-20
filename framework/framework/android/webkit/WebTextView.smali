.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7


# instance fields
.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mScrolled:Z

.field private mSingle:Z

.field private mType:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .registers 8
    .parameter "context"
    .parameter "webView"
    .parameter "autoFillQueryId"

    .prologue
    .line 178
    const/4 v2, 0x0

    const v3, 0x10102b9

    invoke-direct {p0, p1, v2, v3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/4 v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 179
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 180
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 181
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 184
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 185
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x101

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x4

    .line 187
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 192
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 194
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 196
    new-instance v2, Landroid/webkit/WebTextView$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v2, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 207
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method private createBackground()V
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1030
    :goto_4
    return-void

    .line 1027
    :cond_5
    new-instance v0, Landroid/webkit/WebTextView$OutlineDrawable;

    invoke-direct {v0}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1029
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    goto :goto_4
.end method

.method private lineUpScroll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 401
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 402
    .local v0, layout:Landroid/text/Layout;
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    .line 403
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2b

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 410
    .local v1, maxScrollX:F
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v3, v1, v4

    if-lez v3, :cond_29

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    :goto_25
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 417
    .end local v1           #maxScrollX:F
    :cond_28
    :goto_28
    return-void

    .restart local v1       #maxScrollX:F
    :cond_29
    move v3, v4

    .line 410
    goto :goto_25

    .line 414
    .end local v1           #maxScrollX:F
    :cond_2b
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_28
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 848
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 849
    return-void
.end method

.method private setMaxLength(I)V
    .registers 5
    .parameter "maxLength"

    .prologue
    .line 1040
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 1041
    const/4 v0, -0x1

    if-ne v0, p1, :cond_b

    .line 1042
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1047
    :goto_a
    return-void

    .line 1044
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 20
    .parameter "event"

    .prologue
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 218
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 369
    :goto_a
    return v3

    .line 221
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v3, 0x1

    move v9, v3

    .line 222
    .local v9, down:Z
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 224
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 225
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_17e

    .line 234
    :goto_1c
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_30

    .line 235
    if-eqz v9, :cond_29

    .line 236
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 238
    :cond_29
    const/4 v3, 0x1

    goto :goto_a

    .line 221
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2b
    const/4 v3, 0x0

    move v9, v3

    goto :goto_14

    .line 230
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_2e
    const/4 v10, 0x1

    goto :goto_1c

    .line 240
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 241
    .local v17, text:Landroid/text/Spannable;
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 242
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 247
    .local v13, oldEnd:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_5b

    .line 248
    if-nez v14, :cond_49

    if-nez v13, :cond_49

    .line 249
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 250
    const/4 v3, 0x1

    goto :goto_a

    .line 252
    :cond_49
    if-eqz v9, :cond_5b

    .line 253
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 254
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 255
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 259
    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_9d

    const/16 v3, 0x42

    if-eq v3, v11, :cond_6a

    const/16 v3, 0xa0

    if-ne v3, v11, :cond_9d

    .line 261
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 262
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 264
    :cond_75
    if-nez v9, :cond_97

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 270
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 271
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 273
    :cond_97
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 274
    :cond_9d
    const/16 v3, 0x17

    if-ne v3, v11, :cond_bd

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 277
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 280
    :cond_ad
    if-nez v9, :cond_b7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 284
    :cond_b7
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 288
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_d4

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 292
    :cond_d4
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 293
    .local v5, oldLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_112

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_112

    const/4 v3, 0x1

    move v12, v3

    .line 298
    .local v12, maxedOut:Z
    :goto_e9
    if-eqz v12, :cond_115

    if-eq v13, v14, :cond_115

    .line 299
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 303
    .local v15, oldText:Ljava/lang/String;
    :goto_f1
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 314
    const/16 v3, 0x42

    if-eq v3, v11, :cond_ff

    const/16 v3, 0xa0

    if-ne v3, v11, :cond_105

    .line 319
    :cond_ff
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 321
    :cond_105
    if-eqz v12, :cond_142

    if-nez v10, :cond_142

    const/16 v3, 0x43

    if-eq v11, v3, :cond_142

    .line 322
    if-ne v13, v14, :cond_118

    .line 324
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 293
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_112
    const/4 v3, 0x0

    move v12, v3

    goto :goto_e9

    .line 301
    .restart local v12       #maxedOut:Z
    :cond_115
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_f1

    .line 325
    :cond_118
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 333
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 334
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 335
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 337
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 352
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_142
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 356
    :cond_145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_151

    if-nez v9, :cond_151

    .line 357
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 360
    :cond_151
    if-eqz v10, :cond_17b

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 366
    if-eqz v9, :cond_16c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 369
    :cond_17b
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 225
    :pswitch_data_17e
    .packed-switch 0x13
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method ensureLayout()V
    .registers 7

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_26

    .line 375
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 376
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 377
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_26

    .line 378
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 382
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_26
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method isSameTextField(I)Z
    .registers 3
    .parameter "ptr"

    .prologue
    .line 394
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 20
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 424
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 429
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 430
    const/high16 v11, -0x4080

    .line 431
    .local v11, lineHeight:F
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    .line 432
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateLineHeight()I

    move-result v0

    int-to-float v12, v0

    .line 433
    .local v12, height:F
    const/high16 v0, -0x4080

    cmpl-float v0, v12, v0

    if-eqz v0, :cond_24

    .line 434
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float v11, v12, v0

    .line 437
    .end local v12           #height:F
    :cond_24
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 439
    .local v1, text:Ljava/lang/CharSequence;
    new-instance v0, Landroid/webkit/WebTextView$WebTextViewLayout;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v2, p0, Landroid/webkit/WebTextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v2, p0, Landroid/webkit/WebTextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    iget-object v2, p0, Landroid/webkit/WebTextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v6

    iget-object v2, p0, Landroid/webkit/WebTextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/webkit/WebTextView$WebTextViewLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IF)V

    iput-object v0, p0, Landroid/webkit/WebTextView;->mLayout:Landroid/text/Layout;

    .line 444
    .end local v1           #text:Ljava/lang/CharSequence;
    .end local v11           #lineHeight:F
    :cond_50
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 445
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 485
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2d

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 491
    :cond_2d
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_14
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 534
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 538
    :goto_24
    return-void

    .line 536
    :cond_25
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_24
.end method

.method onDrawSubstitute()V
    .registers 8

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_7

    .line 520
    :goto_6
    return-void

    .line 510
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 511
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 512
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 513
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 514
    .local v2, selStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 515
    .local v3, selEnd:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 516
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    .line 517
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 519
    .end local v2           #selStart:I
    .end local v3           #selEnd:I
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2b
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCursorControllerPositions()V

    goto :goto_6
.end method

.method public onEditorAction(I)V
    .registers 6
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 542
    packed-switch p1, :pswitch_data_40

    .line 568
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 544
    :pswitch_7
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 548
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 549
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_6

    .line 553
    :pswitch_1d
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_6

    .line 558
    :pswitch_21
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 560
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 562
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_6

    .line 542
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_6
        :pswitch_7
        :pswitch_1d
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 573
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 574
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 575
    if-eqz p1, :cond_11

    .line 576
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 580
    :cond_e
    :goto_e
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 581
    return-void

    .line 577
    :cond_11
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_e

    .line 578
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_e
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1e

    if-nez p3, :cond_1e

    .line 589
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 591
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v1, :cond_1f

    .line 593
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 602
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_1e
    :goto_1e
    return-void

    .line 598
    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1f
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1e
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 606
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 607
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 608
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 612
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_1c

    .line 618
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 619
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 621
    :cond_1c
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 24
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 625
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 631
    .local v18, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 709
    :cond_4c
    :goto_4c
    return-void

    .line 636
    :cond_4d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 637
    if-nez p4, :cond_bf

    .line 638
    if-lez p3, :cond_b8

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    move v5, v0

    if-eqz v5, :cond_aa

    .line 642
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 643
    add-int v17, p2, p3

    .line 644
    .local v17, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_aa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_8d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_aa

    const/4 v5, 0x1

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_aa

    .line 649
    :cond_8d
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x43

    invoke-direct {v5, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 651
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x43

    invoke-direct {v5, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_4c

    .line 658
    .end local v17           #oldEnd:I
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 660
    :cond_b8
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_4c

    .line 670
    :cond_bf
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 676
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 677
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 678
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 679
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_13f

    const/4 v5, 0x1

    move v11, v5

    .line 680
    .local v11, cannotUseKeyEvents:Z
    :goto_ec
    if-eqz v11, :cond_142

    const/4 v5, 0x0

    move v12, v5

    .line 681
    .local v12, charactersFromKeyEvents:I
    :goto_f0
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_f8

    if-eqz v11, :cond_145

    .line 682
    :cond_f8
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 684
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 698
    .end local v8           #replace:Ljava/lang/String;
    :cond_11c
    :goto_11c
    if-nez v11, :cond_15b

    .line 699
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 700
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_123
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_15b

    .line 703
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_13c

    .line 704
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 700
    :cond_13c
    add-int/lit8 v14, v14, 0x1

    goto :goto_123

    .line 679
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_13f
    const/4 v5, 0x0

    move v11, v5

    goto :goto_ec

    .line 680
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_142
    const/4 v5, 0x1

    move v12, v5

    goto :goto_f0

    .line 694
    .restart local v12       #charactersFromKeyEvents:I
    :cond_145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_11c

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_11c

    .line 708
    :cond_15b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_4c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ee

    .line 794
    :goto_7
    const/4 v8, 0x1

    :goto_8
    return v8

    .line 715
    :pswitch_9
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 721
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 722
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 723
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 724
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_7

    .line 727
    :pswitch_2b
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_34

    .line 728
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 729
    const/4 v8, 0x0

    goto :goto_8

    .line 731
    :cond_34
    iget-object v8, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 732
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 733
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 734
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 735
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 736
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 737
    .local v1, dx:I
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 741
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 742
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_61

    if-le v2, v7, :cond_69

    .line 744
    :cond_61
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 745
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 746
    const/4 v8, 0x1

    goto :goto_8

    .line 748
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    .line 753
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 755
    :cond_90
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_b7

    .line 757
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_a6

    .line 758
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 760
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 762
    :cond_a6
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 763
    .local v5, scrolled:Z
    if-eqz v5, :cond_b7

    .line 764
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 765
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 766
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 769
    .end local v5           #scrolled:Z
    :cond_b7
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 772
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_ba
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 773
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_c7

    .line 774
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 775
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 777
    :cond_c7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_db

    .line 780
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 781
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_db

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_db

    .line 782
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 786
    :cond_db
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_e8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_e8

    .line 787
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 789
    :cond_e8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_7

    .line 713
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9
        :pswitch_ba
        :pswitch_2b
        :pswitch_ba
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 799
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 800
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 812
    :goto_b
    return v2

    .line 802
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 803
    goto :goto_b

    .line 805
    :cond_15
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 806
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 807
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 810
    const/4 v2, 0x1

    goto :goto_b

    :cond_2d
    move v2, v4

    .line 812
    goto :goto_b
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 818
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 827
    iget-object v1, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 828
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 829
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 831
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 832
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 833
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 834
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 835
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 4
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 856
    if-eqz p1, :cond_22

    .line 857
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 859
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 860
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_1d

    .line 861
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 865
    :goto_16
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 869
    :goto_19
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 870
    return-void

    .line 863
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16

    .line 867
    :cond_22
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_19
.end method

.method setAutoFillProfileIsSet(Z)V
    .registers 2
    .parameter "autoFillProfileIsSet"

    .prologue
    .line 1247
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1248
    return-void
.end method

.method public setAutoFillable(I)V
    .registers 3
    .parameter "queryId"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 212
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 213
    return-void

    .line 210
    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method setDefaultSelection()V
    .registers 4

    .prologue
    .line 911
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 912
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 913
    .local v0, selection:I
    :goto_d
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2f

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2f

    .line 923
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_22

    .line 924
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 929
    :cond_22
    :goto_22
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 930
    :cond_2b
    return-void

    .line 912
    .end local v0           #selection:I
    :cond_2c
    const/4 v2, 0x0

    move v0, v2

    goto :goto_d

    .line 927
    .restart local v0       #selection:I
    :cond_2f
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_22
.end method

.method setInPassword(Z)V
    .registers 4
    .parameter "inPassword"

    .prologue
    .line 938
    if-eqz p1, :cond_f

    .line 939
    iget v0, p0, Landroid/webkit/WebTextView;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 940
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 943
    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 949
    :cond_f
    if-nez p1, :cond_1d

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 951
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_19
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 952
    return-void

    .line 949
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12

    .line 951
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public setInputType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 1035
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 1037
    return-void
.end method

.method setNodePointer(I)V
    .registers 2
    .parameter "ptr"

    .prologue
    .line 1056
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 1057
    return-void
.end method

.method setRect(IIII)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 1070
    add-int/lit8 p1, p1, 0x1

    .line 1071
    add-int/lit8 p2, p2, 0x1

    .line 1072
    add-int/lit8 p3, p3, -0x2

    .line 1073
    add-int/lit8 p4, p4, -0x2

    .line 1075
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1076
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v0, :cond_2f

    .line 1077
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1084
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_17
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_38

    .line 1085
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    :goto_22
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1091
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1092
    return-void

    .line 1079
    :cond_2f
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1080
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1081
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1082
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_17

    .line 1087
    :cond_38
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22
.end method

.method setSelectionFromWebKit(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1098
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 1105
    :cond_4
    :goto_4
    return-void

    .line 1099
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1100
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1101
    .local v0, length:I
    if-gt p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    .line 1102
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1103
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1104
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_4
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .registers 9
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 1127
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1128
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1129
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1130
    .local v4, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1131
    .local v3, selEnd:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1132
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1133
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1134
    .local v2, newLength:I
    if-le v4, v2, :cond_24

    move v4, v2

    .line 1135
    :cond_24
    if-le v3, v2, :cond_27

    move v3, v2

    .line 1136
    :cond_27
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1137
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1138
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1139
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3b

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1142
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1144
    :cond_3b
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 1145
    return-void
.end method

.method setType(I)V
    .registers 13
    .parameter "type"

    .prologue
    .line 1156
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v8, :cond_5

    .line 1237
    :goto_4
    return-void

    .line 1157
    :cond_5
    const/4 v7, 0x1

    .line 1158
    .local v7, single:Z
    const/4 v3, 0x0

    .line 1159
    .local v3, inPassword:Z
    const/4 v5, -0x1

    .line 1160
    .local v5, maxLength:I
    const/16 v4, 0xa1

    .line 1162
    .local v4, inputType:I
    const/high16 v2, 0x1200

    .line 1164
    .local v2, imeOptions:I
    const/4 v8, 0x1

    if-eq v8, p1, :cond_1a

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1166
    const/high16 v8, 0x800

    or-int/2addr v2, v8

    .line 1168
    :cond_1a
    packed-switch p1, :pswitch_data_9a

    .line 1211
    or-int/lit8 v2, v2, 0x2

    .line 1214
    :goto_1f
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1215
    if-eqz v7, :cond_5e

    .line 1216
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v9

    iget v10, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1218
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v5

    .line 1219
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v1

    .line 1220
    .local v1, autoComplete:Z
    const/4 v8, 0x2

    if-eq p1, v8, :cond_5e

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v8, :cond_47

    if-eqz v1, :cond_5e

    .line 1221
    :cond_47
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v6

    .line 1222
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5e

    .line 1223
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v10, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v8, v6, v9, v10, v1}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1228
    .end local v1           #autoComplete:Z
    .end local v6           #name:Ljava/lang/String;
    :cond_5e
    iput-boolean v7, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1229
    iput p1, p0, Landroid/webkit/WebTextView;->mType:I

    .line 1230
    invoke-direct {p0, v5}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1231
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1232
    invoke-virtual {p0, v4}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1233
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1234
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_4

    .line 1170
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :pswitch_76
    const/4 v3, 0x1

    .line 1171
    or-int/lit8 v2, v2, 0x2

    .line 1172
    goto :goto_1f

    .line 1174
    :pswitch_7a
    const/4 v7, 0x0

    .line 1175
    const v8, 0x2c000

    or-int/2addr v4, v8

    .line 1178
    or-int/lit8 v2, v2, 0x1

    .line 1179
    goto :goto_1f

    .line 1181
    :pswitch_82
    const/4 v3, 0x1

    .line 1182
    or-int/lit8 v2, v2, 0x2

    .line 1183
    goto :goto_1f

    .line 1185
    :pswitch_86
    or-int/lit8 v2, v2, 0x3

    .line 1186
    goto :goto_1f

    .line 1189
    :pswitch_89
    const/16 v4, 0xd1

    .line 1191
    or-int/lit8 v2, v2, 0x2

    .line 1192
    goto :goto_1f

    .line 1195
    :pswitch_8e
    const/4 v4, 0x2

    .line 1198
    or-int/lit8 v2, v2, 0x5

    .line 1199
    goto :goto_1f

    .line 1202
    :pswitch_92
    const/4 v4, 0x3

    .line 1203
    or-int/lit8 v2, v2, 0x5

    .line 1204
    goto :goto_1f

    .line 1208
    :pswitch_96
    or-int/lit8 v2, v2, 0x2

    .line 1209
    goto :goto_1f

    .line 1168
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_76
        :pswitch_7a
        :pswitch_82
        :pswitch_86
        :pswitch_89
        :pswitch_8e
        :pswitch_92
        :pswitch_96
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .registers 3

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method updateTextSize()V
    .registers 4

    .prologue
    .line 1112
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1118
    .local v0, size:F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1119
    return-void
.end method
