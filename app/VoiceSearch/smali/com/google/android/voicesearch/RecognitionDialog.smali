.class public Lcom/google/android/voicesearch/RecognitionDialog;
.super Landroid/widget/LinearLayout;
.source "RecognitionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionDialog"


# instance fields
.field private mBody:Landroid/view/View;

.field private mBrandingText:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpHintButton:Landroid/widget/Button;

.field private mImage:Landroid/widget/ImageView;

.field private mImageOverlaySpinner:Landroid/view/View;

.field private mIsError:Z

.field private mLanguageText:Landroid/widget/TextView;

.field private mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

.field private mLogo:Landroid/widget/ImageView;

.field private mShowHelpButton:Z

.field private mShowHelpHintBubble:Z

.field private mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

.field private mText:Landroid/widget/TextView;

.field private mTryAgainButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    .line 63
    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImageOverlaySpinner:Landroid/view/View;

    .line 78
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    .line 79
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBrandingText:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBody:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionDialog$1;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionDialog$2;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionDialog$3;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionDialog$4;-><init>(Lcom/google/android/voicesearch/RecognitionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mError:Landroid/graphics/drawable/Drawable;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/RecognitionDialog;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    .line 322
    add-int v1, v0, p3

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 323
    const/4 v2, 0x0

    .line 324
    :goto_0
    if-ge v0, v1, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    div-int v0, v2, p3

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->stopAudioMeter()V

    .line 335
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    return v0
.end method

.method public setBrandingText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBrandingText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBrandingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDebugHeaderText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    return-void
.end method

.method public setLanguageText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/google/android/voicesearch/RecognitionDialog$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    .line 340
    return-void
.end method

.method public setShowHelpButton(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    .line 133
    return-void
.end method

.method public setShowHelpHintBubble(Z)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    .line 137
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 231
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->stopAudioMeter()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 235
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImageOverlaySpinner:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBrandingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBody:Landroid/view/View;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    return-void
.end method

.method public showListening()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 167
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 168
    const v0, 0x7f090702

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mImageOverlaySpinner:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setRmsdB(F)V

    .line 173
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpHintBubble:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mShowHelpButton:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020045

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBody:Landroid/view/View;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "RecognitionDialog"

    const-string v1, "text must be focusable in touch mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->start()V

    .line 187
    return-void

    :cond_1
    move v1, v3

    .line 174
    goto :goto_0

    :cond_2
    move v1, v3

    .line 175
    goto :goto_1

    .line 177
    :cond_3
    const v1, 0x7f020026

    goto :goto_2
.end method

.method public showWave(Ljava/nio/ShortBuffer;II)V
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImageOverlaySpinner:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 260
    if-lez v5, :cond_0

    if-gtz v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 265
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 267
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 269
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    new-instance v9, Landroid/graphics/CornerPathEffect;

    const/high16 v10, 0x4040

    invoke-direct {v9, v10}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 273
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v9

    .line 277
    if-nez p3, :cond_3

    .line 283
    :goto_1
    const/16 v10, 0x7d0

    sub-int v10, p2, v10

    .line 284
    if-gez v10, :cond_2

    .line 285
    const/4 v10, 0x0

    .line 290
    :cond_2
    sub-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xc8

    .line 291
    const/high16 v11, 0x3f80

    int-to-float v5, v5

    mul-float/2addr v5, v11

    int-to-float v11, v9

    div-float/2addr v5, v11

    .line 292
    div-int/lit8 v11, v4, 0x2

    .line 293
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 294
    const/4 v13, 0x0

    int-to-float v14, v11

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    const/4 v13, 0x0

    .line 296
    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 297
    add-int/lit8 v11, v11, -0xa

    .line 298
    const/4 v14, 0x0

    move/from16 v19, v14

    move v14, v13

    move/from16 v13, v19

    :goto_2
    if-ge v13, v9, :cond_5

    .line 299
    const/16 v15, 0xc8

    move-object/from16 v0, p1

    move v1, v10

    move v2, v13

    move v3, v15

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/voicesearch/RecognitionDialog;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v15

    .line 300
    and-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_4

    const/16 v16, -0x1

    .line 301
    :goto_3
    move v0, v11

    int-to-float v0, v0

    move/from16 v17, v0

    mul-int/2addr v15, v4

    int-to-float v15, v15

    const/high16 v18, 0x3920

    mul-float v15, v15, v18

    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    .line 302
    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    add-float/2addr v14, v5

    .line 304
    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 280
    :cond_3
    move/from16 v0, p3

    move v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_1

    .line 300
    :cond_4
    const/16 v16, 0x1

    goto :goto_3

    .line 306
    :cond_5
    const/high16 v4, 0x4080

    cmpl-float v4, v5, v4

    if-lez v4, :cond_6

    .line 307
    const/high16 v4, 0x4000

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    :goto_4
    invoke-virtual {v7, v12, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionDialog;->mImage:Landroid/widget/ImageView;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    const/4 v4, 0x0

    float-to-double v9, v5

    const-wide v13, 0x3fa999999999999aL

    sub-double/2addr v9, v13

    double-to-int v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4
.end method

.method public showWorking()V
    .locals 3

    .prologue
    const v2, 0x7f020026

    const/16 v1, 0x8

    .line 190
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionDialog;->stopAudioMeter()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mIsError:Z

    .line 192
    const v0, 0x7f090703

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mHelpHintButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBrandingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mLanguageText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mBody:Landroid/view/View;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 202
    return-void
.end method

.method public stopAudioMeter()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->stop()V

    .line 347
    return-void
.end method

.method public updateAudioLevel(F)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog;->mSoundIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setRmsdB(F)V

    .line 164
    return-void
.end method
