.class Lcom/ecareme/pixwe/wallpaper/Slideshow$1;
.super Ljava/lang/Object;
.source "Slideshow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/wallpaper/Slideshow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/wallpaper/Slideshow;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/wallpaper/Slideshow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow$1;->this$0:Lcom/ecareme/pixwe/wallpaper/Slideshow;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ecareme/pixwe/wallpaper/Slideshow$1;->this$0:Lcom/ecareme/pixwe/wallpaper/Slideshow;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->drawFrame()V

    .line 58
    return-void
.end method
