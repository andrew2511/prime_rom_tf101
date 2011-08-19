.class public Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EDITOR_OBJECT_POINTARRAY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;,
        Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public nObjPointCnt:I

.field public ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

.field public ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

.field final synthetic this$0:Lcom/infraware/evengine/EV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 670
    const-class v0, Lcom/infraware/evengine/EV;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 3
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->this$0:Lcom/infraware/evengine/EV;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;-><init>(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    iput-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    .line 678
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    invoke-direct {v2, p0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;-><init>(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    aput-object v2, v0, v1

    .line 679
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    invoke-direct {v2, p0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;-><init>(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    aput-object v2, v0, v1

    .line 680
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->clear()V

    .line 726
    iput v1, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->nObjPointCnt:I

    .line 727
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->clear()V

    .line 728
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->clear()V

    .line 729
    return-void
.end method

.method setValue([I)Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;
    .locals 4
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    sget-boolean v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    aget v1, p1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 708
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    aget v1, p1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 709
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 710
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 711
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    const/4 v1, 0x4

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 712
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    const/4 v1, 0x5

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 713
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    const/4 v1, 0x6

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    .line 714
    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->nObjPointCnt:I

    .line 715
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0x8

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 716
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0x9

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 717
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    .line 718
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0xb

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 719
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0xc

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 720
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    const/16 v1, 0xd

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    .line 721
    return-object p0
.end method
