.class public final Lcom/layar/data/layer/LayerDB20$Favorites;
.super Ljava/lang/Object;
.source "LayerDB20.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerDB20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER:Ljava/lang/String; = "seq"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
