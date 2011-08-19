.class public Lcom/android/systemui/statusbar/policy/AutoRotateController;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAutoRotation:Z

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAutoRotation()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .parameter "autorotate"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eq p2, v0, :cond_0

    .line 50
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V

    .line 52
    :cond_0
    return-void
.end method
