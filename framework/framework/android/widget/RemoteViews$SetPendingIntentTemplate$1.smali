.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 19
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v10, p2, Landroid/view/ViewGroup;

    if-eqz v10, :cond_15

    .line 311
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    .line 315
    .local v9, vg:Landroid/view/ViewGroup;
    instance-of v10, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v10, :cond_13

    .line 316
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #vg:Landroid/view/ViewGroup;
    check-cast v9, Landroid/view/ViewGroup;

    .line 318
    .restart local v9       #vg:Landroid/view/ViewGroup;
    :cond_13
    if-nez v9, :cond_16

    .line 346
    .end local v9           #vg:Landroid/view/ViewGroup;
    :cond_15
    :goto_15
    return-void

    .line 320
    .restart local v9       #vg:Landroid/view/ViewGroup;
    :cond_16
    const/4 v3, 0x0

    .line 321
    .local v3, fillInIntent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 322
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1c
    if-ge v4, v2, :cond_31

    .line 323
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x10201fc

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 324
    .local v8, tag:Ljava/lang/Object;
    instance-of v10, v8, Landroid/content/Intent;

    if-eqz v10, :cond_99

    .line 325
    move-object v0, v8

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 329
    .end local v8           #tag:Ljava/lang/Object;
    :cond_31
    if-eqz v3, :cond_15

    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget v1, v10, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 333
    .local v1, appScale:F
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 334
    .local v6, pos:[I
    invoke-virtual {p2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 336
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v7, rect:Landroid/graphics/Rect;
    const/4 v10, 0x0

    aget v10, v6, v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 338
    const/4 v10, 0x1

    aget v10, v6, v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 339
    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 340
    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 342
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 344
    iget-object v10, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v12, v12, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11, v12, v3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto/16 :goto_15

    .line 322
    .end local v1           #appScale:F
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #pos:[I
    .end local v7           #rect:Landroid/graphics/Rect;
    .restart local v8       #tag:Ljava/lang/Object;
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c
.end method
