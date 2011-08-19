.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedUpdateButton:Z

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 119
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 250
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 254
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 8

    .prologue
    const v7, 0x7f06000e

    const v4, 0x7f06000d

    const v3, 0x7f06000c

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 265
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_5

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 268
    const v1, 0x7f04001d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 271
    const v1, 0x7f04001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 274
    const v1, 0x7f04001f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 278
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v1, :cond_4

    .line 279
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .end local v0           #tmp:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_3
    return-void

    .line 280
    .restart local v0       #tmp:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_1

    .line 281
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    .end local v0           #tmp:Ljava/lang/String;
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 287
    const v1, 0x7f04002a

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 290
    const v1, 0x7f04001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f04002b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 297
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 298
    const v1, 0x7f04002c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 299
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 300
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 303
    .end local v0           #tmp:Ljava/lang/String;
    :cond_9
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 304
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_a

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 306
    const v1, 0x7f040040

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 309
    const v1, 0x7f040025

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f040041

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 328
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 316
    .end local v0           #tmp:Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 317
    const v1, 0x7f040024

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 320
    const v1, 0x7f040025

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 323
    const v1, 0x7f040026

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 329
    .end local v0           #tmp:Ljava/lang/String;
    :cond_b
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 330
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 331
    const v1, 0x7f04002f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 334
    const v1, 0x7f040030

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 337
    const v1, 0x7f040026

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 341
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayWhichDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 180
    .local v0, direction:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 181
    .local v2, isSuccess:Z
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    .line 183
    .local v1, isComplete:Z
    if-ne v0, v4, :cond_3

    .line 184
    if-ne v1, v4, :cond_2

    .line 185
    if-ne v2, v4, :cond_1

    .line 187
    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-nez v2, :cond_0

    .line 189
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 191
    :cond_2
    if-nez v1, :cond_0

    .line 192
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 194
    :cond_3
    if-nez v0, :cond_0

    .line 195
    if-ne v1, v4, :cond_5

    .line 196
    if-ne v2, v4, :cond_4

    .line 197
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 199
    :cond_4
    if-nez v2, :cond_0

    .line 200
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 202
    :cond_5
    if-nez v1, :cond_0

    .line 203
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 3

    .prologue
    const v2, 0x1080027

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 217
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 239
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 240
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setupAlert()V

    .line 241
    return-void

    .line 222
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 225
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 229
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 232
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method private updateButton()V
    .locals 6

    .prologue
    const v5, 0x1080027

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 456
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 462
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 471
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateProgressbar()V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 437
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateButton()V

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 351
    packed-switch p2, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 415
    return-void

    .line 353
    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v4, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 359
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 362
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 364
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 371
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 375
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 377
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 380
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const v2, 0x7f04003d

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 386
    .end local v1           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 388
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 394
    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_6

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    const-string v0, ""

    .line 399
    .local v0, msg:Ljava/lang/String;
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v2, :cond_5

    .line 400
    const v2, 0x7f04003c

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_4
    :goto_1
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 406
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 401
    :cond_5
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_4

    .line 402
    const v2, 0x7f04003f

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 408
    .end local v0           #msg:Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 138
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 140
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    .line 148
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 151
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 162
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setUpDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 176
    return-void
.end method
