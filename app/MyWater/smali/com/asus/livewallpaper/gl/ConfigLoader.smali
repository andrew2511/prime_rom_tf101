.class public Lcom/asus/livewallpaper/gl/ConfigLoader;
.super Ljava/lang/Object;
.source "ConfigLoader.java"


# static fields
.field private static sConfigLoader:Lcom/asus/livewallpaper/gl/ConfigLoader;


# instance fields
.field bitmap_sample_size:I

.field public enable_rotation:Z

.field public fix_sec_per_frame:I

.field public test_default_battery:I

.field public test_force_charge:Z

.field public test_show_framerate:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->bitmap_sample_size:I

    .line 53
    const/16 v0, 0x32

    iput v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->fix_sec_per_frame:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_default_battery:I

    .line 56
    iput-boolean v1, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_force_charge:Z

    .line 57
    iput-boolean v1, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_show_framerate:Z

    .line 59
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->enable_rotation:Z

    return-void
.end method

.method public static getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->sConfigLoader:Lcom/asus/livewallpaper/gl/ConfigLoader;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/asus/livewallpaper/gl/ConfigLoader;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/ConfigLoader;-><init>()V

    sput-object v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->sConfigLoader:Lcom/asus/livewallpaper/gl/ConfigLoader;

    .line 45
    :cond_0
    sget-object v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->sConfigLoader:Lcom/asus/livewallpaper/gl/ConfigLoader;

    return-object v0
.end method


# virtual methods
.method public loadConfig(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string v0, "ConfigLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "ConfigLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->bitmap_sample_size:I

    .line 72
    const-string v0, "debug.little.fix_secframe"

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->fix_sec_per_frame:I

    .line 75
    const-string v0, "debug.little.battery_life"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_default_battery:I

    .line 76
    const-string v0, "debug.little.force_charge"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_force_charge:Z

    .line 77
    const-string v0, "debug.little.framerate"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_show_framerate:Z

    .line 78
    return-void
.end method

.method public loadSettings(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 82
    invoke-static {p1}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->isEnableRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/ConfigLoader;->enable_rotation:Z

    .line 83
    return-void
.end method
