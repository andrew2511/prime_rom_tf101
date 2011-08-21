.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswer:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field mIgnore:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 75
    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 83
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 84
    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 106
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x10301d5

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v1, wrappedContext:Landroid/content/Context;
    new-instance v2, Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v1, v3}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 116
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    .line 117
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 118
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 120
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x10802d9

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 122
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    .line 123
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 124
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070038

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 126
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f02007f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 128
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    .line 129
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 130
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 132
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 134
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 135
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 136
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 138
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x1080033

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 140
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 141
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 142
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 144
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 146
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 147
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070035

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 156
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 157
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 158
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070030

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 160
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 162
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 163
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 164
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 166
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 168
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 169
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 170
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070031

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 172
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 174
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 175
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 176
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 178
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 180
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 181
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 182
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 185
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 186
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 187
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 190
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    .line 191
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 192
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 195
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    .line 196
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 197
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070040

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 218
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 225
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 226
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 228
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 233
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 244
    :cond_3
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsAnswerAndHold(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 249
    :cond_5
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsAnswerAndHold(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 251
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 253
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 255
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 257
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v2}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 258
    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/CallManager;)Z
    .locals 12
    .parameter "cm"

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_0

    .line 279
    const/4 v10, 0x0

    .line 474
    :goto_0
    return v10

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 283
    .local v4, hasRingingCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 284
    .local v2, hasActiveCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 285
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 288
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 290
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 291
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 292
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 293
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 295
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 296
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 297
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 298
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 299
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 300
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 301
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 302
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 303
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .line 307
    .local v6, inConferenceCall:Z
    if-nez v6, :cond_1

    const/4 v10, 0x1

    move v8, v10

    .line 308
    .local v8, showShowDialpad:Z
    :goto_1
    if-eqz v8, :cond_2

    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    move v0, v10

    .line 309
    .local v0, enableShowDialpad:Z
    :goto_2
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v10, v8}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 310
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v10, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 311
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    .line 312
    .local v7, isDtmfDialerOpened:Z
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    if-eqz v7, :cond_3

    const v11, 0x7f070039

    :goto_3
    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 316
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 317
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 319
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 320
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 321
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v9

    .line 322
    .local v9, speakerOn:Z
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v10, v9}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 324
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v10}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 325
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 307
    .end local v0           #enableShowDialpad:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v8           #showShowDialpad:Z
    .end local v9           #speakerOn:Z
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    goto :goto_1

    .line 308
    .restart local v8       #showShowDialpad:Z
    :cond_2
    const/4 v10, 0x0

    move v0, v10

    goto :goto_2

    .line 312
    .restart local v0       #enableShowDialpad:Z
    .restart local v7       #isDtmfDialerOpened:Z
    :cond_3
    const v11, 0x7f070038

    goto :goto_3

    .line 329
    .end local v0           #enableShowDialpad:Z
    .end local v6           #inConferenceCall:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v8           #showShowDialpad:Z
    :cond_4
    if-eqz v4, :cond_7

    .line 330
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    .line 334
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsAnswerAndHold(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 335
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 336
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 337
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 338
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 341
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 342
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 358
    :goto_4
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 359
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 360
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 361
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 362
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 363
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 364
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 365
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 366
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 367
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 372
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v10}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 374
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 345
    :cond_5
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 346
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 347
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 348
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 351
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 352
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_4

    .line 378
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 387
    :cond_7
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 392
    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 393
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 405
    iget-boolean v10, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-nez v10, :cond_8

    const/4 v10, 0x1

    move v8, v10

    .line 406
    .restart local v8       #showShowDialpad:Z
    :goto_5
    if-eqz v8, :cond_9

    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    move v0, v10

    .line 407
    .restart local v0       #enableShowDialpad:Z
    :goto_6
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v10, v8}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 408
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v10, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 409
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v11, :cond_a

    const v11, 0x7f070039

    :goto_7
    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 417
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 418
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 421
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 422
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 425
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 426
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 427
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 428
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 431
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 432
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 433
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 438
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 439
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 440
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 445
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 446
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 447
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 450
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 451
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 452
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 457
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 458
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 459
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 460
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 464
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 465
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 466
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 467
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 472
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v10}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 474
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 405
    .end local v0           #enableShowDialpad:Z
    .end local v8           #showShowDialpad:Z
    :cond_8
    const/4 v10, 0x0

    move v8, v10

    goto/16 :goto_5

    .line 406
    .restart local v8       #showShowDialpad:Z
    :cond_9
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_6

    .line 409
    .restart local v0       #enableShowDialpad:Z
    :cond_a
    const v11, 0x7f070038

    goto/16 :goto_7
.end method
