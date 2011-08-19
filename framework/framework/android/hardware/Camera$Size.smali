.class public Landroid/hardware/Camera$Size;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Landroid/hardware/Camera;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .registers 4
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1049
    iput-object p1, p0, Landroid/hardware/Camera$Size;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput p2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 1051
    iput p3, p0, Landroid/hardware/Camera$Size;->height:I

    .line 1052
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1062
    instance-of v2, p1, Landroid/hardware/Camera$Size;

    if-nez v2, :cond_7

    move v2, v4

    .line 1066
    :goto_6
    return v2

    .line 1065
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object v1, v0

    .line 1066
    .local v1, s:Landroid/hardware/Camera$Size;
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_19

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_6

    :cond_19
    move v2, v4

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1070
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
