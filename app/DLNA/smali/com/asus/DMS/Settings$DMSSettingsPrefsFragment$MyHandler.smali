.class final Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;


# direct methods
.method public constructor <init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$100(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V

    .line 374
    return-void
.end method
