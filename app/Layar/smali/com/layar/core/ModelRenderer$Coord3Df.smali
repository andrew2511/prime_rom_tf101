.class Lcom/layar/core/ModelRenderer$Coord3Df;
.super Ljava/lang/Object;
.source "ModelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/ModelRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Coord3Df"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/core/ModelRenderer;

.field x:F

.field y:F

.field z:F


# direct methods
.method public constructor <init>(Lcom/layar/core/ModelRenderer;Lcom/layar/core/Layar3DModel$Coord3D;)V
    .locals 2
    .parameter
    .parameter "coord"

    .prologue
    const/high16 v1, 0x4780

    .line 195
    iput-object p1, p0, Lcom/layar/core/ModelRenderer$Coord3Df;->this$0:Lcom/layar/core/ModelRenderer;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iget v0, p2, Lcom/layar/core/Layar3DModel$Coord3D;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/ModelRenderer$Coord3Df;->x:F

    .line 193
    iget v0, p2, Lcom/layar/core/Layar3DModel$Coord3D;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/ModelRenderer$Coord3Df;->y:F

    .line 194
    iget v0, p2, Lcom/layar/core/Layar3DModel$Coord3D;->z:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/ModelRenderer$Coord3Df;->z:F

    return-void
.end method
