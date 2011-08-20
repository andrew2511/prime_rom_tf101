.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 77
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 82
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .registers 3

    .prologue
    .line 86
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 88
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 89
    return-void
.end method

.method private onProgressChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 345
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 346
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 347
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :cond_13
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .registers 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .registers 10
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 98
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .registers 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .registers 7
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 109
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 116
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 238
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 240
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_a
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 226
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_a
.end method

.method public getSecondaryProgress()I
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 231
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 233
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_a
.end method

.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 254
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 255
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 259
    :goto_c
    return-void

    .line 257
    :cond_d
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 263
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 264
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 268
    :goto_c
    return-void

    .line 266
    :cond_d
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 298
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const v4, 0x102000d

    .line 121
    iget-object v2, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_92

    .line 127
    new-instance v2, Landroid/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v2, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 152
    const v2, 0x1090022

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 154
    const v2, 0x1020213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 155
    const v2, 0x1020212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 163
    :goto_3e
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_47

    .line 164
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 166
    :cond_47
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_50

    .line 167
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 169
    :cond_50
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_59

    .line 170
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 172
    :cond_59
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_62

    .line 173
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 175
    :cond_62
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_6b

    .line 176
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 178
    :cond_6b
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_74

    .line 179
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_74
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7d

    .line 182
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_7d
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_86

    .line 185
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    :cond_86
    iget-boolean v2, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 188
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 189
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 190
    return-void

    .line 158
    .end local v1           #view:Landroid/view/View;
    :cond_92
    const v2, 0x1090070

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 160
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_3e
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 196
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 202
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 292
    :goto_9
    return-void

    .line 290
    :cond_a
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 279
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :goto_9
    return-void

    .line 282
    :cond_a
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 245
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 246
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 250
    :goto_c
    return-void

    .line 248
    :cond_d
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 303
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_13

    .line 304
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 305
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    :goto_c
    return-void

    .line 307
    :cond_d
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 310
    :cond_13
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_c
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 211
    :goto_c
    return-void

    .line 209
    :cond_d
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_9
    return-void

    .line 274
    :cond_a
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 327
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 329
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 340
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 341
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 342
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 315
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 316
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 216
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 220
    :goto_c
    return-void

    .line 218
    :cond_d
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_c
.end method
