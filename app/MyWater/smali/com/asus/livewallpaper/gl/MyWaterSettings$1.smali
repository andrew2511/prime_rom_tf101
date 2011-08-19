.class Lcom/asus/livewallpaper/gl/MyWaterSettings$1;
.super Ljava/lang/Object;
.source "MyWaterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/gl/MyWaterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/livewallpaper/gl/MyWaterSettings;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/MyWaterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/MyWaterSettings$1;->this$0:Lcom/asus/livewallpaper/gl/MyWaterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/MyWaterSettings$1;->this$0:Lcom/asus/livewallpaper/gl/MyWaterSettings;

    sget v1, Lcom/asus/livewallpaper/gl/MyWaterSettings;->DIALOG_ABOUT:I

    invoke-virtual {v0, v1}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->showDialog(I)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
