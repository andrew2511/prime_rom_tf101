.class public Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EDIT_OBJECT_RANGE"
.end annotation


# instance fields
.field public endPoint:Landroid/graphics/Point;

.field public nObjectType:I

.field public sObjectSize:Landroid/graphics/Point;

.field public startPoint:Landroid/graphics/Point;

.field final synthetic this$1:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .locals 1
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->this$1:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    .line 685
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    .line 686
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 7

    .prologue
    .line 690
    iget-object v0, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    const/4 v6, 0x0

    iput v6, p0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v3, Landroid/graphics/Point;->y:I

    iput v6, v2, Landroid/graphics/Point;->x:I

    iput v6, v1, Landroid/graphics/Point;->y:I

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 691
    return-void
.end method
