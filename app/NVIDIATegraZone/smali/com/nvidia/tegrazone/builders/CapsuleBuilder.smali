.class public Lcom/nvidia/tegrazone/builders/CapsuleBuilder;
.super Ljava/lang/Object;
.source "CapsuleBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method public static buildAppCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallGameVO;IZ)Landroid/view/View;
    .locals 9
    .parameter "linflater"
    .parameter "game"
    .parameter "position"
    .parameter "showBoxed"

    .prologue
    .line 292
    const v0, 0x7f03000b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 293
    .local p0, appCapsule:Landroid/view/View;
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    .local v1, firstLine:Landroid/widget/TextView;
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 295
    .local v6, secondLine:Landroid/widget/TextView;
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 296
    .local v5, reviewLine:Landroid/widget/TextView;
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    .local v3, priceLine:Landroid/widget/TextView;
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 300
    .local v4, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 302
    const-string v0, ""

    .line 304
    .local v0, developerString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v7

    array-length v7, v7

    if-lt v2, v7, :cond_4

    .line 311
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .end local v0           #developerString:Ljava/lang/String;
    .end local v2           #j:I
    :cond_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .end local v1           #firstLine:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 332
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_2
    :goto_2
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    if-eqz p3, :cond_b

    .line 357
    const p3, 0x7f0a001c

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p3
    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    const p3, 0x7f0a0012

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 361
    rem-int/lit8 p2, p2, 0x2

    .end local p2
    if-eqz p2, :cond_a

    .line 362
    const p2, 0x7f020007

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    :goto_3
    const p2, 0x7f0a001d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 378
    .local p2, iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getSmallImage()Ljava/lang/String;

    move-result-object p3

    .line 379
    .local p3, imgURL:Ljava/lang/String;
    invoke-virtual {p2, p3}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 383
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 386
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 388
    return-object p0

    .line 305
    .restart local v0       #developerString:Ljava/lang/String;
    .restart local v1       #firstLine:Landroid/widget/TextView;
    .restart local v2       #j:I
    .restart local p1
    .local p2, position:I
    .local p3, showBoxed:Z
    :cond_4
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_5

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #developerString:Ljava/lang/String;
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0       #developerString:Ljava/lang/String;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 308
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #developerString:Ljava/lang/String;
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #developerString:Ljava/lang/String;
    goto :goto_4

    .line 335
    .end local v0           #developerString:Ljava/lang/String;
    .end local v1           #firstLine:Landroid/widget/TextView;
    .end local v2           #j:I
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 344
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 345
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, releaseDate:Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 348
    :cond_8
    const-string v0, ""

    .end local v0           #releaseDate:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 350
    .restart local v0       #releaseDate:Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 364
    .end local v0           #releaseDate:Ljava/lang/String;
    .end local p2           #position:I
    .end local p3           #showBoxed:Z
    :cond_a
    const p2, 0x7f020005

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 368
    .restart local p2       #position:I
    .restart local p3       #showBoxed:Z
    :cond_b
    rem-int/lit8 p2, p2, 0x2

    .end local p2           #position:I
    if-eqz p2, :cond_c

    .line 369
    const p2, 0x7f02000b

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 371
    :cond_c
    const p2, 0x7f02000f

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method public static buildNewsCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;IZ)Landroid/view/View;
    .locals 6
    .parameter "linflater"
    .parameter "news"
    .parameter "position"
    .parameter "showBoxed"

    .prologue
    .line 394
    const v0, 0x7f030029

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 396
    .local v2, newsCapsule:Landroid/view/View;
    const p0, 0x7f0a00a5

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p0
    move-result-object v1

    check-cast v1, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 399
    .local v1, iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    const p0, 0x7f0a00a6

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 400
    .local p0, firstLine:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object p0

    .end local p0           #firstLine:Landroid/widget/TextView;
    iget-object p0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object p0

    iget-object p0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 403
    :cond_0
    const p0, 0x7f0a00a9

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 404
    .local v3, sourceLine:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getAuthor()Ljava/lang/String;

    move-result-object p0

    .line 405
    .local p0, author:Ljava/lang/String;
    if-eqz p0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060004

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #author:Ljava/lang/String;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .end local v0           #format:Ljava/lang/String;
    .end local v3           #sourceLine:Landroid/widget/TextView;
    :cond_1
    const p0, 0x7f0a00a7

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 414
    .local p0, dateLine:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/StringSupport;->formatDateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :goto_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object p0

    .end local p0           #dateLine:Landroid/widget/TextView;
    iget-object p0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    .line 424
    const p0, 0x7f0a00a8

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .end local p3
    const p0, 0x7f0a0046

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    rem-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_4

    .line 429
    const p0, 0x7f020007

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 446
    :goto_1
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getSmallImage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getSmallImage()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    .end local p2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 447
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getSmallImage()Ljava/lang/String;

    move-result-object p0

    .line 449
    .local p0, imgURL:Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 456
    .end local p0           #imgURL:Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 461
    return-object v2

    .line 419
    .local p0, dateLine:Landroid/widget/TextView;
    .restart local p2
    .restart local p3
    :cond_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    .end local p0           #dateLine:Landroid/widget/TextView;
    .end local p3
    :cond_4
    const p0, 0x7f020005

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 435
    .restart local p3
    :cond_5
    if-nez p2, :cond_6

    const p0, 0x7f0a0046

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .end local p3
    :cond_6
    rem-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_7

    .line 438
    const p0, 0x7f02000b

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 440
    :cond_7
    const p0, 0x7f02000f

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 452
    .end local p2
    :cond_8
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static buildTopCapsule(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "linflater"

    .prologue
    .line 115
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v0, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 117
    .local v0, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, topCapsule:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-static {v1, v0}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->populateView(Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 123
    return-object v1
.end method

.method public static populateAppGalleryCell(Landroid/view/ViewGroup;Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 13
    .parameter "view"
    .parameter "game"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    .line 230
    const v9, 0x7f0a000e

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, firstLine:Landroid/widget/TextView;
    const v9, 0x7f0a000f

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 232
    .local v8, secondLine:Landroid/widget/TextView;
    const v9, 0x7f0a0011

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 233
    .local v7, reviewLine:Landroid/widget/TextView;
    const v9, 0x7f0a0012

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 234
    .local v4, priceLine:Landroid/widget/TextView;
    const v9, 0x7f0a0010

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 236
    .local v5, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_0

    .line 237
    const-string v0, ""

    .line 239
    .local v0, developerString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v9

    array-length v9, v9

    if-lt v2, v9, :cond_3

    .line 248
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v0           #developerString:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 258
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 266
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v9

    if-eqz v9, :cond_2

    .line 267
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 267
    :goto_1
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_2
    :goto_2
    const v9, 0x7f0a000d

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 285
    .local v3, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeaturedImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 287
    return-void

    .line 240
    .end local v3           #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .restart local v0       #developerString:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v9

    array-length v9, v9

    sub-int/2addr v9, v11

    if-eq v2, v9, :cond_4

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v10

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 244
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v10

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 269
    .end local v0           #developerString:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 272
    :cond_6
    invoke-virtual {v5, v12}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 273
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, releaseDate:Ljava/lang/String;
    if-eqz v6, :cond_7

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "null"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 277
    :cond_7
    const-string v9, ""

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 279
    :cond_8
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private static populateView(Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 8
    .parameter "topCapsule"
    .parameter "game"

    .prologue
    .line 134
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    .local v1, firstLine:Landroid/widget/TextView;
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, secondLine:Landroid/widget/TextView;
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 137
    .local v5, reviewLine:Landroid/widget/TextView;
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    .local v3, priceOrReleaseDate:Landroid/widget/TextView;
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 141
    .local v0, iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    const v4, 0x7f0a0010

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 147
    .local v4, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getSmallImage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getSmallImage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://origin-devtegra.tegrazone.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 148
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getSmallImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    .end local v0           #iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    .line 164
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const-string v0, ""

    .line 166
    .local v0, developerString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_6

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v0           #developerString:Ljava/lang/String;
    .end local v2           #i:I
    :goto_2
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .end local v1           #firstLine:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    const/4 p0, 0x0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    .end local p0
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPrice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 190
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result p0

    if-eqz p0, :cond_2

    .line 191
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    :goto_3
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_2
    :goto_4
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object p0

    iget-object p0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object p0

    iget-object p0, p0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 212
    :cond_3
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object p0

    .line 214
    .local p0, officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    if-eqz p0, :cond_e

    .line 215
    array-length p0, p0

    .line 216
    .local p0, reviewCount:I
    if-eqz p0, :cond_d

    .line 217
    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    .end local p1
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #reviewCount:I
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_4
    return-void

    .line 154
    .local v0, iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .restart local v1       #firstLine:Landroid/widget/TextView;
    .local v2, secondLine:Landroid/widget/TextView;
    .local p0, topCapsule:Landroid/view/View;
    .restart local p1
    :cond_5
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 167
    .local v0, developerString:Ljava/lang/String;
    .local v2, i:I
    :cond_6
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-eq v2, v6, :cond_7

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #developerString:Ljava/lang/String;
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0       #developerString:Ljava/lang/String;
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 170
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #developerString:Ljava/lang/String;
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #developerString:Ljava/lang/String;
    goto :goto_6

    .line 175
    .end local v0           #developerString:Ljava/lang/String;
    .local v2, secondLine:Landroid/widget/TextView;
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 193
    .end local v1           #firstLine:Landroid/widget/TextView;
    .end local v2           #secondLine:Landroid/widget/TextView;
    .end local p0           #topCapsule:Landroid/view/View;
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 198
    .restart local p0       #topCapsule:Landroid/view/View;
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 199
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, releaseDate:Ljava/lang/String;
    if-eqz v0, :cond_b

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 202
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0           #topCapsule:Landroid/view/View;
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #releaseDate:Ljava/lang/String;
    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 204
    .restart local v0       #releaseDate:Ljava/lang/String;
    .restart local p0       #topCapsule:Landroid/view/View;
    :cond_c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 219
    .end local v0           #releaseDate:Ljava/lang/String;
    .local p0, reviewCount:I
    :cond_d
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 222
    .local p0, officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    :cond_e
    const/4 p0, 0x0

    .line 223
    .local p0, reviewCount:I
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public static updateTopCapsule(Landroid/view/View;)V
    .locals 2
    .parameter "topCapsule"

    .prologue
    .line 127
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v0, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 129
    .local v0, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    invoke-static {p0, v0}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->populateView(Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 130
    return-void
.end method


# virtual methods
.method public buildCommentsCapsule(Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;I)Landroid/view/View;
    .locals 13
    .parameter "comment"
    .parameter "position"

    .prologue
    const/4 v12, 0x1

    .line 468
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030012

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 471
    .local v2, commentCapsule:Landroid/widget/RelativeLayout;
    const v9, 0x7f0a0070

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 472
    .local v5, fullComment:Landroid/widget/TextView;
    const v9, 0x7f0a006f

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    .local v0, author:Landroid/widget/TextView;
    const v9, 0x7f0a006e

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 474
    .local v8, title:Landroid/widget/TextView;
    const v9, 0x7f0a006d

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 476
    .local v6, index:Landroid/widget/TextView;
    const v9, 0x7f0a0010

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RatingBar;

    .line 480
    .local v7, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getRating()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    if-eq v9, v10, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getRating()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByRating(Landroid/widget/RatingBar;Ljava/lang/String;)Landroid/widget/RatingBar;

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getComment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->activity:Landroid/app/Activity;

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, authorFormat:Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, commentIndex:Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getCommentDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 495
    const v9, 0x7f0a0071

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 496
    .local v3, commentDate:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getCommentDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v3           #commentDate:Landroid/widget/TextView;
    :cond_2
    rem-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_5

    .line 501
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 502
    :cond_3
    const v9, 0x7f020006

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 515
    :goto_0
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setHapticFeedbackEnabled(Z)V

    .line 516
    return-object v2

    .line 504
    :cond_4
    const v9, 0x7f02000a

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 507
    :cond_5
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 508
    :cond_6
    const v9, 0x7f020004

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 510
    :cond_7
    const v9, 0x7f02000e

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public buildLoadMoreCapsule(Ljava/lang/Boolean;)Landroid/view/View;
    .locals 5
    .parameter "isNext"

    .prologue
    .line 522
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 524
    .local v1, loadMoreCapusle:Landroid/widget/RelativeLayout;
    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 526
    .local v0, fullComment:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    return-object v1

    .line 528
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 12
    .parameter "a"
    .parameter "g"
    .parameter "t"

    .prologue
    const/4 v11, 0x0

    .line 38
    move-object v0, p1

    .line 39
    .local v0, activity:Landroid/app/Activity;
    move-object v1, p2

    .line 40
    .local v1, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    move-object v8, p3

    .line 42
    .local v8, tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    const v9, 0x7f0a0042

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 44
    .local v6, topCapsule:Landroid/widget/LinearLayout;
    const v9, 0x7f0a0038

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 46
    .local v7, topCapsuleContents:Landroid/view/ViewGroup;
    if-nez v7, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-static {v9}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v7

    .end local v7           #topCapsuleContents:Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 48
    .restart local v7       #topCapsuleContents:Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    :goto_0
    const v9, 0x7f0a003b

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 56
    .local v2, getItNowButton:Landroid/widget/Button;
    new-instance v9, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;

    invoke-direct {v9, p0, v1, v0, v8}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/CapsuleBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v9, 0x7f0a003a

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 75
    .local v4, priceOrReleaseDate:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 77
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPrice()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, price:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "null"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 82
    :cond_0
    const-string v9, ""

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v3           #price:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v9

    iget-object v9, v9, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 97
    invoke-virtual {p0, v7, v1}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->initTopCapsuleQuotes(Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 99
    :cond_1
    return-void

    .line 51
    .end local v2           #getItNowButton:Landroid/widget/Button;
    .end local v4           #priceOrReleaseDate:Landroid/widget/TextView;
    :cond_2
    invoke-static {v7}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->updateTopCapsule(Landroid/view/View;)V

    goto :goto_0

    .line 84
    .restart local v2       #getItNowButton:Landroid/widget/Button;
    .restart local v3       #price:Ljava/lang/String;
    .restart local v4       #priceOrReleaseDate:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    .end local v3           #price:Ljava/lang/String;
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, releaseDate:Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "null"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 90
    :cond_5
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public initTopCapsuleQuotes(Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 4
    .parameter "containerView"
    .parameter "game"

    .prologue
    .line 102
    const v2, 0x7f0a003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, pullquote:Landroid/widget/TextView;
    const v2, 0x7f0a003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, quoteSource:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPullquote()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPullquote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getQuoteSource()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getQuoteSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    return-void
.end method
