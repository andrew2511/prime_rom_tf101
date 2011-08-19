.class public Lcom/nuance/xt9/input/XT9Keyboard;
.super Lcom/nuance/xt9/input/KeyboardEx;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final SHIFT_LOCKED:I = 0x2

.field public static final SHIFT_OFF:I = 0x0

.field public static final SHIFT_ON:I = 0x1

.field public static final XT9KEY_STATE_DISABLED:I = -0x1

.field public static final XT9KEY_STATE_MT_TIMEOUT:I = 0x2

.field public static final XT9KEY_STATE_OFF:I = 0x0

.field public static final XT9KEY_STATE_ON:I = 0x1


# instance fields
.field private mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mShiftBackground:Landroid/graphics/drawable/Drawable;

.field private mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mShiftLockBackground:Landroid/graphics/drawable/Drawable;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mShiftedIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mUnShiftBackground:Landroid/graphics/drawable/Drawable;

.field private mUnShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field private mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyState:I

.field private mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

.field private mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"

    .prologue
    const v5, 0x7f020048

    const v4, 0x7f02003a

    const v2, 0x7f020030

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;II)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 59
    iput v3, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftBackground:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockBackground:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 1
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 122
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 7
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 131
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 132
    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x13

    if-ne v1, v2, :cond_2

    .line 136
    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x14

    if-ne v1, v2, :cond_3

    iget v1, p2, Lcom/nuance/xt9/input/KeyboardEx$Row;->mode:I

    const v2, 0x7f09003d

    if-eq v1, v2, :cond_3

    .line 139
    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x16

    if-ne v1, v2, :cond_4

    .line 142
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    const/16 v2, 0x2c

    aput v2, v1, v6

    goto :goto_0

    .line 144
    :cond_4
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x17

    if-ne v1, v2, :cond_5

    .line 145
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    const/16 v2, 0x3b

    aput v2, v1, v6

    goto :goto_0

    .line 148
    :cond_5
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0xd

    if-ne v1, v2, :cond_6

    .line 149
    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0

    .line 153
    :cond_6
    iget-object v1, v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v1, v1, v6

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 154
    iput-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0
.end method

.method public enableShiftLock()V
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard;->getShiftKeyIndex()I

    move-result v0

    .line 335
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 337
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    instance-of v1, v1, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;

    if-eqz v1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->enableShiftLock()V

    .line 341
    :cond_0
    return-void
.end method

.method public enabledXT9Key(Z)V
    .locals 1
    .parameter "predictionOn"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 252
    if-nez p1, :cond_1

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0
.end method

.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    return v0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_1
    invoke-super {p0}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method public setImeOptions(Landroid/content/res/Resources;IIZ)V
    .locals 4
    .parameter "res"
    .parameter "mode"
    .parameter "options"
    .parameter "prediction"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 194
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput v3, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 195
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 196
    const v0, 0x400000ff

    and-int/2addr v0, p3

    packed-switch v0, :pswitch_data_0

    .line 226
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const-string v1, ":-)"

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const-string v1, ":-) "

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f05002e

    iput v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    :cond_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f080031

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f080032

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f080033

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f020087

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f080034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v1, 0x7f020038

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mEnterKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setModeChangeKey(Ljava/lang/String;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 180
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 181
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mModeChangeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object p1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 186
    :cond_0
    return-void
.end method

.method public setPreModeKey(Ljava/lang/String;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 168
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mPreInputModeKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object p1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 173
    :cond_0
    return-void
.end method

.method public setShiftState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 362
    iput p1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 364
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 368
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 371
    :pswitch_0
    iput v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 372
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-boolean v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    .line 373
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 374
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mUnShiftBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 377
    :pswitch_1
    iput v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 378
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    .line 379
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 383
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    .line 384
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->on:Z

    .line 385
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 386
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftLockBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setXT9KeyState(I)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 2
    .parameter "state"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 301
    iput p1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 303
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    packed-switch v0, :pswitch_data_0

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 326
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    return-object v0

    .line 306
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 307
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 312
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 313
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 318
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyState:I

    .line 319
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 320
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9Key:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toggleShiftState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 344
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 345
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftState:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mShiftKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->isShiftLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    goto :goto_0

    .line 352
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    goto :goto_0
.end method

.method public updateLanguageCyclingKey(Z)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 6
    .parameter "enabled"

    .prologue
    const/16 v5, -0x14

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 296
    :goto_0
    return-object v1

    .line 266
    :cond_0
    if-nez p1, :cond_3

    .line 267
    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->getSubstitutionKey(I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 268
    .local v0, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 270
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    :goto_1
    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 271
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 272
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    iput v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 273
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput v2, v1, v4

    .line 274
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 296
    .end local v0           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :goto_2
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    goto :goto_0

    .line 270
    .restart local v0       #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_1
    iget-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput v4, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 280
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const-string v2, ","

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 281
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const-string v2, ","

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 282
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/16 v2, 0x2c

    aput v2, v1, v4

    .line 283
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 288
    .end local v0           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_3
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    const v2, 0x7f05000b

    iput v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->popupResId:I

    .line 289
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 290
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v3, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 291
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aput v5, v1, v4

    goto :goto_2
.end method
