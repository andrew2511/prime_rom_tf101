.class public Lcom/google/android/voicesearch/actioneditor/RecordingPopup;
.super Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.source "RecordingPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mImage:Landroid/widget/ImageView;

.field private mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

.field private mSpinner:Lcom/google/android/voicesearch/ui/ProgressSpinner;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    const v1, 0x7f03000f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/ui/ProgressSpinner;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mSpinner:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    .line 65
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    .line 66
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->setOutsideTouchable(Z)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    return-object v0
.end method


# virtual methods
.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 86
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ge v2, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->disableArrow()V

    .line 89
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 93
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    :cond_0
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;->onCancel(Lcom/google/android/voicesearch/actioneditor/RecordingPopup;)V

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setLevel(F)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setRmsdB(F)V

    .line 142
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/RecordingPopup$Listener;

    .line 111
    return-void
.end method

.method public showError(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mSpinner:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->stop()V

    .line 138
    return-void
.end method

.method public showRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mText:Landroid/widget/TextView;

    const v1, 0x7f090726

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    const v1, 0x7f09074e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mSpinner:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->start()V

    .line 120
    return-void
.end method

.method public showWorking()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mText:Landroid/widget/TextView;

    const v1, 0x7f090703

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    const v1, 0x7f09074e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mSpinner:Lcom/google/android/voicesearch/ui/ProgressSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecordingPopup;->mIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->stop()V

    .line 129
    return-void
.end method
