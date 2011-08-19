.class public Lcom/google/android/music/menu/ManageMusicMenu;
.super Landroid/widget/RelativeLayout;
.source "ManageMusicMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageMusicMenu"


# instance fields
.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAvailableOfflineText:Landroid/widget/TextView;

.field private mDoneButton:Landroid/view/View;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mOverfullDialogDisplayed:Z

.field private mOverfullText:Landroid/widget/TextView;

.field private mSpaceAvailableProgress:Landroid/widget/ProgressBar;

.field private mSpaceAvailableText:Landroid/widget/TextView;

.field private mSpaceAvailableWait:Landroid/widget/ProgressBar;

.field private mStoragePin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "a"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/menu/ManageMusicMenu;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu;->superSetVisibility(I)V

    return-void
.end method

.method private superSetVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public onAvailableSpaceChanged(JJZ)V
    .locals 9
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 140
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 141
    const-string v1, "ManageMusicMenu"

    const-string v2, "OfflineMusicManager shouldn\'t call us in that state."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sub-long v1, p1, p3

    long-to-float v1, v1

    long-to-float v2, p1

    div-float v0, v1, v2

    .line 145
    .local v0, percentComplete:F
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gez v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    neg-long v7, p3

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->displayOverfullWarning()V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    goto/16 :goto_0
.end method

.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 57
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    .line 58
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 61
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    .line 62
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAvailableOfflineText:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mStoragePin:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    .line 68
    return-void
.end method

.method public setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 1
    .parameter "offlineMusicManager"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 75
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 78
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "newVisibility"

    .prologue
    const/16 v4, 0x8

    .line 86
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getVisibility()I

    move-result v1

    .line 87
    .local v1, currentVisibility:I
    if-ne p1, v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 95
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/music/menu/ManageMusicMenu$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu$1;-><init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 106
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_1
    if-ne p1, v4, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 109
    .restart local v0       #anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/music/menu/ManageMusicMenu$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu$2;-><init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 121
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
