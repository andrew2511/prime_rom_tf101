.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$1;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLabel:Landroid/widget/TextView;

.field private mManageConferencePhotoButton:Landroid/widget/Button;

.field private mMenuButtonHint:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mRotarySelectorHintColorResId:I

.field private mRotarySelectorHintTextResId:I

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorDefaultPrimary:I

.field private mTextColorDefaultSecondary:I

.field private mTextColorEnded:I

.field private mTextColorOnHold:I

.field private mUpperTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 133
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 136
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 140
    return-void
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1454
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1455
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1570
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1571
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1572
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1575
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 347
    if-nez p2, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 357
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    sget-object v16, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 410
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 416
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 526
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 362
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_1

    .line 370
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 376
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 383
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 390
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 399
    :pswitch_5
    const-string v16, "CallCard"

    const-string v17, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 422
    :cond_2
    const/4 v6, 0x0

    .line 423
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 424
    .local v10, phoneType:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 425
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 433
    :goto_3
    if-nez v6, :cond_6

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 440
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 426
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    const/16 v16, 0x3

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 428
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_3

    .line 430
    :cond_5
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 443
    :cond_6
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 447
    .local v11, presentation:I
    const/4 v12, 0x1

    .line 448
    .local v12, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 449
    .local v8, o:Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    .line 458
    :goto_4
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 459
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 460
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 461
    .local v15, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 463
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 464
    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    .end local v9           #obj:Ljava/lang/Object;
    iget-object v7, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 469
    :cond_7
    :goto_5
    if-eqz v7, :cond_9

    .line 470
    if-eqz v15, :cond_8

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 473
    const/4 v12, 0x1

    .line 475
    :cond_8
    if-eqz v14, :cond_9

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 478
    const/4 v12, 0x1

    .line 483
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_d

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 487
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 453
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    goto :goto_4

    .line 465
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v14       #updatedCnapName:Ljava/lang/String;
    .restart local v15       #updatedNumber:Ljava/lang/String;
    :cond_b
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 466
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto :goto_5

    .line 487
    .end local v9           #obj:Ljava/lang/Object;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    const/16 v17, 0x0

    goto :goto_6

    .line 493
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 494
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 496
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 497
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 498
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 503
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 504
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 505
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #o:Ljava/lang/Object;
    iget-object v5, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 510
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 512
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_f
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 816
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 817
    :cond_0
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 951
    :goto_0
    return-void

    .line 821
    :cond_1
    const/4 v7, 0x0

    .line 822
    .local v7, showSecondaryCallInfo:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 823
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 924
    :pswitch_0
    const/4 v7, 0x0

    .line 928
    :goto_1
    if-eqz v7, :cond_a

    .line 931
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 944
    iget-object v9, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 945
    .local v6, okToShowLabels:Z
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 946
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 832
    .end local v6           #okToShowLabels:Z
    :pswitch_1
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 834
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070027

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v10, 0x7f020097

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 860
    :goto_4
    const/4 v7, 0x1

    .line 862
    goto :goto_1

    .line 841
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, p2, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 843
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_3

    .line 854
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_4

    .line 856
    :cond_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v10, 0x7f02009b

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 868
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 869
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 870
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_4

    .line 875
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070178

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v10, 0x7f02009b

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 911
    :goto_5
    const/4 v7, 0x1

    .line 913
    goto/16 :goto_1

    .line 881
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 882
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, v0, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 888
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 890
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 892
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_5

    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v10, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v9, v10, :cond_5

    .line 894
    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    .line 895
    const/4 v2, 0x1

    .line 897
    :cond_5
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    if-nez v2, :cond_6

    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_6

    .line 906
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_5

    .line 908
    :cond_6
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v10, 0x7f02009b

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_5

    .line 915
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    const-string v9, "CallCard"

    const-string v10, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v7, 0x0

    .line 918
    goto/16 :goto_1

    .line 945
    .restart local v6       #okToShowLabels:Z
    :cond_8
    const/4 v10, 0x4

    goto/16 :goto_2

    .line 946
    :cond_9
    const/4 v10, 0x4

    goto/16 :goto_3

    .line 949
    .end local v6           #okToShowLabels:Z
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 954
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 957
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 961
    const v2, 0x7f070175

    .line 1034
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 964
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 970
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1030
    const v2, 0x7f070175

    .restart local v2       #resID:I
    goto :goto_0

    .line 972
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f07000b

    .line 973
    .restart local v2       #resID:I
    goto :goto_0

    .line 976
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f07000c

    .line 977
    .restart local v2       #resID:I
    goto :goto_0

    .line 980
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f07000d

    .line 981
    .restart local v2       #resID:I
    goto :goto_0

    .line 984
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f07000e

    .line 985
    .restart local v2       #resID:I
    goto :goto_0

    .line 988
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f07000f

    .line 989
    .restart local v2       #resID:I
    goto :goto_0

    .line 992
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f070010

    .line 993
    .restart local v2       #resID:I
    goto :goto_0

    .line 996
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f070012

    .line 997
    .restart local v2       #resID:I
    goto :goto_0

    .line 1000
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f070011

    .line 1001
    .restart local v2       #resID:I
    goto :goto_0

    .line 1005
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f070013

    .line 1006
    .restart local v2       #resID:I
    goto :goto_0

    .line 1009
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f070014

    .line 1010
    .restart local v2       #resID:I
    goto :goto_0

    .line 1013
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f070015

    .line 1014
    .restart local v2       #resID:I
    goto :goto_0

    .line 1017
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f070016

    .line 1018
    .restart local v2       #resID:I
    goto :goto_0

    .line 1021
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f070017

    .line 1022
    .restart local v2       #resID:I
    goto :goto_0

    .line 1026
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f070026

    .line 1027
    .restart local v2       #resID:I
    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1185
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    :cond_0
    :goto_0
    return-object v0

    .line 1186
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    const v7, 0x7f070171

    const v6, 0x7f07016f

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 750
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 755
    .local v0, context:Landroid/content/Context;
    sget-object v4, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 803
    :goto_0
    :pswitch_0
    return-object v2

    .line 762
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 763
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 764
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 769
    :cond_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 771
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 773
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    .end local v1           #phoneType:I
    :pswitch_2
    const v4, 0x7f070176

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 781
    goto :goto_0

    .line 785
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 786
    goto :goto_0

    .line 790
    :pswitch_4
    const v4, 0x7f070173

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 791
    goto :goto_0

    .line 794
    :pswitch_5
    const v4, 0x7f070177

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    goto :goto_0

    .line 798
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 4
    .parameter "title"
    .parameter "color"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1433
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, bluetoothIconId:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1442
    const v0, 0x7f020078

    .line 1445
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1446
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1447
    :cond_2
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1380
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1386
    :goto_0
    const/4 v0, 0x1

    .line 1388
    :goto_1
    return v0

    .line 1384
    :cond_0
    const v0, 0x7f02009b

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1393
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1395
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1399
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1401
    return-void
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 1468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    move v0, v1

    .line 1469
    .local v0, phoneType:I
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1470
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1471
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f070194

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1472
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1480
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v2

    .line 1468
    goto :goto_0

    .line 1478
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 612
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 620
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 621
    .local v6, phoneType:I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 622
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v8

    if-nez v8, :cond_0

    .line 623
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, cardTitle:Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 720
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    invoke-direct {p0, v1, v8, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 723
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_1
    return-void

    .line 625
    .end local v1           #cardTitle:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070170

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cardTitle:Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v1           #cardTitle:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 629
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cardTitle:Ljava/lang/String;
    goto :goto_0

    .line 631
    .end local v1           #cardTitle:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 639
    .restart local v1       #cardTitle:Ljava/lang/String;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 640
    .local v0, bluetoothActive:Z
    if-eqz v0, :cond_5

    const v8, 0x7f020076

    move v5, v8

    .line 642
    .local v5, ongoingCallIcon:I
    :goto_2
    if-eqz v0, :cond_6

    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v2, v8

    .line 645
    .local v2, connectedTextColor:I
    :goto_3
    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    .line 648
    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 650
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    invoke-direct {p0, v1, v8, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 675
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 677
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 678
    .local v3, duration:J
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_1

    .line 640
    .end local v2           #connectedTextColor:I
    .end local v3           #duration:J
    .end local v5           #ongoingCallIcon:I
    :cond_5
    const v8, 0x7f020075

    move v5, v8

    goto :goto_2

    .line 642
    .restart local v5       #ongoingCallIcon:I
    :cond_6
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v2, v8

    goto :goto_3

    .line 653
    .restart local v2       #connectedTextColor:I
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_4

    .line 655
    :cond_8
    const/4 v8, 0x1

    if-eq v6, v8, :cond_9

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    .line 665
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_a

    .line 667
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    invoke-direct {p0, v1, v8, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_4

    .line 670
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_4

    .line 690
    .end local v0           #bluetoothActive:Z
    .end local v2           #connectedTextColor:I
    .end local v5           #ongoingCallIcon:I
    :pswitch_1
    iget v8, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-direct {p0, v1, v8, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 695
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 709
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 710
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    iget-object v8, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "call"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1203
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020098

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1211
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f070178

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1229
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1235
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1240
    invoke-direct {p0, v3, v3, v3}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1251
    return-void

    .line 1212
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1214
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    iget-object v1, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1217
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1224
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f070172

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1222
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020097

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1226
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 18
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"

    .prologue
    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1057
    const/4 v13, 0x0

    .line 1058
    .local v13, displayNumber:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1059
    .local v14, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1060
    .local v10, personUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 1061
    .local v17, socialStatusText:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1063
    .local v16, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_8

    .line 1086
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v15, v0

    .line 1087
    .local v15, number:Ljava/lang/String;
    if-eqz v15, :cond_0

    const-string v4, "sip:"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1088
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1091
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1096
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1097
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 1124
    .local v12, displayName:Ljava/lang/String;
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1131
    .end local v15           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const v5, 0x7f070178

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1136
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    if-eqz p3, :cond_a

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move v4, v0

    if-nez v4, :cond_a

    .line 1149
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1160
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1162
    if-eqz v13, :cond_c

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultSecondary:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    :goto_4
    if-eqz v14, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1179
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1180
    return-void

    .line 1098
    .end local v12           #displayName:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    :cond_3
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_4

    .line 1102
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1103
    .end local v12           #displayName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1104
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v12, v0

    .line 1105
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1106
    move-object v13, v15

    goto/16 :goto_0

    .line 1108
    .end local v12           #displayName:Ljava/lang/String;
    :cond_5
    move-object v12, v15

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1113
    .end local v12           #displayName:Ljava/lang/String;
    :cond_6
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 1117
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1119
    .end local v12           #displayName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v12, v0

    .line 1120
    .restart local v12       #displayName:Ljava/lang/String;
    move-object v13, v15

    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object v14, v0

    goto/16 :goto_0

    .line 1128
    .end local v12           #displayName:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1134
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1150
    :cond_a
    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v4, v0

    if-eqz v4, :cond_b

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1152
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1155
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v9, v0

    const v11, 0x7f02009b

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v11}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 1167
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1174
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 734
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 269
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 271
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 279
    move-object v1, v0

    .line 282
    const/4 v0, 0x0

    .line 285
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 289
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 290
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 291
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 300
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 302
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 337
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 338
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    const/4 v13, -0x2

    const/4 v12, -0x1

    .line 1265
    const/4 v7, 0x0

    .line 1269
    .local v7, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1270
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1310
    const/4 v3, 0x0

    .line 1312
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v4, 0x0

    .line 1313
    .local v4, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1314
    .local v6, phoneType:I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    .line 1315
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1323
    :goto_0
    if-eqz v4, :cond_0

    .line 1324
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 1325
    .local v5, o:Ljava/lang/Object;
    instance-of v9, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_8

    .line 1326
    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 1333
    .end local v5           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1334
    iget v7, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1348
    :cond_1
    if-nez v7, :cond_9

    .line 1349
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1350
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v9

    if-ne v9, v13, :cond_2

    .line 1352
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v3, v9, v10, v11, v12}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1354
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1366
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #phoneType:I
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 1368
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v7}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1370
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v13}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1372
    :cond_3
    :goto_3
    return-void

    .line 1275
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1278
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_2

    .line 1279
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1280
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v9, :cond_2

    .line 1282
    :cond_4
    const v7, 0x7f020096

    goto :goto_2

    .line 1316
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v4       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v6       #phoneType:I
    :cond_5
    const/4 v9, 0x1

    if-eq v6, v9, :cond_6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_7

    .line 1318
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_0

    .line 1320
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1327
    .restart local v5       #o:Ljava/lang/Object;
    :cond_8
    instance-of v9, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_0

    .line 1328
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #o:Ljava/lang/Object;
    iget-object v3, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 1359
    :cond_9
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v7}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1360
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    .line 1270
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 316
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 322
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 323
    return-void
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 1491
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1499
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1503
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1557
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1558
    iget-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1559
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1560
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1561
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1562
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1563
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1564
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1565
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1566
    const/4 v0, 0x1

    return v0
.end method

.method getMenuButtonHint()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1519
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1520
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1521
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1534
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1537
    packed-switch v0, :pswitch_data_0

    .line 1545
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :goto_0
    return-void

    .line 1541
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1537
    :pswitch_data_0
    .packed-switch 0x7f080022
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 163
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 164
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 167
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorDefaultSecondary:I

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 183
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    .line 199
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 597
    if-eqz p2, :cond_0

    .line 598
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 600
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    .line 551
    instance-of v6, p2, Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_6

    .line 556
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v1, v0

    .line 557
    .local v1, call:Lcom/android/internal/telephony/Call;
    const/4 v3, 0x0

    .line 558
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 559
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 560
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 567
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v3, p0, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 570
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 571
    .local v5, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 578
    :cond_0
    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v6, :cond_5

    .line 579
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v6, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 583
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 589
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 561
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 563
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 565
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 581
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v5       #presentation:I
    :cond_5
    iget-object v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v6, v5, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 585
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    :cond_6
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 587
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 150
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 144
    return-void
.end method

.method setRotarySelectorHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 1528
    iput p1, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    .line 1529
    iput p2, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    .line 1530
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 155
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 216
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 217
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 218
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 225
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 259
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
