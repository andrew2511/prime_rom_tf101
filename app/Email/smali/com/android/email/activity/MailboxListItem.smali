.class public Lcom/android/email/activity/MailboxListItem;
.super Landroid/widget/RelativeLayout;
.source "MailboxListItem.java"


# static fields
.field private static sDropAvailableBgColor:Ljava/lang/Integer;

.field private static sDropUnavailableFgColor:Ljava/lang/Integer;

.field private static sTextPrimaryColor:Ljava/lang/Integer;

.field private static sTextSecondaryColor:Ljava/lang/Integer;


# instance fields
.field public mAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mLabelCount:Landroid/widget/TextView;

.field private mLabelName:Landroid/widget/TextView;

.field public mMailboxId:J

.field public mMailboxType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public isDropTarget(J)Z
    .locals 5
    .parameter "itemMailbox"

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 76
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 60
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    sget-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    .line 64
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    .line 65
    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextPrimaryColor:Ljava/lang/Integer;

    .line 66
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextSecondaryColor:Ljava/lang/Integer;

    .line 68
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f0f004a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0f005a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public setDropTargetBackground(ZJ)V
    .locals 3
    .parameter "dragInProgress"
    .parameter "itemMailbox"

    .prologue
    .line 80
    sget-object v2, Lcom/android/email/activity/MailboxListItem;->sTextPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, labelNameColor:I
    sget-object v2, Lcom/android/email/activity/MailboxListItem;->sTextSecondaryColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, labelCountColor:I
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p0, p2, p3}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListItem;->setBackgroundColor(I)V

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v2, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-void

    .line 86
    :cond_0
    sget-object v2, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    sget-object v2, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxListItem;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
