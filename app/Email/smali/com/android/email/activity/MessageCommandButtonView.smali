.class public Lcom/android/email/activity/MessageCommandButtonView;
.super Landroid/widget/LinearLayout;
.source "MessageCommandButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;,
        Lcom/android/email/activity/MessageCommandButtonView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

.field private mMessagePosition:Landroid/widget/TextView;

.field private mMoveToNewerButton:Landroid/view/View;

.field private mMoveToOlderButton:Landroid/view/View;

.field private mShowPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 60
    return-void
.end method


# virtual methods
.method public enableNavigationButtons(ZZII)V
    .locals 6
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 93
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    if-nez p4, :cond_1

    .line 102
    const-string v0, ""

    .line 107
    .local v0, positionOfCount:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMessagePosition:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    .end local v0           #positionOfCount:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCommandButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08016a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #positionOfCount:Ljava/lang/String;
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToNewer()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToOlder()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f0f005c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f0f005c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    .line 80
    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/view/View;

    .line 81
    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMessagePosition:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 88
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 89
    return-void

    :cond_0
    move-object v0, p1

    .line 88
    goto :goto_0
.end method
