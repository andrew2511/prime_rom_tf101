.class Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$1;
.super Lcom/asus/livewallpaper/gl/MyGSensorListener;
.source "GLWaterPaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$1;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-direct {p0, p2, p3}, Lcom/asus/livewallpaper/gl/MyGSensorListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChangedWithFilter(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$1;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v0}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    invoke-virtual {v0, p1}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->onSensorOrientationChanged(I)V

    .line 101
    return-void
.end method
