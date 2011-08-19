.class public Lcom/android/systemui/statusbar/policy/CompatModeButton;
.super Landroid/widget/ImageView;
.source "CompatModeButton.java"


# instance fields
.field private mAM:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setClickable(Z)V

    .line 45
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CompatModeButton;->mAM:Landroid/app/ActivityManager;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    .line 48
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CompatModeButton;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 52
    .local v0, mode:I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 55
    .local v1, vis:Z
    :goto_0
    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    .line 56
    return-void

    .end local v1           #vis:Z
    :cond_0
    move v1, v3

    .line 52
    goto :goto_0

    .line 55
    .restart local v1       #vis:Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method
