.class public final Lcom/ecareme/pixwe/media/PathBarLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "PathBarLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    }
.end annotation


# static fields
.field private static final CAP:I

.field private static final FILL:I

.field private static final JOIN:I

.field private static final sPathFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;


# instance fields
.field private final mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/PathBarLayer$Component;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/PathBarLayer;->sPathFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 32
    const v0, 0x7f020065

    sput v0, Lcom/ecareme/pixwe/media/PathBarLayer;->FILL:I

    .line 33
    const v0, 0x7f020067

    sput v0, Lcom/ecareme/pixwe/media/PathBarLayer;->JOIN:I

    .line 34
    const v0, 0x7f020066

    sput v0, Lcom/ecareme/pixwe/media/PathBarLayer;->CAP:I

    .line 38
    sget-object v0, Lcom/ecareme/pixwe/media/PathBarLayer;->sPathFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/high16 v1, 0x4190

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 42
    return-void
.end method

.method static synthetic access$0()Lcom/ecareme/pixwe/media/StringTexture$Config;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ecareme/pixwe/media/PathBarLayer;->sPathFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    return-object v0
.end method

.method private hitTestItems(FF)Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 250
    iget v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mY:F

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mY:F

    iget v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mHeight:F

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 252
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 253
    .local v3, numComponents:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 251
    monitor-exit v4

    .line 262
    .end local v2           #i:I
    .end local v3           #numComponents:I
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 254
    .restart local v2       #i:I
    .restart local v3       #numComponents:I
    :cond_1
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 255
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    iget v1, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->x:F

    .line 256
    .local v1, componentx:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_2

    iget v5, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->width:F

    add-float/2addr v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 257
    monitor-exit v4

    move-object v4, v0

    goto :goto_1

    .line 253
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v0           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v1           #componentx:F
    .end local v2           #i:I
    .end local v3           #numComponents:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private layout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 161
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v6

    .line 162
    :try_start_0
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 163
    .local v3, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 161
    monitor-exit v6

    .line 177
    return-void

    .line 164
    :cond_0
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 165
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    if-nez v0, :cond_1

    .line 163
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget v7, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->icon:I

    if-nez v7, :cond_3

    move v2, v9

    .line 168
    .local v2, iconWidth:F
    :goto_2
    cmpl-float v7, v2, v9

    if-nez v7, :cond_2

    .line 169
    const/high16 v7, 0x4100

    sget v8, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v2, v7, v8

    .line 171
    :cond_2
    const/high16 v7, 0x40a0

    sget v8, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v4, v7, v8

    .line 172
    .local v4, offset:F
    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-eq v1, v7, :cond_4

    add-float v7, v2, v4

    move v5, v7

    .line 174
    .local v5, thisComponentWidth:F
    :goto_3
    iput v5, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->width:F

    goto :goto_1

    .line 161
    .end local v0           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v1           #i:I
    .end local v2           #iconWidth:F
    .end local v3           #numComponents:I
    .end local v4           #offset:F
    .end local v5           #thisComponentWidth:F
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 167
    .restart local v0       #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .restart local v1       #i:I
    .restart local v3       #numComponents:I
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->getIconWidth()F

    move-result v7

    move v2, v7

    goto :goto_2

    .line 172
    .restart local v2       #iconWidth:F
    .restart local v4       #offset:F
    :cond_4
    iget-object v7, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->texture:Lcom/ecareme/pixwe/media/StringTexture;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidth()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 173
    add-float/2addr v7, v2

    add-float/2addr v7, v4

    move v5, v7

    goto :goto_3
.end method


# virtual methods
.method public changeLabel(Ljava/lang/String;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    move-result-object v0

    .line 72
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    if-eqz v0, :cond_0

    .line 73
    iget v1, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->icon:I

    iget-object v2, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, p1, v2}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 306
    monitor-exit v0

    .line 309
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 155
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public getCurrentLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 79
    .local v0, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/PathBarLayer$Component;>;"
    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 81
    .local v1, lastIndex:I
    if-gez v1, :cond_0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    .line 85
    :goto_0
    return-object v3

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 85
    .local v2, retVal:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    iget-object v3, v2, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    monitor-exit v0

    goto :goto_0

    .line 79
    .end local v1           #lastIndex:I
    .end local v2           #retVal:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getNumLevels()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 268
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 269
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 271
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->hitTestItems(FF)Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    iget-object v2, v2, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 280
    :cond_0
    :pswitch_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mTouchItem:Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 91
    .local v0, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/PathBarLayer$Component;>;"
    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 93
    .local v1, lastIndex:I
    if-gez v1, :cond_0

    .line 94
    monitor-exit v0

    const/4 v3, 0x0

    .line 98
    :goto_0
    return-object v3

    .line 96
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 97
    .local v2, retVal:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    monitor-exit v0

    move-object v3, v2

    goto :goto_0

    .line 91
    .end local v1           #lastIndex:I
    .end local v2           #retVal:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "icon"
    .parameter "label"
    .parameter "action"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    new-instance v2, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;-><init>(ILjava/lang/String;Ljava/lang/Runnable;F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/PathBarLayer;->recomputeComponents()V

    .line 49
    return-void

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recomputeComponents()V
    .locals 8

    .prologue
    const/high16 v7, 0x41a0

    .line 287
    iget v3, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mWidth:F

    .line 288
    .local v3, width:F
    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    .line 289
    iget-object v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 290
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 291
    .local v2, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 289
    monitor-exit v4

    .line 297
    return-void

    .line 292
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 293
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->getIconWidth()F

    move-result v5

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 294
    invoke-virtual {v0, v3}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->computeLabel(F)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v1           #i:I
    .end local v2           #numComponents:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 26
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 196
    sget v4, Lcom/ecareme/pixwe/media/PathBarLayer;->FILL:I

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v12

    .line 197
    .local v12, fill:Lcom/ecareme/pixwe/media/Texture;
    sget v4, Lcom/ecareme/pixwe/media/PathBarLayer;->JOIN:I

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v18

    .line 198
    .local v18, join:Lcom/ecareme/pixwe/media/Texture;
    sget v4, Lcom/ecareme/pixwe/media/PathBarLayer;->CAP:I

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v10

    .line 199
    .local v10, cap:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer;->mY:F

    move v4, v0

    const/high16 v5, 0x4040

    add-float v6, v4, v5

    .line 200
    .local v6, y:F
    const/high16 v4, 0x4040

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    move v0, v4

    float-to-int v0, v0

    move/from16 v23, v0

    .line 201
    .local v23, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer;->mHeight:F

    move v9, v0

    .line 202
    .local v9, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 203
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 204
    .local v19, numComponents:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 202
    monitor-exit v25

    .line 247
    return-void

    .line 205
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 206
    .local v11, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    move/from16 v0, v23

    int-to-float v0, v0

    move v4, v0

    iput v4, v11, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->x:F

    .line 209
    iget v4, v11, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animWidth:F

    move v0, v4

    float-to-int v0, v0

    move/from16 v22, v0

    .line 210
    .local v22, width:I
    if-eqz v13, :cond_5

    .line 211
    invoke-virtual/range {v18 .. v18}, Lcom/ecareme/pixwe/media/ResourceTexture;->getWidth()I

    move-result v4

    sub-int v4, v23, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move v2, v4

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 212
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    move/from16 v0, v23

    int-to-float v0, v0

    move v5, v0

    const/4 v7, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 219
    :cond_1
    :goto_1
    const/4 v4, 0x1

    sub-int v4, v19, v4

    if-ne v13, v4, :cond_2

    .line 221
    add-int v4, v23, v22

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v4

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 223
    :cond_2
    const/high16 v4, 0x40a0

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v24, v4, v5

    .line 225
    .local v24, xOffset:F
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    move-object/from16 v17, v0

    .line 228
    .local v17, icons:[I
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    if-lez v4, :cond_6

    iget v4, v11, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->timeElapsed:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    rem-int/2addr v4, v5

    aget v4, v17, v4

    move v15, v4

    .line 230
    .local v15, iconId:I
    :goto_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v14

    .line 231
    .local v14, icon:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v14, :cond_3

    .line 232
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 233
    move/from16 v0, v23

    int-to-float v0, v0

    move v4, v0

    add-float v4, v4, v24

    const/high16 v5, 0x4000

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v7

    sub-float v5, v6, v5

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 235
    :cond_3
    const/4 v4, 0x1

    sub-int v4, v19, v4

    if-ne v13, v4, :cond_4

    .line 236
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->texture:Lcom/ecareme/pixwe/media/StringTexture;

    move-object/from16 v21, v0

    .line 237
    .local v21, texture:Lcom/ecareme/pixwe/media/StringTexture;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 238
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->getIconWidth()F

    move-result v16

    .line 239
    .local v16, iconWidth:F
    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidth()F

    move-result v4

    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    sub-float v5, v5, v16

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    .line 240
    const/4 v4, 0x0

    cmpl-float v4, v16, v4

    if-nez v4, :cond_7

    const/high16 v4, 0x4100

    sget v5, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v5

    move/from16 v20, v4

    .line 241
    .local v20, textOffset:F
    :goto_3
    move/from16 v0, v23

    int-to-float v0, v0

    move v4, v0

    add-float v4, v4, v20

    const/high16 v5, 0x40a0

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 244
    .end local v16           #iconWidth:F
    .end local v20           #textOffset:F
    .end local v21           #texture:Lcom/ecareme/pixwe/media/StringTexture;
    :cond_4
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    const/high16 v5, 0x41a8

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f00

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int v23, v23, v4

    .line 204
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 215
    .end local v14           #icon:Lcom/ecareme/pixwe/media/Texture;
    .end local v15           #iconId:I
    .end local v17           #icons:[I
    .end local v24           #xOffset:F
    :cond_5
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    const/4 v5, 0x0

    const/4 v7, 0x0

    add-int v4, v23, v22

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    goto/16 :goto_1

    .line 202
    .end local v11           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v13           #i:I
    .end local v19           #numComponents:I
    .end local v22           #width:I
    :catchall_0
    move-exception v4

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 229
    .restart local v11       #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .restart local v13       #i:I
    .restart local v17       #icons:[I
    .restart local v19       #numComponents:I
    .restart local v22       #width:I
    .restart local v24       #xOffset:F
    :cond_6
    :try_start_1
    iget v4, v11, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->icon:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v15, v4

    goto/16 :goto_2

    .restart local v14       #icon:Lcom/ecareme/pixwe/media/Texture;
    .restart local v15       #iconId:I
    .restart local v16       #iconWidth:F
    .restart local v21       #texture:Lcom/ecareme/pixwe/media/StringTexture;
    :cond_7
    move/from16 v20, v16

    .line 240
    goto :goto_3
.end method

.method public setAnimatedIcons([I)V
    .locals 5
    .parameter "icons"

    .prologue
    .line 52
    iget-object v3, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v3

    .line 53
    :try_start_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 54
    .local v2, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 52
    monitor-exit v3

    .line 66
    return-void

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 56
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    if-eqz v0, :cond_2

    .line 57
    iget-object v4, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    if-eqz v4, :cond_1

    .line 58
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    .line 60
    :cond_1
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne v1, v4, :cond_2

    .line 61
    iput-object p1, v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->animatedIcons:[I

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v1           #i:I
    .end local v2           #numComponents:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 6
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/PathBarLayer;->layout()V

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, retVal:Z
    iget-object v4, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 185
    .local v2, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 183
    monitor-exit v4

    .line 190
    return v3

    .line 186
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 187
    .local v0, component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    invoke-virtual {v0, p2}, Lcom/ecareme/pixwe/media/PathBarLayer$Component;->update(F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0           #component:Lcom/ecareme/pixwe/media/PathBarLayer$Component;
    .end local v1           #i:I
    .end local v2           #numComponents:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
