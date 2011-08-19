.class public Lcom/android/camera/ui/InLineSettingPicker;
.super Landroid/widget/RelativeLayout;
.source "InLineSettingPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/InLineSettingPicker$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEntry:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mListener:Lcom/android/camera/ui/InLineSettingPicker$Listener;

.field private mNext:Z

.field private mNextButton:Landroid/widget/Button;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/ListPreference;

.field private mPrevButton:Landroid/widget/Button;

.field private mPrevious:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "InLineSettingPicker"

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/camera/ui/InLineSettingPicker$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingPicker$1;-><init>(Lcom/android/camera/ui/InLineSettingPicker;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/InLineSettingPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNext:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/InLineSettingPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNext:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/InLineSettingPicker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/ui/InLineSettingPicker;->changeIndex(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/InLineSettingPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/InLineSettingPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevious:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/InLineSettingPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevious:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/InLineSettingPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mOverrideValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/InLineSettingPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 139
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mListener:Lcom/android/camera/ui/InLineSettingPicker$Listener;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mListener:Lcom/android/camera/ui/InLineSettingPicker$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/InLineSettingPicker$Listener;->onSettingChanged()V

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingPicker;->updateView()V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mOverrideValue:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNextButton:Landroid/widget/Button;

    iget v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    if-nez v2, :cond_0

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevButton:Landroid/widget/Button;

    iget v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    :goto_2
    return-void

    :cond_0
    move v2, v6

    .line 151
    goto :goto_0

    :cond_1
    move v2, v6

    .line 152
    goto :goto_1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_3
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 160
    :cond_3
    const-string v1, "InLineSettingPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to find override value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingPicker;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_3
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingPicker;->reloadPreference()V

    .line 129
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    new-instance v0, Lcom/android/camera/ui/InLineSettingPicker$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingPicker$2;-><init>(Lcom/android/camera/ui/InLineSettingPicker;)V

    .line 100
    .local v0, nextTouchListener:Landroid/view/View$OnTouchListener;
    new-instance v1, Lcom/android/camera/ui/InLineSettingPicker$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/InLineSettingPicker$3;-><init>(Lcom/android/camera/ui/InLineSettingPicker;)V

    .line 118
    .local v1, previousTouchListener:Landroid/view/View$OnTouchListener;
    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNextButton:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevButton:Landroid/widget/Button;

    .line 121
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mEntry:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingPicker;->mTitle:Landroid/widget/TextView;

    .line 124
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mOverrideValue:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingPicker;->updateView()V

    .line 175
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/InLineSettingPicker;->mIndex:I

    .line 134
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingPicker;->updateView()V

    .line 135
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/InLineSettingPicker$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingPicker;->mListener:Lcom/android/camera/ui/InLineSettingPicker$Listener;

    .line 170
    return-void
.end method
