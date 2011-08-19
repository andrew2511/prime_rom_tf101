.class public Lcom/android/vending/CommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentsAdapter.java"


# instance fields
.field protected mCommentRatingClickListener:Landroid/view/View$OnClickListener;

.field private mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "commentRatingClickListener"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/android/vending/CommentsAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/vending/CommentsAdapter;->mCommentRatingClickListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method public addComment(Lcom/android/vending/model/Comment;)V
    .locals 1
    .parameter "comment"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/vending/CommentsAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0800af

    if-ne v10, v11, :cond_0

    .line 81
    move-object v4, p2

    .line 85
    .local v4, commentsView:Landroid/view/View;
    :goto_0
    iget-object v10, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Comment;

    .line 87
    .local v1, comment:Lcom/android/vending/model/Comment;
    const v10, 0x7f08004c

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, author:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->hasCreatorName()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->getCreatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_1
    const v10, 0x7f0800b0

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 95
    .local v9, time:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->hasCreationTime()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->getCreationTime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 97
    .local v6, date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/vending/CommentsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v6           #date:Ljava/util/Date;
    :goto_2
    const v10, 0x7f0800b2

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, commentBody:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->hasBody()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 104
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_3
    const v10, 0x7f08001c

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RatingBar;

    .line 110
    .local v8, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->hasRating()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 111
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 112
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->getRating()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/widget/RatingBar;->setRating(F)V

    .line 117
    :goto_4
    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->hasCreatorId()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcom/android/vending/model/Comment;->getCreatorId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 120
    .local v5, creatorIdTag:Ljava/lang/String;
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    const v10, 0x7f0800b1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 124
    .local v3, commentRatingIcon:Landroid/widget/ImageView;
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v10, p0, Lcom/android/vending/CommentsAdapter;->mCommentRatingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    move-object v7, v4

    .line 130
    .local v7, finalCommentsView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v11, Lcom/android/vending/CommentsAdapter$1;

    invoke-direct {v11, p0, v3, v7}, Lcom/android/vending/CommentsAdapter$1;-><init>(Lcom/android/vending/CommentsAdapter;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 138
    return-object v4

    .line 83
    .end local v0           #author:Landroid/widget/TextView;
    .end local v1           #comment:Lcom/android/vending/model/Comment;
    .end local v2           #commentBody:Landroid/widget/TextView;
    .end local v3           #commentRatingIcon:Landroid/widget/ImageView;
    .end local v4           #commentsView:Landroid/view/View;
    .end local v5           #creatorIdTag:Ljava/lang/String;
    .end local v7           #finalCommentsView:Landroid/view/View;
    .end local v8           #ratingBar:Landroid/widget/RatingBar;
    .end local v9           #time:Landroid/widget/TextView;
    :cond_0
    const v10, 0x7f04002f

    iget-object v11, p0, Lcom/android/vending/CommentsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .restart local v4       #commentsView:Landroid/view/View;
    goto/16 :goto_0

    .line 91
    .restart local v0       #author:Landroid/widget/TextView;
    .restart local v1       #comment:Lcom/android/vending/model/Comment;
    :cond_1
    const-string v10, ""

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 99
    .restart local v9       #time:Landroid/widget/TextView;
    :cond_2
    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 106
    .restart local v2       #commentBody:Landroid/widget/TextView;
    :cond_3
    const-string v10, ""

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 114
    .restart local v8       #ratingBar:Landroid/widget/RatingBar;
    :cond_4
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_4

    .line 117
    :cond_5
    const-string v10, "UNKNOWN"

    move-object v5, v10

    goto :goto_5
.end method

.method public removeComment(Ljava/lang/String;)V
    .locals 3
    .parameter "creatorId"

    .prologue
    .line 147
    const/4 v1, -0x1

    .line 148
    .local v1, indexToRemove:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Comment;

    invoke-virtual {v2}, Lcom/android/vending/model/Comment;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 150
    move v1, v0

    .line 155
    :cond_0
    if-ltz v1, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/vending/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/android/vending/CommentsAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_1
    return-void

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
