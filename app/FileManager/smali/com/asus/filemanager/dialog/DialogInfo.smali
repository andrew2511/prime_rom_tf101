.class public Lcom/asus/filemanager/dialog/DialogInfo;
.super Landroid/app/AlertDialog;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;,
        Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;,
        Lcom/asus/filemanager/dialog/DialogInfo$FileInfo;
    }
.end annotation


# instance fields
.field mCbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

.field mContext:Landroid/content/Context;

.field mDialogID:I

.field private mFile:Lcom/asus/filemanager/main/VFile;

.field private mFileNumView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mNum:J

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

.field private mSize:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 172
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    .line 174
    iput-object v4, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    .line 178
    new-instance v2, Lcom/asus/filemanager/dialog/DialogInfo$1;

    invoke-direct {v2, p0}, Lcom/asus/filemanager/dialog/DialogInfo$1;-><init>(Lcom/asus/filemanager/dialog/DialogInfo;)V

    iput-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mHandler:Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mContext:Landroid/content/Context;

    .line 214
    iput p2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mDialogID:I

    .line 215
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mCbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    .line 217
    const v2, 0x7f020022

    invoke-virtual {p0, v2}, Lcom/asus/filemanager/dialog/DialogInfo;->setIcon(I)V

    .line 219
    const-string v2, "File Information"

    invoke-virtual {p0, v2}, Lcom/asus/filemanager/dialog/DialogInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    .line 223
    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/asus/filemanager/dialog/DialogInfo;->setView(Landroid/view/View;)V

    .line 225
    new-instance v1, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;

    invoke-direct {v1, p0, v4}, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogInfo;Lcom/asus/filemanager/dialog/DialogInfo$1;)V

    .line 226
    .local v1, l:Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/asus/filemanager/dialog/DialogInfo;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogInfo;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 228
    return-void
.end method

.method public static BigDecimal2String(Ljava/math/BigDecimal;I)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "point"

    .prologue
    const/4 v4, 0x4

    .line 128
    move-object v1, p0

    .line 129
    .local v1, result:Ljava/math/BigDecimal;
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 130
    .local v0, cal:Ljava/math/BigDecimal;
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 134
    :cond_0
    move-object v1, v0

    .line 135
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 136
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_1
    move-object v1, v0

    .line 141
    const-wide/32 v2, 0x40000000

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 142
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_2

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 146
    :cond_2
    move-object v1, v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private FinishDialog(Z)V
    .locals 3
    .parameter "r"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    invoke-virtual {v1}, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->terminate()V

    .line 290
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    .line 291
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "RETURN_SUCCESS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mCbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mDialogID:I

    invoke-interface {v1, v2, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/asus/filemanager/dialog/DialogInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/asus/filemanager/dialog/DialogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/asus/filemanager/dialog/DialogInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogInfo;->FinishDialog(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileSizeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileNumView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public PrepareDialog(Lcom/asus/filemanager/main/VFile;)V
    .locals 7
    .parameter "file"

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFile:Lcom/asus/filemanager/main/VFile;

    .line 238
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/asus/filemanager/dialog/DialogInfo;->setTitle(I)V

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 245
    .local v1, fileNameView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    .local v2, filePermissionView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getAttrSimple()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, fileModifiedView:Landroid/widget/TextView;
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileSizeView:Landroid/widget/TextView;

    .line 256
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileSizeView:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/asus/filemanager/edit/EditUtil;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileNumView:Landroid/widget/TextView;

    .line 258
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileNumView:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    const/high16 v4, 0x101

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mProgressView:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 241
    .end local v0           #fileModifiedView:Landroid/widget/TextView;
    .end local v1           #fileNameView:Landroid/widget/TextView;
    .end local v2           #filePermissionView:Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f05002c

    invoke-virtual {p0, v3}, Lcom/asus/filemanager/dialog/DialogInfo;->setTitle(I)V

    goto/16 :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 309
    const-string v0, "DialogInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState mSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "mNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    .line 311
    const-string v0, "mSize"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    .line 312
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 298
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    invoke-virtual {v1}, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;->terminate()V

    .line 301
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "mSize"

    iget-object v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "mNum"

    iget-wide v2, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    const-string v1, "DialogInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState mSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const v3, 0x7f08000e

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 265
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 266
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileSizeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->length()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/asus/filemanager/edit/EditUtil;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    new-instance v0, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-direct {v0, p0, v1}, Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;-><init>(Lcom/asus/filemanager/dialog/DialogInfo;Lcom/asus/filemanager/main/VFile;)V

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    .line 275
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mRunnable:Lcom/asus/filemanager/dialog/DialogInfo$CalculateRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mThread:Ljava/lang/Thread;

    .line 276
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    const-string v0, "DialogInfo"

    const-string v1, "start Calculate Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_1
    const-string v0, "DialogInfo"

    const-string v1, "Set size and num directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileSizeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mFileNumView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/asus/filemanager/dialog/DialogInfo;->mNum:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
