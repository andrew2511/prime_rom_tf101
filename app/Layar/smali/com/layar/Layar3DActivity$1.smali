.class Lcom/layar/Layar3DActivity$1;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Layar3DActivity;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$1;->this$0:Lcom/layar/Layar3DActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/layar/Layar3DActivity$1;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v2}, Lcom/layar/Layar3DActivity;->access$3(Lcom/layar/Layar3DActivity;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/layar/Layar3DActivity$1;->this$0:Lcom/layar/Layar3DActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "prefs.screenshot.nocamera"

    const/4 v3, 0x0

    .line 212
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    .local v0, ignoreCamera:Z
    iget-object v2, p0, Lcom/layar/Layar3DActivity$1;->this$0:Lcom/layar/Layar3DActivity;

    new-instance v3, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v4, p0, Lcom/layar/Layar3DActivity$1;->this$0:Lcom/layar/Layar3DActivity;

    invoke-direct {v3, v4, v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;-><init>(Lcom/layar/Layar3DActivity;Z)V

    invoke-static {v2, v3}, Lcom/layar/Layar3DActivity;->access$4(Lcom/layar/Layar3DActivity;Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V

    .line 215
    return-void
.end method
