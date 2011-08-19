.class public Lcom/asus/filemanager/dialog/DialogExist;
.super Landroid/app/AlertDialog;
.source "DialogExist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/dialog/DialogExist$1;,
        Lcom/asus/filemanager/dialog/DialogExist$CancelListener;,
        Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;
    }
.end annotation


# instance fields
.field apContext:Landroid/content/Context;

.field cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

.field dialogID:I

.field private mCheckApply:Landroid/widget/CheckBox;

.field private mFileName:Landroid/widget/TextView;

.field private mNewDate:Landroid/widget/TextView;

.field private mNewIcon:Landroid/widget/ImageView;

.field private mNewSize:Landroid/widget/TextView;

.field private mOldDate:Landroid/widget/TextView;

.field private mOldIcon:Landroid/widget/ImageView;

.field private mOldSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "cb"

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogExist;->apContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/asus/filemanager/dialog/DialogExist;->dialogID:I

    .line 44
    iput-object p3, p0, Lcom/asus/filemanager/dialog/DialogExist;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 47
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030001

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, existView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/asus/filemanager/dialog/DialogExist;->setView(Landroid/view/View;)V

    .line 50
    const v4, 0x1080027

    invoke-virtual {p0, v4}, Lcom/asus/filemanager/dialog/DialogExist;->setIcon(I)V

    .line 51
    const v4, 0x7f050020

    invoke-virtual {p0, v4}, Lcom/asus/filemanager/dialog/DialogExist;->setTitle(I)V

    .line 53
    new-instance v3, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;

    invoke-direct {v3, p0, v5}, Lcom/asus/filemanager/dialog/DialogExist$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogExist;Lcom/asus/filemanager/dialog/DialogExist$1;)V

    .line 54
    .local v3, l:Lcom/asus/filemanager/dialog/DialogExist$CancelListener;
    new-instance v0, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;

    invoke-direct {v0, p0, v5}, Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;-><init>(Lcom/asus/filemanager/dialog/DialogExist;Lcom/asus/filemanager/dialog/DialogExist$1;)V

    .line 55
    .local v0, d:Lcom/asus/filemanager/dialog/DialogExist$DeleteListener;
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/asus/filemanager/dialog/DialogExist;->apContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/asus/filemanager/dialog/DialogExist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    const/4 v4, -0x3

    iget-object v5, p0, Lcom/asus/filemanager/dialog/DialogExist;->apContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/asus/filemanager/dialog/DialogExist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const/4 v4, -0x2

    iget-object v5, p0, Lcom/asus/filemanager/dialog/DialogExist;->apContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/asus/filemanager/dialog/DialogExist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/asus/filemanager/dialog/DialogExist;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 59
    return-void
.end method

.method private FinishDialog(ZZZ)V
    .locals 4
    .parameter "r"
    .parameter "isOverWrite"
    .parameter "isApplyAll"

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "RETURN_SUCCESS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v1, "RETURN_BOOLEAN_ARRAY"

    const/4 v2, 0x2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput-boolean p2, v2, v3

    const/4 v3, 0x1

    aput-boolean p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 97
    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogExist;->cbFunc:Lcom/asus/filemanager/dialog/IDialogCallBack;

    iget v2, p0, Lcom/asus/filemanager/dialog/DialogExist;->dialogID:I

    invoke-interface {v1, v2, v0}, Lcom/asus/filemanager/dialog/IDialogCallBack;->onFinishDialog(ILandroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method static synthetic access$200(Lcom/asus/filemanager/dialog/DialogExist;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mCheckApply:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/filemanager/dialog/DialogExist;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/filemanager/dialog/DialogExist;->FinishDialog(ZZZ)V

    return-void
.end method


# virtual methods
.method public PrepareDialog(Lcom/asus/filemanager/edit/ExistPair;)V
    .locals 10
    .parameter "pair"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mFileName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mFileName:Landroid/widget/TextView;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mCheckApply:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mCheckApply:Landroid/widget/CheckBox;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldIcon:Landroid/widget/ImageView;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewIcon:Landroid/widget/ImageView;

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldSize:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldSize:Landroid/widget/TextView;

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewSize:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewSize:Landroid/widget/TextView;

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldDate:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldDate:Landroid/widget/TextView;

    .line 69
    :cond_6
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewDate:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/asus/filemanager/dialog/DialogExist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewDate:Landroid/widget/TextView;

    .line 70
    :cond_7
    if-nez p1, :cond_8

    .line 91
    :goto_0
    return-void

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mFileName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asus/filemanager/dialog/DialogExist;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050021

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getOldFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getOldFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->GetIconRes(Lcom/asus/filemanager/main/VFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getNewFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/asus/filemanager/adapter/ItemIcon;->GetIconRes(Lcom/asus/filemanager/main/VFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getOldFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldSize:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewSize:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldDate:Landroid/widget/TextView;

    invoke-static {v7, v8}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getOldFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewDate:Landroid/widget/TextView;

    invoke-static {v7, v8}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getNewFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mCheckApply:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldSize:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewSize:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mOldSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getOldFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2, v6}, Lcom/asus/filemanager/edit/EditUtil;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogExist;->mNewSize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/asus/filemanager/edit/ExistPair;->getNewFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2, v6}, Lcom/asus/filemanager/edit/EditUtil;->Bytes2String(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
