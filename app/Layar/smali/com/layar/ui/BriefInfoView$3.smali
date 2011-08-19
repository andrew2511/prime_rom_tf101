.class Lcom/layar/ui/BriefInfoView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BriefInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/BriefInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/BriefInfoView;


# direct methods
.method constructor <init>(Lcom/layar/ui/BriefInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    .line 165
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    neg-float v3, p3

    .line 171
    .local v3, velocity:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v3, p4

    .line 172
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43fa

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v7

    .line 194
    :goto_0
    return v4

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v4}, Lcom/layar/ui/BriefInfoView;->access$6(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/layer/Layer20;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v4}, Lcom/layar/ui/BriefInfoView;->access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/layar/core/POIsContainer;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v4}, Lcom/layar/ui/BriefInfoView;->access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/layar/core/POIsContainer;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v2

    .line 177
    .local v2, pois:[Lcom/layar/data/BasePOI;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_3

    .end local v0           #i:I
    .end local v2           #pois:[Lcom/layar/data/BasePOI;
    :cond_2
    move v4, v7

    .line 194
    goto :goto_0

    .line 178
    .restart local v0       #i:I
    .restart local v2       #pois:[Lcom/layar/data/BasePOI;
    :cond_3
    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v5}, Lcom/layar/ui/BriefInfoView;->access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;

    move-result-object v5

    if-ne v4, v5, :cond_7

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, poi:Lcom/layar/data/POI;
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 181
    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    if-ge v4, v5, :cond_4

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v2, v4

    .end local v1           #poi:Lcom/layar/data/POI;
    check-cast v1, Lcom/layar/data/POI;

    .line 187
    .restart local v1       #poi:Lcom/layar/data/POI;
    :goto_2
    iget-object v4, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v4, v1}, Lcom/layar/ui/BriefInfoView;->setPOI(Lcom/layar/data/POI;)V

    .line 188
    iget-object v4, p0, Lcom/layar/ui/BriefInfoView$3;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v4}, Lcom/layar/ui/BriefInfoView;->access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/layar/core/POIsContainer;->setFocus(Lcom/layar/data/BasePOI;)V

    move v4, v6

    .line 189
    goto :goto_0

    .line 182
    :cond_4
    aget-object v1, v2, v7

    .end local v1           #poi:Lcom/layar/data/POI;
    check-cast v1, Lcom/layar/data/POI;

    .restart local v1       #poi:Lcom/layar/data/POI;
    goto :goto_2

    .line 184
    :cond_5
    sub-int v4, v0, v6

    if-ltz v4, :cond_6

    sub-int v4, v0, v6

    aget-object v1, v2, v4

    .end local v1           #poi:Lcom/layar/data/POI;
    check-cast v1, Lcom/layar/data/POI;

    .restart local v1       #poi:Lcom/layar/data/POI;
    goto :goto_2

    .line 185
    :cond_6
    array-length v4, v2

    sub-int/2addr v4, v6

    aget-object v1, v2, v4

    .end local v1           #poi:Lcom/layar/data/POI;
    check-cast v1, Lcom/layar/data/POI;

    .restart local v1       #poi:Lcom/layar/data/POI;
    goto :goto_2

    .line 177
    .end local v1           #poi:Lcom/layar/data/POI;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
