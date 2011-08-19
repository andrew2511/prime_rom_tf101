.class public Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "DefaultControllerOverlay.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/ControllerOverlay;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/core/player/TimeBar$Listener;


# static fields
.field private static final DOUBLE_TAP_THRESHOLD:I = 0xfa

.field private static final ERROR_MESSAGE_RELATIVE_PADDING:F = 0.16666667f

.field private static final FLING_HORIZONTAL_THRESHOLD:I = 0x4b

.field public static final NEXT_PREVIOUS_H_DELTA:I = 0x40


# instance fields
.field private ad:Z

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private canRetry:Z

.field private final ccButton:Landroid/widget/ImageButton;

.field private final continueView:Landroid/widget/ImageView;

.field private ended:Z

.field private error:Z

.field private final errorView:Landroid/widget/TextView;

.field private final fullscreenButton:Landroid/widget/ImageButton;

.field private hasCC:Z

.field private hasFullscreen:Z

.field private hasNext:Z

.field private hasPrevious:Z

.field private hidden:Z

.field private hideAnimation:Landroid/view/animation/Animation;

.field private final hqButton:Landroid/widget/ImageButton;

.field private lastDownTime:J

.field private lastDownX:I

.field private lastDownY:I

.field private listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

.field private final loadingView:Landroid/widget/LinearLayout;

.field private final nextButton:Landroid/widget/ImageButton;

.field private paused:Z

.field private final playPauseButton:Landroid/widget/ImageView;

.field private final playbackButtonsHDelta:I

.field protected final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private final previousButton:Landroid/widget/ImageButton;

.field private final replayView:Landroid/widget/ImageView;

.field private statusView:Landroid/view/View;

.field private supportsQualityToggle:Z

.field private final timeBar:Lcom/google/android/youtube/core/player/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/Analytics;)V
    .locals 12
    .parameter "context"
    .parameter "player"
    .parameter "analytics"

    .prologue
    const v11, 0x7f020040

    const/4 v10, -0x1

    const v9, 0x7f04000e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v5, "player cannot be null"

    invoke-static {p2, v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 104
    const-string v5, "analytics cannot be null"

    invoke-static {p3, v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/Analytics;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 106
    iput-boolean v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    .line 108
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v2, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playbackButtonsHDelta:I

    .line 116
    new-instance v5, Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {v5, p1, p0}, Lcom/google/android/youtube/core/player/TimeBar;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/TimeBar$Listener;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    .line 117
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    .line 120
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 123
    .local v3, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 124
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, buffering:Landroid/widget/TextView;
    const v5, 0x7f0c0015

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    .line 131
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    const v6, 0x7f020028

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 135
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 136
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    .line 140
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    const v6, 0x7f020026

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 142
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 144
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 145
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {v1, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    .line 149
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    const v6, 0x7f02002e

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 150
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {v1, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const v6, 0x7f02002c

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 155
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v1, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    .line 160
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    const v6, 0x7f02002d

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 161
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-boolean v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    .line 163
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    .line 166
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    const v6, 0x7f020025

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 172
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    const/high16 v6, -0x3400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 174
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v1, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    .line 179
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 180
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {v1, v9, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    const v6, 0x7f020027

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 185
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    const/high16 v5, 0x7f05

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 189
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    invoke-virtual {p0, v8}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setWillNotDraw(Z)V

    .line 192
    return-void
.end method

.method private cancelHiding()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 284
    return-void
.end method

.method private hideControls()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    .line 217
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestFocus()Z

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onHidden()V

    .line 222
    :cond_0
    return-void
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 583
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 584
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 585
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 586
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 587
    return-void
.end method

.method private maybeStartHiding()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 268
    :cond_0
    return-void
.end method

.method private onNext()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideControls()V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->resetTime()V

    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onNext()V

    .line 367
    return-void
.end method

.method private onPrevious()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideControls()V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->resetTime()V

    .line 372
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onPrevious()V

    .line 373
    return-void
.end method

.method private onToggleFullscreen()V
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 359
    .local v0, fullscreen:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 360
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onToggleFullscreen(Z)V

    .line 361
    return-void

    .line 358
    .end local v0           #fullscreen:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private showStatusView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 252
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v1, v2, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    return-void

    :cond_0
    move v1, v4

    .line 253
    goto :goto_0

    :cond_1
    move v1, v4

    .line 254
    goto :goto_1

    :cond_2
    move v1, v4

    .line 255
    goto :goto_2
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    :cond_0
    return-void
.end method

.method private updateButtons()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 650
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v1, :cond_0

    .line 663
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 654
    .local v0, showButtons:Z
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->supportsQualityToggle:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasCC:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 657
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    if-eqz v2, :cond_5

    const v2, 0x7f020026

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasNext:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasPrevious:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 662
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestLayout()V

    goto :goto_0

    .end local v0           #showButtons:Z
    :cond_1
    move v0, v3

    .line 653
    goto :goto_1

    .restart local v0       #showButtons:Z
    :cond_2
    move v2, v4

    .line 654
    goto :goto_2

    :cond_3
    move v2, v4

    .line 655
    goto :goto_3

    :cond_4
    move v2, v4

    .line 656
    goto :goto_4

    .line 657
    :cond_5
    const v2, 0x7f020025

    goto :goto_5

    :cond_6
    move v2, v4

    .line 659
    goto :goto_6

    :cond_7
    move v2, v4

    .line 660
    goto :goto_7

    :cond_8
    move v2, v4

    .line 661
    goto :goto_8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 509
    .end local p0
    :goto_0
    return v0

    .line 459
    .restart local p0
    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    .line 460
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    .line 461
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->error:Z

    .line 462
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 463
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->maybeStartHiding()V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideStatus()V

    move v0, v4

    .line 465
    goto :goto_0

    .line 468
    :pswitch_1
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    .line 469
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 470
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideStatus()V

    move v0, v4

    .line 471
    goto :goto_0

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setBufferedPercent(I)V

    .line 475
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    .line 476
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    .line 477
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    move v0, v4

    .line 478
    goto :goto_0

    .line 481
    :pswitch_3
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    .line 482
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    .line 483
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->error:Z

    .line 484
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 485
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handlePlayerError(II)V

    move v0, v4

    .line 486
    goto :goto_0

    .line 489
    :pswitch_4
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->paused:Z

    .line 490
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    .line 491
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    move v0, v4

    .line 492
    goto :goto_0

    .line 495
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->isScrubbing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    :cond_0
    move v0, v4

    .line 498
    goto :goto_0

    .line 501
    .restart local p0
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showLoading()V

    move v0, v4

    .line 502
    goto :goto_0

    .line 505
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideLoading()V

    move v0, v4

    .line 506
    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected handlePlayerError(II)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 605
    const v1, 0x7f0c0046

    .line 606
    .local v1, messageId:I
    const/4 v0, 0x1

    .line 607
    .local v0, canRetry:Z
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    const v1, 0x7f0c009a

    .line 625
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showErrorMessage(IZ)V

    .line 626
    return-void

    .line 609
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 610
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 620
    :pswitch_1
    const v1, 0x7f0c004a

    .line 621
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :pswitch_2
    const v1, 0x7f0c0048

    .line 614
    goto :goto_0

    .line 617
    :pswitch_3
    const v1, 0x7f0c0049

    .line 618
    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch -0x3f2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public hideStatus()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showStatusView(Landroid/view/View;)V

    .line 647
    return-void
.end method

.method public install()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 205
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideControls()V

    .line 206
    return-void
.end method

.method public isHQ()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideControls()V

    .line 306
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 298
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onHQ()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onCC()V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Fullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "On"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onToggleFullscreen()V

    goto :goto_0

    .line 382
    :cond_3
    const-string v3, "Off"

    goto :goto_1

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 386
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onNext()V

    goto :goto_0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 388
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onPrevious()V

    goto :goto_0

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onReplay()V

    goto :goto_0

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onContinue()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 599
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->maybeStartHiding()V

    .line 601
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 514
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 515
    sub-int v22, p4, p2

    .line 517
    .local v22, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/core/player/TimeBar;->getBarHeight()I

    move-result v12

    .line 518
    .local v12, bw:I
    move v11, v12

    .line 519
    .local v11, bh:I
    sub-int v24, p5, v11

    .line 521
    .local v24, y:I
    const/16 v19, 0x0

    .line 522
    .local v19, leftButtonsWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    move-object v5, v0

    add-int v6, p2, v12

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, v24

    move v3, v6

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 524
    add-int v19, v19, v12

    .line 526
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    move-object v5, v0

    add-int v6, p2, v19

    add-int v7, p2, v19

    add-int/2addr v7, v12

    move-object v0, v5

    move v1, v6

    move/from16 v2, v24

    move v3, v7

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 528
    add-int v19, v19, v12

    .line 531
    :cond_1
    const/16 v21, 0x0

    .line 532
    .local v21, rightButtonsWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    move-object v5, v0

    sub-int v6, v22, v12

    move-object v0, v5

    move v1, v6

    move/from16 v2, v24

    move/from16 v3, v22

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 534
    add-int v21, v21, v12

    .line 537
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/TimeBar;->setPadding(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/TimeBar;->getPreferredHeight()I

    move-result v6

    sub-int v6, p5, v6

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/TimeBar;->layout(IIII)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    .line 543
    div-int/lit8 v5, v22, 0x2

    add-int v17, p2, v5

    .line 545
    .local v17, cx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playbackButtonsHDelta:I

    move v5, v0

    sub-int v20, p5, v5

    .line 546
    .local v20, playbackButtonsCenterline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v11

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseButton:Landroid/widget/ImageView;

    move-object v5, v0

    div-int/lit8 v6, v12, 0x2

    sub-int v6, v17, v6

    div-int/lit8 v7, v11, 0x2

    sub-int v7, v20, v7

    div-int/lit8 v8, v12, 0x2

    add-int v8, v8, v17

    div-int/lit8 v9, v11, 0x2

    add-int v9, v9, v20

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 553
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const v6, 0x3e2aaaab

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v18, v0

    .line 554
    .local v18, errorMessagePadding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->error:Z

    move v5, v0

    if-eqz v5, :cond_6

    div-int/lit8 v5, v18, 0x2

    add-int v5, v5, p2

    div-int/lit8 v6, v12, 0x2

    sub-int/2addr v5, v6

    move/from16 v23, v5

    .line 557
    .local v23, x:I
    :goto_0
    div-int/lit8 v5, v11, 0x2

    sub-int v24, v20, v5

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    move-object v5, v0

    add-int v6, v23, v12

    add-int v7, v24, v11

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    .line 562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->error:Z

    move v5, v0

    if-eqz v5, :cond_7

    div-int/lit8 v5, v18, 0x2

    sub-int v5, p4, v5

    div-int/lit8 v6, v12, 0x2

    sub-int/2addr v5, v6

    move/from16 v23, v5

    .line 563
    :goto_1
    div-int/lit8 v5, v11, 0x2

    sub-int v24, v20, v5

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    move-object v5, v0

    add-int v6, v23, v12

    add-int v7, v24, v11

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    move-object v6, v0

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    move-object v6, v0

    if-ne v5, v6, :cond_8

    .line 567
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 568
    .local v16, cw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 569
    .local v13, ch:I
    sub-int v5, p4, p2

    sub-int v5, v5, v16

    div-int/lit8 v14, v5, 0x2

    .line 570
    .local v14, cl:I
    sub-int v5, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playbackButtonsHDelta:I

    move v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v6, v13, 0x2

    sub-int v15, v5, v6

    .line 571
    .local v15, ct:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    add-int v6, v14, v16

    add-int v7, v15, v13

    invoke-virtual {v5, v14, v15, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 575
    .end local v13           #ch:I
    .end local v14           #cl:I
    .end local v15           #ct:I
    .end local v16           #cw:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    move-object v6, v0

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 579
    :cond_5
    return-void

    .line 556
    .end local v23           #x:I
    :cond_6
    const/16 v5, 0x40

    sub-int v5, v17, v5

    sub-int/2addr v5, v12

    move/from16 v23, v5

    goto/16 :goto_0

    .line 562
    .restart local v23       #x:I
    :cond_7
    add-int/lit8 v5, v17, 0x40

    move/from16 v23, v5

    goto/16 :goto_1

    .line 572
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->statusView:Landroid/view/View;

    move-object v6, v0

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 591
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChildren(II)V

    .line 593
    return-void
.end method

.method public onScrubbindEnd(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->seekTo(I)V

    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 673
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 667
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 668
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    .line 452
    :goto_0
    return v6

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 405
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 406
    .local v5, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    :goto_1
    iput v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v5

    :goto_2
    iput v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    .line 409
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v6, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    move v6, v10

    .line 411
    goto :goto_0

    .line 406
    :cond_1
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    goto :goto_1

    .line 407
    :cond_2
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    goto :goto_2

    .line 413
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_4
    :goto_3
    move v6, v10

    .line 452
    goto :goto_0

    .line 415
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 417
    .local v0, now:J
    iget-wide v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v6, :cond_7

    .line 418
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    .line 419
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    if-eqz v6, :cond_5

    .line 420
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v7, "Fullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DoubleTap"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "On"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onToggleFullscreen()V

    .line 427
    :cond_5
    :goto_5
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ended:Z

    if-nez v6, :cond_4

    .line 428
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 429
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    goto :goto_3

    .line 420
    :cond_6
    const-string v9, "Off"

    goto :goto_4

    .line 425
    :cond_7
    iput-wide v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    goto :goto_5

    .line 431
    :cond_8
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_3

    .line 436
    .end local v0           #now:J
    :pswitch_1
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    sub-int v2, v6, v4

    .line 437
    .local v2, vectorX:I
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    sub-int v3, v6, v5

    .line 438
    .local v3, vectorY:I
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v6, :cond_9

    .line 439
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x4b

    if-le v6, v7, :cond_b

    .line 440
    if-lez v2, :cond_a

    .line 441
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onNext()V

    .line 449
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->maybeStartHiding()V

    goto/16 :goto_3

    .line 443
    :cond_a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onPrevious()V

    goto :goto_6

    .line 445
    :cond_b
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->error:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->canRetry:Z

    if-eqz v6, :cond_9

    .line 446
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v6}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onRetry()V

    goto :goto_6

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetTime()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->resetTime()V

    .line 355
    return-void
.end method

.method public setCC(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 323
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 327
    return-void
.end method

.method public setHQ(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 319
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    .line 196
    return-void
.end method

.method public setMinimal(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 351
    return-void
.end method

.method public setShowCC(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasCC:Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 332
    return-void
.end method

.method public setShowFullscreen(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    .line 336
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 337
    return-void
.end method

.method public setShowNext(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasNext:Z

    .line 341
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 342
    return-void
.end method

.method public setShowPrevious(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasPrevious:Z

    .line 346
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 347
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .locals 4
    .parameter "style"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    iget-boolean v0, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->ad:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setProgressColor(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowBuffered(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ad:Z

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    .line 294
    return-void

    :cond_0
    move v1, v2

    .line 292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 293
    goto :goto_1
.end method

.method public setSupportsQualityToggle(Z)V
    .locals 0
    .parameter "supportsQualityToggle"

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->supportsQualityToggle:Z

    .line 310
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 311
    return-void
.end method

.method public showContinue()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->continueView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showStatusView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public showControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setVisibility(I)V

    .line 227
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateButtons()V

    .line 228
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onShown()V

    .line 233
    :cond_0
    return-void
.end method

.method public showErrorMessage(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showErrorMessage(IZ)V

    .line 643
    return-void
.end method

.method public showErrorMessage(IZ)V
    .locals 1
    .parameter "messageId"
    .parameter "canRetry"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    .line 639
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;Z)V
    .locals 6
    .parameter "message"
    .parameter "canRetry"

    .prologue
    const/16 v3, 0xa

    .line 629
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 630
    .local v0, padding:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 631
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->canRetry:Z

    .line 634
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showStatusView(Landroid/view/View;)V

    .line 635
    return-void

    .line 631
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public showReplay()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->replayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showStatusView(Landroid/view/View;)V

    .line 245
    return-void
.end method
