.class Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;
.super Ljava/lang/Object;
.source "GLWaterDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/GLWaterDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceEnvironment"
.end annotation


# instance fields
.field mBatteryLife:I

.field mHeight:I

.field mScreenRotation:I

.field mSensorOrientation:I

.field mStatusbarHeight:I

.field mWidth:I

.field final synthetic this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterDraw;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    .line 154
    const/16 v0, 0x140

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    .line 157
    const/16 v0, 0x19

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mStatusbarHeight:I

    .line 160
    const/16 v0, 0x64

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    .line 163
    iput v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    .line 166
    iput v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    return-void
.end method


# virtual methods
.method calculateWaterFront()V
    .locals 13

    .prologue
    const/16 v12, 0x32

    .line 256
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    shr-int/lit8 v6, v9, 0x1

    .line 257
    .local v6, half_height:I
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    shr-int/lit8 v7, v9, 0x1

    .line 258
    .local v7, half_width:I
    const/16 v5, 0x1e

    .line 260
    .local v5, bound:I
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mStatusbarHeight:I

    sub-int v9, v6, v9

    sub-int v0, v9, v5

    .line 261
    .local v0, a:I
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mStatusbarHeight:I

    sub-int v9, v7, v9

    sub-int v2, v9, v5

    .line 263
    .local v2, b:I
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    sub-int/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 264
    .local v4, battery:I
    mul-int v9, v0, v4

    div-int/lit8 v1, v9, 0x32

    .line 265
    .local v1, a_scale:I
    mul-int v9, v2, v4

    div-int/lit8 v3, v9, 0x32

    .line 267
    .local v3, b_scale:I
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v9}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$100(Lcom/asus/livewallpaper/gl/GLWaterDraw;)I

    move-result v9

    if-nez v9, :cond_1

    .line 268
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    int-to-float v10, v7

    invoke-static {v9, v10}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$602(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 269
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v11}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$800(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$702(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 270
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    if-lt v10, v12, :cond_0

    move v10, v1

    :goto_0
    add-int/2addr v10, v6

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$902(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 279
    :goto_1
    return-void

    .line 270
    :cond_0
    neg-int v10, v1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v8, 0x0

    .line 275
    .local v8, theta:F
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v9}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$200(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F

    move-result v9

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    if-lt v10, v12, :cond_2

    const/4 v10, 0x0

    :goto_2
    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v9}, Lcom/asus/livewallpaper/gl/MyFloatMath;->toRadians(F)F

    move-result v8

    .line 276
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    int-to-float v10, v7

    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$602(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 277
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    int-to-float v10, v6

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$702(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    goto :goto_1

    .line 275
    :cond_2
    const/16 v10, 0xb4

    goto :goto_2
.end method

.method final eraseScreenOrientation(F)F
    .locals 1
    .parameter "deg"

    .prologue
    .line 247
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    return v0
.end method

.method final onBatteryChanged(I)V
    .locals 2
    .parameter "life"

    .prologue
    .line 170
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget v0, v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_default_battery:I

    if-ltz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget v0, v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_default_battery:I

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0x60

    invoke-static {p1, v0, v1}, Lcom/asus/livewallpaper/gl/MyFloatMath;->bound(III)I

    move-result v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mBatteryLife:I

    goto :goto_0
.end method

.method final onScreenRotationChanged(I)V
    .locals 2
    .parameter "r"

    .prologue
    .line 180
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    .line 183
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$000(Lcom/asus/livewallpaper/gl/GLWaterDraw;I)V

    .line 184
    return-void
.end method

.method final onSensorOrientationChanged(I)V
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 193
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v2

    iget-boolean v2, v2, Lcom/asus/livewallpaper/gl/ConfigLoader;->enable_rotation:Z

    if-nez v2, :cond_3

    .line 195
    :cond_0
    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    .line 210
    :goto_0
    int-to-float v2, p1

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$200(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/MyFloatMath;->getCircleDegreeDiffer(FF)F

    move-result v0

    .line 211
    .local v0, differ:F
    const v2, 0x3d0f5c29

    const v3, 0x3ca3d70a

    const v4, 0x3a83126f

    invoke-static {v0, v2, v3, v4}, Lcom/asus/livewallpaper/gl/MyFloatMath;->getAppropriateIncValue(FFFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 212
    .local v1, tempinc:F
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$300(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v2, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$302(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 214
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$300(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F

    move-result v3

    invoke-static {v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$500(F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$402(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$100(Lcom/asus/livewallpaper/gl/GLWaterDraw;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    cmpl-float v2, v0, v5

    if-lez v2, :cond_6

    .line 220
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$000(Lcom/asus/livewallpaper/gl/GLWaterDraw;I)V

    .line 224
    .end local v0           #differ:F
    .end local v1           #tempinc:F
    :cond_2
    :goto_1
    return-void

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$100(Lcom/asus/livewallpaper/gl/GLWaterDraw;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    invoke-static {v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$100(Lcom/asus/livewallpaper/gl/GLWaterDraw;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_4
    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/MyFloatMath;->getCircleDegreeDiffer(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4000

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    .line 206
    :cond_5
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    goto :goto_0

    .line 221
    .restart local v0       #differ:F
    .restart local v1       #tempinc:F
    :cond_6
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$000(Lcom/asus/livewallpaper/gl/GLWaterDraw;I)V

    goto :goto_1
.end method

.method final onSurfaceChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "o"
    .parameter "bar_h"

    .prologue
    .line 228
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    .line 229
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    .line 230
    iput p3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    .line 231
    iput p4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mStatusbarHeight:I

    .line 232
    return-void
.end method

.method final onSurfaceCreated(I)V
    .locals 2
    .parameter "o"

    .prologue
    .line 236
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    .line 237
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    .line 238
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->this$0:Lcom/asus/livewallpaper/gl/GLWaterDraw;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->access$202(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F

    .line 239
    return-void
.end method
