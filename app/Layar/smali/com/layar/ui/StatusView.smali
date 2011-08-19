.class public Lcom/layar/ui/StatusView;
.super Landroid/widget/TextView;
.source "StatusView.java"

# interfaces
.implements Lcom/layar/util/StatusHelper$StatusListener;


# static fields
.field private static final INTERVAL:I = 0x1388

.field private static final STATUS_ACCURACY:I = 0x4

.field private static final STATUS_ERROR:I = 0x1

.field private static final STATUS_MAX:I = 0x5

.field private static final STATUS_PROGRESS:I = 0x0

.field private static final STATUS_RANGE:I = 0x3

.field private static final STATUS_STATUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "layar.StatusView"


# instance fields
.field private currentView:I

.field private mHandler:Landroid/os/Handler;

.field private mStatus:Lcom/layar/util/StatusHelper;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/StatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/ui/StatusView;->currentView:I

    .line 39
    new-instance v0, Lcom/layar/ui/StatusView$1;

    invoke-direct {v0, p0}, Lcom/layar/ui/StatusView$1;-><init>(Lcom/layar/ui/StatusView;)V

    iput-object v0, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    .line 53
    const/high16 v0, 0x4120

    invoke-virtual {p0, v0}, Lcom/layar/ui/StatusView;->setTextSize(F)V

    .line 54
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/StatusView;->setTextColor(I)V

    .line 55
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/layar/ui/StatusView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/layar/ui/StatusView;->setMaxLines(I)V

    .line 57
    const v0, 0x7f020113

    invoke-virtual {p0, v0}, Lcom/layar/ui/StatusView;->setBackgroundResource(I)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/StatusView;)Lcom/layar/util/StatusHelper;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/StatusView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/layar/ui/StatusView;->currentView:I

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ui/StatusView;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/layar/ui/StatusView;->currentView:I

    return v0
.end method

.method static synthetic access$3(Lcom/layar/ui/StatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/layar/ui/StatusView;->showStatus()V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/ui/StatusView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/ui/StatusView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showStatus()V
    .locals 10

    .prologue
    const v9, 0x7f0900f7

    const v8, 0x7f0900f6

    const v7, 0x7f0900f5

    .line 79
    iget v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    packed-switch v5, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getProgress()Ljava/lang/CharSequence;

    move-result-object v2

    .line 82
    .local v2, progress:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0, v2}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    iget v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    .line 87
    .end local v2           #progress:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    .local v1, error:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    iget v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    .line 93
    .end local v1           #error:Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getStatus()Ljava/lang/CharSequence;

    move-result-object v4

    .line 94
    .local v4, status:Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 95
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getStatus()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    iget v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/layar/ui/StatusView;->currentView:I

    .line 99
    .end local v4           #status:Ljava/lang/CharSequence;
    :pswitch_3
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getRange()I

    move-result v3

    .line 100
    .local v3, range:I
    if-lez v3, :cond_3

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    .end local v3           #range:I
    :pswitch_4
    iget-object v5, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v5}, Lcom/layar/util/StatusHelper;->getAccuracy()I

    move-result v0

    .line 108
    .local v0, accuracy:I
    const/4 v5, -0x1

    if-le v0, v5, :cond_4

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/layar/ui/StatusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/layar/ui/StatusView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public setStatusHelper(Lcom/layar/util/StatusHelper;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    .line 63
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mStatus:Lcom/layar/util/StatusHelper;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    const-string v1, "Should not call start before setStatusHelper()"

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/layar/ui/StatusView;->showStatus()V

    .line 71
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public statusChanged()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/ui/StatusView;->currentView:I

    .line 120
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/layar/ui/StatusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/ui/StatusView;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
