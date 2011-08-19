.class public Lcom/google/android/finsky/adapters/ReviewListAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "ReviewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ReviewListAdapter$2;,
        Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;
    }
.end annotation


# instance fields
.field private final mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/model/ReviewRequest;)V
    .locals 2
    .parameter "context"
    .parameter "api"
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p3}, Lcom/google/android/finsky/model/ReviewRequest;->hadRequestError()Z

    move-result v0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/analytics/Analytics$Event;Z)V

    .line 82
    iput-object p3, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/ReviewRequest;->attach(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 84
    return-void
.end method

.method private bindView(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must initialize View first in setupViewAndHolder()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    .line 187
    .local v0, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-nez v0, :cond_1

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create a view for a null review located at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    invoke-static {v0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->fillReviewItem(Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/view/View;)V

    .line 194
    return-object p1
.end method

.method public static fillReviewItem(Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/view/View;)V
    .locals 11
    .parameter "review"
    .parameter "reviewItem"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 233
    new-instance v7, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;-><init>(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewListAdapter$1;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;

    .line 236
    .local v4, reviewHolder:Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, reviewSource:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, sourceUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 241
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewBy:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 250
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewFrom:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->source:Landroid/widget/TextView;

    new-instance v8, Lcom/google/android/finsky/adapters/ReviewListAdapter$1;

    invoke-direct {v8, v6}, Lcom/google/android/finsky/adapters/ReviewListAdapter$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, reviewComment:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 267
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 272
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v7, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 273
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setRating(F)V

    .line 278
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 280
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v1

    .line 281
    .local v1, milliseconds:J
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewDate:Landroid/widget/TextView;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/google/android/finsky/utils/DateUtils;->formatDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewOn:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewDate:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    .end local v1           #milliseconds:J
    :goto_3
    return-void

    .line 245
    .end local v3           #reviewComment:Ljava/lang/String;
    :cond_2
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewBy:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewFrom:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 275
    .restart local v3       #reviewComment:Ljava/lang/String;
    :cond_4
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v7, v10}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_2

    .line 286
    :cond_5
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewOn:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v7, v4, Lcom/google/android/finsky/adapters/ReviewListAdapter$ReviewHolder;->reviewDate:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private getItemCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v0

    return v0
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 150
    const v1, 0x7f04003f

    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->setupView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->bindView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method private hasItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/model/ReviewRequest;->hasItem(I)Z

    move-result v0

    return v0
.end method

.method private setupView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"
    .parameter "resourceId"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 170
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/model/ReviewRequest;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->hasItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    sget-object v0, Lcom/google/android/finsky/adapters/ReviewListAdapter$2;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No footer or item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 92
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x3

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method protected retryLoadingItems()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewListAdapter;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->retryLoadItems()V

    .line 304
    return-void
.end method
