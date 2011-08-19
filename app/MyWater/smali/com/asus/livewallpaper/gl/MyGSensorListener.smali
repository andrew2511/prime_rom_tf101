.class public Lcom/asus/livewallpaper/gl/MyGSensorListener;
.super Landroid/view/OrientationEventListener;
.source "MyGSensorListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;
    }
.end annotation


# static fields
.field static DEBUG_ORIENTATION:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mGSensorNoiseFilter:Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "MyGSensorListenner"

    sput-object v0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->TAG:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->DEBUG_ORIENTATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;-><init>(I)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->mGSensorNoiseFilter:Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 129
    new-instance v0, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;-><init>(I)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->mGSensorNoiseFilter:Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    .line 148
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 179
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 172
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->mGSensorNoiseFilter:Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->reset()V

    .line 173
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 161
    move v0, p1

    .line 163
    .local v0, ori:I
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/MyGSensorListener;->mGSensorNoiseFilter:Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;

    invoke-virtual {v1, v0}, Lcom/asus/livewallpaper/gl/MyGSensorListener$GSensorJitterFilter;->watch(I)I

    move-result v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/asus/livewallpaper/gl/MyGSensorListener;->onOrientationChangedWithFilter(I)V

    .line 166
    return-void
.end method

.method public onOrientationChangedWithFilter(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 156
    return-void
.end method
