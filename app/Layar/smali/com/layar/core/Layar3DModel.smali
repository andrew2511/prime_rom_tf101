.class public Lcom/layar/core/Layar3DModel;
.super Ljava/lang/Object;
.source "Layar3DModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/Layar3DModel$Color;,
        Lcom/layar/core/Layar3DModel$Coord2D;,
        Lcom/layar/core/Layar3DModel$Coord3D;,
        Lcom/layar/core/Layar3DModel$Face;,
        Lcom/layar/core/Layar3DModel$Material;,
        Lcom/layar/core/Layar3DModel$UseMaterial;
    }
.end annotation


# instance fields
.field boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

.field boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

.field faces:[Lcom/layar/core/Layar3DModel$Face;

.field materials:[Lcom/layar/core/Layar3DModel$Material;

.field normals:[Lcom/layar/core/Layar3DModel$Coord3D;

.field textureCoords:[Lcom/layar/core/Layar3DModel$Coord2D;

.field useMaterial:[Lcom/layar/core/Layar3DModel$UseMaterial;

.field vertices:[Lcom/layar/core/Layar3DModel$Coord3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    iput-object v0, p0, Lcom/layar/core/Layar3DModel;->boundingBoxMin:Lcom/layar/core/Layar3DModel$Coord3D;

    .line 18
    new-instance v0, Lcom/layar/core/Layar3DModel$Coord3D;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Coord3D;-><init>()V

    iput-object v0, p0, Lcom/layar/core/Layar3DModel;->boundingBoxMax:Lcom/layar/core/Layar3DModel$Coord3D;

    .line 13
    return-void
.end method
