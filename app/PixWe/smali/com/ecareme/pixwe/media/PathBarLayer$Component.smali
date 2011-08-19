.class final Lcom/ecareme/pixwe/media/PathBarLayer$Component;
.super Ljava/lang/Object;
.source "PathBarLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/PathBarLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# static fields
.field private static final ICON_WIDTH:F = 38.0f


# instance fields
.field public action:Ljava/lang/Runnable;

.field public animWidth:F

.field public animatedIcons:[I

.field public icon:I

.field public origString:Ljava/lang/String;

.field public texture:Lcom/ecareme/pixwe/media/StringTexture;

.field public timeElapsed:F

.field public width:F

.field public x:F


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;F)V
    .locals 0
    .parameter "icon"
    .parameter "label"
    .parameter "action"
    .parameter "widthLeft"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p3, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    .line 116
    iput-object p2, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    .line 117
    iput p1, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->icon:I

    .line 118
    invoke-virtual {p0, p4}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->computeLabel(F)V

    .line 119
    return-void
.end method


# virtual methods
.method public final computeLabel(F)V
    .locals 6
    .parameter "widthLeft"

    .prologue
    .line 122
    invoke-static {}, Lcom/ecareme/pixwe/media/PathBarLayer;->access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-result-object v2

    iget-boolean v2, v2, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v1, v2

    .line 123
    .local v1, typeface:Landroid/graphics/Typeface;
    :goto_0
    const-string v0, ""

    .line 124
    .local v0, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/ecareme/pixwe/media/PathBarLayer;->access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-result-object v4

    iget v4, v4, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    invoke-static {v4, p1, v1, v5}, Lcom/ecareme/pixwe/media/StringTexture;->lengthToFit(FFLandroid/graphics/Typeface;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    new-instance v2, Lcom/ecareme/pixwe/media/StringTexture;

    invoke-static {}, Lcom/ecareme/pixwe/media/PathBarLayer;->access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->texture:Lcom/ecareme/pixwe/media/StringTexture;

    .line 131
    return-void

    .line 122
    .end local v0           #label:Ljava/lang/String;
    .end local v1           #typeface:Landroid/graphics/Typeface;
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v1, v2

    goto :goto_0
.end method

.method public getIconWidth()F
    .locals 2

    .prologue
    .line 149
    const/high16 v0, 0x4218

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final update(F)Z
    .locals 3
    .parameter "timeElapsed"

    .prologue
    const/4 v2, 0x1

    .line 134
    iget v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->timeElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->timeElapsed:F

    .line 135
    iget v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->width:F

    iput v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    .line 138
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    iget v1, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->width:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    .line 139
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    array-length v0, v0

    if-le v0, v2, :cond_1

    move v0, v2

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_1
    iget v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    iget v1, p0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 144
    goto :goto_0
.end method
