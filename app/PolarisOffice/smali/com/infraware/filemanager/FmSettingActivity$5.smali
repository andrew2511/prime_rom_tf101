.class Lcom/infraware/filemanager/FmSettingActivity$5;
.super Ljava/lang/Object;
.source "FmSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmSettingActivity;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmSettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$5;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/infraware/filemanager/FmSettingActivity$5;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v0}, Lcom/infraware/filemanager/FmSettingActivity;->access$1(Lcom/infraware/filemanager/FmSettingActivity;)Lcom/infraware/filemanager/FmUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmUpdateManager;->startUpdate()V

    .line 348
    return-void
.end method
