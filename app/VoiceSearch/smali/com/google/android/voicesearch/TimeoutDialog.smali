.class public Lcom/google/android/voicesearch/TimeoutDialog;
.super Landroid/app/Dialog;
.source "TimeoutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeoutDialog"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionText:Landroid/widget/TextView;

.field private mAddress:Ljava/lang/String;

.field private mAddressLayout:Landroid/widget/LinearLayout;

.field private mAddressText:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

.field private mDescription:Ljava/lang/String;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mDialogView:Landroid/view/View;

.field private mGoButton:Landroid/widget/Button;

.field private mGoButtonTextRes:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconId:I

.field private mMainView:Landroid/widget/LinearLayout;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberText:Landroid/widget/TextView;

.field private mStartTime:J

.field private mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

.field private mTimeoutMillis:I

.field private mTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/voicesearch/TimeoutDialog;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/TimeoutDialog;)Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V

    return-void
.end method

.method private updateCountdownLevel()V
    .locals 4

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 189
    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 190
    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 192
    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/CountdownDrawable;->setLevel(I)Z

    .line 196
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;->onTimeout()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDialogView:Landroid/view/View;

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$3;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0d0050

    .line 110
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->setContentView(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mMainView:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDialogView:Landroid/view/View;

    .line 114
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressLayout:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressText:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIcon:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCancelButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$1;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/TimeoutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$2;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/CountdownDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    .line 142
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mCountdownBackground:Lcom/google/android/voicesearch/CountdownDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 233
    const v0, 0x7f090766

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/TimeoutDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/TimeoutDialog$4;-><init>(Lcom/google/android/voicesearch/TimeoutDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButton:Landroid/widget/Button;

    iget v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButtonTextRes:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "TimeoutDialog"

    const-string v1, "error: no action text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddressLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mActionText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 156
    goto :goto_1

    :cond_2
    move v1, v3

    .line 158
    goto :goto_2

    :cond_3
    move v1, v3

    .line 160
    goto :goto_3

    :cond_4
    move v1, v3

    .line 162
    goto :goto_4
.end method

.method public setBusinessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public startCountDown(ILcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mStartTime:J

    .line 179
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    .line 180
    invoke-direct {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateCountdownLevel()V

    .line 181
    return-void
.end method

.method public stopCountDown()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I

    .line 213
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAction:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mTitle:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mDescription:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mIconId:I

    .line 103
    iput p5, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mGoButtonTextRes:I

    .line 104
    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mAddress:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mPhoneNumber:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/voicesearch/TimeoutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 221
    iget-object v1, p0, Lcom/google/android/voicesearch/TimeoutDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_0
    return-void
.end method
