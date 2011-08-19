.class public final Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;
.super Ljava/lang/Object;
.source "CommentUtil.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/CommentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentRatingDialogAccessor"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/vending/BaseActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAssetId:Ljava/lang/String;

.field private mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field private final mCommentRatingChoices:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field private mCreatorId:Ljava/lang/String;

.field private final mLifecycleHandler:Lcom/android/vending/util/CommentUtil$LifecycleHandler;

.field private final mMarkedAsSpamHandler:Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;

.field private final mResourceIdChoices:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;Lcom/android/vending/util/CommentUtil$LifecycleHandler;)V
    .locals 6
    .parameter "activity"
    .parameter "markedAsSpamHandler"
    .parameter "lifecycleHandler"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v5, [Ljava/lang/Integer;

    const v1, 0x7f0700c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0700c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0700c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mResourceIdChoices:[Ljava/lang/Integer;

    .line 68
    new-array v0, v5, [Lcom/android/vending/model/RateCommentRequest$CommentRating;

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->NOT_HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRatingChoices:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 83
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mActivity:Lcom/android/vending/BaseActivity;

    .line 84
    iput-object p2, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mMarkedAsSpamHandler:Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;

    .line 85
    iput-object p3, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mLifecycleHandler:Lcom/android/vending/util/CommentUtil$LifecycleHandler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;Lcom/android/vending/model/RateCommentRequest$CommentRating;)Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)[Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRatingChoices:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/util/CommentUtil$LifecycleHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mLifecycleHandler:Lcom/android/vending/util/CommentUtil$LifecycleHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCreatorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mMarkedAsSpamHandler:Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 10

    .prologue
    .line 90
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mResourceIdChoices:[Ljava/lang/Integer;

    array-length v4, v7

    .line 91
    .local v4, numChoices:I
    new-array v0, v4, [Ljava/lang/String;

    .line 92
    .local v0, commentRatingStrings:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 93
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mActivity:Lcom/android/vending/BaseActivity;

    iget-object v8, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mResourceIdChoices:[Ljava/lang/Integer;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v3, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;

    invoke-direct {v3, p0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;-><init>(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)V

    .line 112
    .local v3, listItemClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;

    invoke-direct {v6, p0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;-><init>(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)V

    .line 121
    .local v6, okButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mLifecycleHandler:Lcom/android/vending/util/CommentUtil$LifecycleHandler;

    invoke-interface {v7}, Lcom/android/vending/util/CommentUtil$LifecycleHandler;->getDefaultSelectedPosition()I

    move-result v1

    .line 125
    .local v1, defaultSelectedPosition:I
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mActivity:Lcom/android/vending/BaseActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f020036

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0700c1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    .line 134
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->hide()V

    .line 136
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$3;

    invoke-direct {v8, p0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$3;-><init>(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 142
    if-gez v1, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 145
    .local v5, ok:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    .end local v5           #ok:Landroid/widget/Button;
    :cond_1
    iget-object v7, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v7
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 168
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 151
    const-string v1, "spam_dlg_asset_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAssetId:Ljava/lang/String;

    .line 152
    const-string v1, "spam_dlg_creator_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCreatorId:Ljava/lang/String;

    .line 153
    const-string v1, "spam_dlg_comment_rating"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, commentRatingString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/android/vending/model/RateCommentRequest$CommentRating;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/RateCommentRequest$CommentRating;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 157
    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 160
    const-string v0, "spam_dlg_asset_id"

    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "spam_dlg_creator_id"

    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCreatorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "spam_dlg_comment_rating"

    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    invoke-virtual {v1}, Lcom/android/vending/model/RateCommentRequest$CommentRating;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setCommentInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "assetId"
    .parameter "creatorId"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mAssetId:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->mCreatorId:Ljava/lang/String;

    .line 179
    return-void
.end method
