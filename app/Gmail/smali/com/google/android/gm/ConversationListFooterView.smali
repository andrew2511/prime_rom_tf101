.class public Lcom/google/android/gm/ConversationListFooterView;
.super Landroid/widget/LinearLayout;
.source "ConversationListFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationListFooterView$1;
    }
.end annotation


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mLoading:Landroid/view/View;

.field private mNetworkError:Landroid/view/View;

.field private mRetry:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;
    .locals 3
    .parameter "cursorError"

    .prologue
    .line 77
    sget-object v1, Lcom/google/android/gm/ConversationListFooterView$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorError:[I

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$CursorError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, errorString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 81
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 4
    .parameter "cursorStatus"
    .parameter "cursorError"
    .parameter "conversationCursor"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/google/android/gm/ConversationListFooterView$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 56
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/android/gm/ConversationListFooterView;->getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    if-ne p2, v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->retry()V

    .line 36
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    .line 28
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    .line 29
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    .line 32
    return-void
.end method
