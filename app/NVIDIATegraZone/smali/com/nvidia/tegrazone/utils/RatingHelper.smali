.class public Lcom/nvidia/tegrazone/utils/RatingHelper;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# instance fields
.field private activity:Landroid/app/Activity;

.field public dirtyDialog:Ljava/lang/Boolean;

.field private popup:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->dirtyDialog:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/utils/RatingHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public static setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;
    .locals 3
    .parameter "ratingBar"
    .parameter "feedback"

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingAvg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingAvg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingAvg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingAvg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 41
    .local v0, f:F
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 46
    .end local v0           #f:F
    :goto_0
    return-object p0

    .line 44
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setRatingOnBarByRating(Landroid/widget/RatingBar;Ljava/lang/String;)Landroid/widget/RatingBar;
    .locals 2
    .parameter "ratingBar"
    .parameter "ratingAvg"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 53
    .local v0, f:F
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 58
    .end local v0           #f:F
    :goto_0
    return-object p0

    .line 56
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPopup()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->popup:Landroid/app/Dialog;

    return-object v0
.end method

.method public handleRateThis(Ljava/lang/Boolean;)V
    .locals 13
    .parameter "isRetry"

    .prologue
    .line 62
    iget-object v10, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030030

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 64
    .local v7, ratingDialog:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a00b3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 67
    .local v5, nameTxt:Landroid/widget/EditText;
    const v10, 0x7f0a00b4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 68
    .local v8, titleText:Landroid/widget/EditText;
    const v10, 0x7f0a00b5

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 70
    .local v1, commentText:Landroid/widget/EditText;
    const v10, 0x7f0a00b6

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, focusHelper:Landroid/view/View;
    const v10, 0x7f0a00b5

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 72
    .local v2, finalCommentText:Landroid/widget/EditText;
    const v10, 0x7f0a00b4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 74
    .local v3, finalTitleText:Landroid/widget/EditText;
    new-instance v10, Lcom/nvidia/tegrazone/utils/RatingHelper$1;

    invoke-direct {v10, p0, v3}, Lcom/nvidia/tegrazone/utils/RatingHelper$1;-><init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/widget/EditText;)V

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    new-instance v10, Lcom/nvidia/tegrazone/utils/RatingHelper$2;

    invoke-direct {v10, p0, v2, v7}, Lcom/nvidia/tegrazone/utils/RatingHelper$2;-><init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 101
    new-instance v10, Lcom/nvidia/tegrazone/utils/RatingHelper$3;

    invoke-direct {v10, p0, v4}, Lcom/nvidia/tegrazone/utils/RatingHelper$3;-><init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/view/View;)V

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 116
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v11

    iget-object v11, v11, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v11}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 117
    iget-object v11, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060060

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/nvidia/tegrazone/utils/RatingHelper$4;

    invoke-direct {v12, p0, v7}, Lcom/nvidia/tegrazone/utils/RatingHelper$4;-><init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/view/View;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 125
    iget-object v11, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060061

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/nvidia/tegrazone/utils/RatingHelper$5;

    invoke-direct {v12, p0}, Lcom/nvidia/tegrazone/utils/RatingHelper$5;-><init>(Lcom/nvidia/tegrazone/utils/RatingHelper;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 134
    const v10, 0x7f0a0010

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RatingBar;

    .line 135
    .local v6, ratingBar:Landroid/widget/RatingBar;
    const v10, 0x7f0a00b3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 137
    .local v9, usernameText:Landroid/widget/EditText;
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->dialog_comment:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->dialog_title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->dialog_rating:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/RatingBar;->setRating(F)V

    .line 145
    .end local v6           #ratingBar:Landroid/widget/RatingBar;
    .end local v9           #usernameText:Landroid/widget/EditText;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 147
    return-void
.end method

.method public handleRatingsCancel()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/nvidia/tegrazone/utils/RatingHelper;->dismissPopup()V

    .line 189
    return-void
.end method

.method public handleSubmitClick(Landroid/view/View;)V
    .locals 9
    .parameter "ratingDialog"

    .prologue
    const/4 v8, 0x1

    .line 151
    const v4, 0x7f0a0010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 152
    .local v1, ratingBar:Landroid/widget/RatingBar;
    const v4, 0x7f0a00b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 153
    .local v3, usernameText:Landroid/widget/EditText;
    const v4, 0x7f0a00b4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 154
    .local v2, titleText:Landroid/widget/EditText;
    const v4, 0x7f0a00b5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 156
    .local v0, commentText:Landroid/widget/EditText;
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nvidia/tegrazone/model/NVModel;->dialog_rating:Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nvidia/tegrazone/model/NVModel;->dialog_comment:Ljava/lang/String;

    .line 162
    :cond_0
    if-eqz v2, :cond_1

    .line 163
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nvidia/tegrazone/model/NVModel;->dialog_title:Ljava/lang/String;

    .line 167
    :cond_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    .line 171
    :cond_2
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    .line 174
    iget-object v4, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/utils/RatingHelper;->handleRateThis(Ljava/lang/Boolean;)V

    .line 184
    .end local p0
    :goto_0
    return-void

    .line 181
    .restart local p0
    :cond_3
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->dialog_rating:Ljava/lang/String;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->dialog_comment:Ljava/lang/String;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->dialog_title:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/nvidia/tegrazone/utils/RatingHelper;->sendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/nvidia/tegrazone/RateThisHandler;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->dialog_rating:Ljava/lang/String;

    invoke-interface {p0, v4}, Lcom/nvidia/tegrazone/RateThisHandler;->updateRating(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public sendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "rating"
    .parameter "comment"
    .parameter "title"

    .prologue
    .line 202
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    .line 204
    .local v1, feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, p2, p3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildAddFeedback(FLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->POST_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 206
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 208
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method

.method public serviceResult(I)V
    .locals 5
    .parameter "methodName"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/nvidia/tegrazone/utils/RatingHelper;->dismissPopup()V

    .line 220
    const-string v0, ""

    .line 221
    .local v0, concat:Ljava/lang/String;
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nvidia/tegrazone/utils/RatingHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
