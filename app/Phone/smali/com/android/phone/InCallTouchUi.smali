.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCdmaMergeButton:Landroid/widget/ImageButton;

.field private mCdmaMergeButtonContainer:Landroid/view/View;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

.field private mLastIncomingCallActionTime:J

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwapButtonContainer:Landroid/view/View;

.field private mSwapButtonLabel:Landroid/widget/TextView;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030012

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/SlidingTab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 606
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 607
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 623
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 778
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 631
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 633
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->clearAnimation()V

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 636
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 637
    return-void
.end method


# virtual methods
.method isIncomingCallTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    return v0
.end method

.method isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 320
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    const-string v1, "InCallTouchUi"

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 333
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x7f080064
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 137
    const v1, 0x7f080061

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    .line 138
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f020079

    const v3, 0x108035e

    const v4, 0x1080337

    const v5, 0x108034a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f02007a

    const v3, 0x108035f

    const v4, 0x1080340

    const v5, 0x1080357

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 152
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0701e4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 155
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 158
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 163
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 165
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 167
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 169
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 171
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 173
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 175
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonContainer:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    .line 180
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonContainer:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 185
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    .line 187
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    const v2, 0x7f0701ab

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButtonContainer:Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    .line 197
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 208
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    return-void

    .line 192
    .end local v0           #smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 645
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 651
    packed-switch p2, :pswitch_data_0

    .line 670
    const-string v2, "InCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 679
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateSlidingTabHint(II)V

    .line 681
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 653
    :pswitch_0
    const/4 v1, 0x0

    .line 654
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 655
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 662
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :pswitch_1
    const v1, 0x7f0701de

    .line 663
    .restart local v1       #hintTextResId:I
    const v0, 0x7f090001

    .line 664
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 666
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :pswitch_2
    const v1, 0x7f0701e0

    .line 667
    .restart local v1       #hintTextResId:I
    const v0, 0x7f090003

    .line 668
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 548
    packed-switch p2, :pswitch_data_0

    .line 586
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateSlidingTabHint(II)V

    .line 593
    return-void

    .line 552
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 559
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 563
    :cond_0
    const-string v0, "InCallTouchUi"

    const-string v1, "answer trigger: mInCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 577
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 581
    :cond_1
    const-string v0, "InCallTouchUi"

    const-string v1, "reject trigger: mInCallScreen is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 127
    return-void
.end method

.method updateInCallControls(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 347
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 360
    .local v1, phoneType:I
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 365
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_7

    .line 366
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    :goto_0
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_1

    .line 396
    if-eq v1, v7, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 403
    :cond_0
    const-string v2, "InCallTouchUi"

    const-string v3, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v2, :cond_d

    .line 423
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0701a4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 424
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 434
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 435
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 438
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 439
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 442
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 443
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonContainer:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v3, :cond_e

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v2, :cond_2

    .line 456
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v2, :cond_f

    .line 457
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonLabel:Landroid/widget/TextView;

    const v3, 0x7f0701a1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 468
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonContainer:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v3, :cond_10

    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 475
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButtonContainer:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v3, :cond_11

    move v3, v5

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_3
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v2, :cond_4

    .line 485
    const-string v2, "InCallTouchUi"

    const-string v3, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4
    if-ne v1, v8, :cond_5

    .line 489
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_5

    .line 495
    const-string v2, "InCallTouchUi"

    const-string v3, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_5
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v2, :cond_6

    .line 503
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_6
    return-void

    .line 369
    :cond_7
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_b

    .line 370
    if-ne v1, v8, :cond_8

    .line 374
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 375
    :cond_8
    if-eq v1, v7, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 377
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 381
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_b
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 405
    :cond_c
    if-eq v1, v8, :cond_1

    .line 410
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_d
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0701a3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 429
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_e
    move v3, v4

    .line 451
    goto/16 :goto_2

    .line 460
    :cond_f
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonLabel:Landroid/widget/TextView;

    const v3, 0x7f0701a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_10
    move v3, v4

    .line 468
    goto/16 :goto_4

    :cond_11
    move v3, v4

    .line 475
    goto/16 :goto_5
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "cm"

    .prologue
    .line 231
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v6, :cond_0

    .line 232
    const-string v6, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 239
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v4, 0x0

    .line 240
    .local v4, showIncomingCallControls:Z
    const/4 v3, 0x0

    .line 242
    .local v3, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 248
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 251
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 257
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    const/4 v4, 0x1

    .line 266
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, now:J
    iget-wide v6, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 268
    const-string v6, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 269
    const/4 v4, 0x0

    .line 292
    .end local v0           #now:J
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/Phone;)V

    .line 297
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 298
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 281
    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 284
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 285
    const/4 v3, 0x1

    goto :goto_1

    .line 302
    :cond_5
    if-eqz v4, :cond_6

    .line 303
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget()V

    .line 308
    :goto_2
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    if-eqz v3, :cond_7

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    goto :goto_2

    .line 308
    :cond_7
    const/16 v7, 0x8

    goto :goto_3
.end method
