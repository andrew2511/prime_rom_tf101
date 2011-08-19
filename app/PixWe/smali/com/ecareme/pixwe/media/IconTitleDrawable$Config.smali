.class public final Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;
.super Ljava/lang/Object;
.source "IconTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/IconTitleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final mIconLeft:I

.field private final mIconSize:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTitleLeft:I


# direct methods
.method public constructor <init>(IILandroid/text/TextPaint;)V
    .locals 1
    .parameter "iconSpan"
    .parameter "iconSize"
    .parameter "paint"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sub-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mIconLeft:I

    .line 119
    iput p1, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mTitleLeft:I

    .line 120
    iput p2, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mIconSize:I

    .line 121
    iput-object p3, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mTitleLeft:I

    return v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mIconSize:I

    return v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)I
    .locals 1
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;->mIconLeft:I

    return v0
.end method
