.class Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPanoramaConfigArgs"
.end annotation


# instance fields
.field public final mConfig:Lcom/google/android/street/PanoramaConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;->mConfig:Lcom/google/android/street/PanoramaConfig;

    .line 105
    return-void
.end method
