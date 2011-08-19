.class Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;
.super Ljava/lang/Object;
.source "OtherSettingsIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/GLListView$Model;
.implements Lcom/android/camera/ui/GLListView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/OtherSettingsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSettingsModel"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/camera/ui/GLView;

.field private final mItem:Lcom/android/camera/ui/GLView;

.field final synthetic this$0:Lcom/android/camera/ui/OtherSettingsIndicator;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/OtherSettingsIndicator;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/android/camera/ui/GLOptionHeader;

    const v1, 0x7f0b006f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/camera/ui/GLOptionHeader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->mHeader:Lcom/android/camera/ui/GLView;

    .line 163
    new-instance v0, Lcom/android/camera/ui/RestoreSettingsItem;

    const v1, 0x7f0b0070

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/camera/ui/RestoreSettingsItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->mItem:Lcom/android/camera/ui/GLView;

    .line 165
    return-void
.end method


# virtual methods
.method public getView(I)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 168
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->mHeader:Lcom/android/camera/ui/GLView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->mItem:Lcom/android/camera/ui/GLView;

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Lcom/android/camera/ui/GLView;I)V
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v0}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$200(Lcom/android/camera/ui/OtherSettingsIndicator;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v0}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$200(Lcom/android/camera/ui/OtherSettingsIndicator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    return v0
.end method
